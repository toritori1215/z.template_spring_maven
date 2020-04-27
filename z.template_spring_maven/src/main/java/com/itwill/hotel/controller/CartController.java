package com.itwill.hotel.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.hotel.domain.Cart;
import com.itwill.hotel.domain.Member;
import com.itwill.hotel.domain.Product;
import com.itwill.hotel.service.CartService;
import com.itwill.hotel.service.ProductService;

@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "/cart_services")
	public String cartServices(HttpSession session, Model model) {
		Member member = (Member) session.getAttribute("sUser");
		if (member != null) {
			int mNo = member.getmNo();
			// 멤버의 카트에서 투어만 리스트로 뽑아냄
			List<Cart> cartList = cartService.selectBymNo(mNo);
			
			List<Cart> tourList = cartList;
			for (int i = 0; i < tourList.size(); i++) {
				if ((tourList.get(i).getpNo() < 43) || (tourList.get(i).getpNo() > 48)) {
					tourList.remove(i);
				}
			}
			session.setAttribute("tourList", tourList);
			
			// 각 투어별 옵션을 리스트로 뽑아냄 (카트에 담긴 갯수 등 정보도 뽑아냄)
			if (tourList.size() != 0) {
				List<List> optionList = new ArrayList();
				for (int i = 0; i < tourList.size(); i++) {
					//옵션리스트에 element로 들어갈 inner리스트
					List<HashMap> optionInnerList = new ArrayList();
					
					//상품별 옵션product
					List<Product> optionItemList = productService.selectByCategory(tourList.get(i).getpName());
					for (Product optionItem: optionItemList) {
						HashMap optionMap = new HashMap();
						// 드랍다운에 숫자가 어디까지 나올지 결정한다.
						optionMap.put("cProductQty", tourList.get(i).getcProductQty());
						optionMap.put("pDesc", optionItem.getpDesc());
						optionMap.put("pName", optionItem.getpName());
						optionMap.put("pPrice", optionItem.getpPrice());
						optionMap.put("pNo", optionItem.getpNo());
						
						
						// 만약 옵션이 카트에 담겨있다면 '갯수'정보를 추가로 보여줘야한다.
						HashMap parameterMap = new HashMap();
						parameterMap.put("mNo", mNo);
						parameterMap.put("pNo", optionItem.getpNo());
						parameterMap.put("cCheckin", tourList.get(i).getcCheckin());
						Integer cOptionQty = cartService.countItemCart(parameterMap);
						if (cOptionQty == null) {
							cOptionQty = 0;
						}
						optionMap.put("cOptionQty", cOptionQty);
						optionInnerList.add(optionMap);
					}
					optionList.add(optionInnerList);
				}
				session.setAttribute("optionList", optionList);
				
				List dateList = new ArrayList();
				for (Cart cart: cartList) {
					if (cart.getpNo() > 42 || cart.getpNo() < 49) {
						dateList.add(cart.getcCheckin());
					}
				}
				Collections.sort(dateList);
				int length = dateList.size();
				if (length == 1) {
					session.setAttribute("date_min", ((String) dateList.get(0)).substring(5,10));
					session.setAttribute("date_max", ((String) dateList.get(0)).substring(5,10));
				} else {
					int index_max = length - 1;
					session.setAttribute("date_min", ((String) dateList.get(0)).substring(5,10));
					session.setAttribute("date_max", ((String) dateList.get(index_max)).substring(5,10));
				}
			} else {
				session.setAttribute("optionList", null);
				session.setAttribute("date_min", "");
				session.setAttribute("date_max", "");
			}
			
			int cartTotal = 0;
			for (Cart cart: cartList) {
				cartTotal += cart.getcProductTypePay();
			}
			session.setAttribute("cartTotal", cartTotal);
			return "cart_fixed_sidebar";
		} else {
			return "redirect:/member_login_form";
		}
	}
	
	@RequestMapping(value = "/cart_insert")
	public String cartInsert(@RequestParam(value="newVal") String newVal,
							 @RequestParam(value="pNo") String pNo,
							 @RequestParam(value="pPrice") String pPrice,
							 @RequestParam(value="selectDate") String selectDate,
							 @RequestParam(value="selectTime") String selectTime,
							 @RequestParam(value="opt") String opt,
							 HttpSession session, Model model) throws ParseException {
		
		Member member = (Member) session.getAttribute("sUser");
		
		if (member != null) {
			int mNo = member.getmNo();
			int newVal_int = Integer.parseInt(newVal);
			int pNo_int = Integer.parseInt(pNo);
			int pPrice_int =  (int) Double.parseDouble(pPrice);
			String strDate = "";
			Cart newCart = new Cart();
			if (opt.equals("0")) {
				Date date = new SimpleDateFormat("yyyy/MMMM/dd", Locale.US).parse(selectDate);
				strDate = new SimpleDateFormat("yyyy/MM/dd").format(date);
				newCart = new Cart(0, newVal_int, newVal_int*pPrice_int, selectTime, strDate, 
								   null, null, null, newVal_int, mNo, pNo_int, pPrice_int);
				Cart cartExist = cartService.checkCartProduct(newCart);
				if (cartExist != null) {
					int cNo = cartExist.getcNo();
					int cOldQty = cartExist.getcProductQty();
					int cNewQty = cOldQty + newVal_int;
					
					HashMap parameterMap = new HashMap();
					parameterMap.put("cNo", cNo);
					parameterMap.put("cProductQty", cNewQty);
					parameterMap.put("cProductTypePay", cNewQty*pPrice_int);
					parameterMap.put("cOrderCnt", cNewQty);
					cartService.updateCart(parameterMap);
				} else {
					cartService.insertCart(newCart);
				}
				List<Cart> cartList = cartService.selectBymNo(mNo);
				session.setAttribute("cartList", cartList);
				return "redirect:/cart_services";
			} else if (opt.equals("1")) {
				strDate = selectDate;
				newCart = new Cart(0, newVal_int, newVal_int*pPrice_int, selectTime, strDate, 
								   null, null, null, newVal_int, mNo, pNo_int, pPrice_int);
				Cart cartExist = cartService.checkCartProduct(newCart);
				if (cartExist == null) {
					cartService.insertCart(newCart);
				} else if ((cartExist != null) && (newVal_int != 0)) {
					int cNo = cartExist.getcNo();
					int cOldQty = cartExist.getcProductQty();
					int cNewQty = cOldQty + newVal_int;
					HashMap parameterMap = new HashMap();
					parameterMap.put("cNo", cNo);
					parameterMap.put("cProductQty", newVal_int);
					parameterMap.put("cProductTypePay", newVal_int*pPrice_int);
					parameterMap.put("cOrderCnt", newVal_int);
					cartService.updateCart(parameterMap);
				} else {
					int cNo = cartExist.getcNo();
					cartService.deleteCart(cNo);
				}
			}
			List<Cart> cartList = cartService.selectBymNo(mNo);
			session.setAttribute("cartList", cartList);
			return "redirect:/cart_services";
		} else {
			return "redirect:/member_login_form";
		}
	}
	
	@RequestMapping(value = "/cart_delete", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public List<Cart> cartDelete (@RequestParam(value="cNo") String cNo,
						   		  HttpSession session) {
		Member member = (Member) session.getAttribute("sUser");
		if (member != null) {
			int mNo = member.getmNo();
			
			//삭제될 카트의 아이템 이름
			String delete_pName = cartService.selectByCartNo(Integer.parseInt(cNo)).getpName();
			cartService.deleteCart(Integer.parseInt(cNo));
			//상품들 중 foodCategory가 delete_pName과 같으면 삭제
			List<Cart> cartList = cartService.selectBymNo(mNo);
			for (int i = 0; i < cartList.size(); i++) {
				int pNo = cartList.get(i).getpNo();
				int option_cNo = cartList.get(i).getcNo();
				if (productService.selectByNo(pNo).getFoodCategory() == delete_pName) {
					cartService.deleteCart(option_cNo);
				}
			}
			
			List<Cart> cartList_new = cartService.selectBymNo(mNo);
			List<Cart> tourList_new = cartList_new;
			
			for (int i = 0; i < tourList_new.size(); i++) {
				if ((tourList_new.get(i).getpNo() < 43) || (tourList_new.get(i).getpNo() > 48)) {
					tourList_new.remove(i);
				}
			}
			session.setAttribute("cartList", cartList_new);
			session.setAttribute("tourList", tourList_new);
			return cartList;
		} else {
			return null;
		}
	}
	
	@RequestMapping(value = "/cart_update")
	@ResponseBody
	public int cartUpdate (@RequestParam(value="cNo") String cNo, 
						   @RequestParam(value="cProductQty") String cProductQty) {
		int cNo_int = Integer.parseInt(cNo);
		int cProductQty_int = Integer.parseInt(cProductQty);
		int pPrice = cartService.selectByCartNo(cNo_int).getpPrice();
		HashMap parameterMap = new HashMap();
		parameterMap.put("cNo", cNo_int);
		parameterMap.put("cProductQty", cProductQty_int);
		parameterMap.put("cProductTypePay", cProductQty_int*pPrice);
		parameterMap.put("cOrderCnt", cProductQty_int);
		cartService.updateCart(parameterMap);
		return cProductQty_int*pPrice/10000;
	}
	
	
	@RequestMapping(value = "/cart_search_options")
	@ResponseBody
	public int cartSearchOptions (@RequestParam(value="foodCategory") String foodCategory,
								  @RequestParam(value="cCheckin") String cCheckin,
								  HttpSession session) {
		Member member = (Member) session.getAttribute("sUser");
		int mNo = member.getmNo();
		List<Product> optionProductList = productService.selectByCategory(foodCategory);
		int deletedAmount = 0;
		for (Product product: optionProductList) {
			HashMap paramMap = new HashMap();
			paramMap.put("mNo", mNo);
			paramMap.put("pNo", product.getpNo());
			paramMap.put("cCheckin", cCheckin);
			if (cartService.productTotalCart(paramMap) != null) {
				deletedAmount += cartService.productTotalCart(paramMap);
				cartService.deleteByMap(paramMap);
			}
		}
		return deletedAmount;
	}
	
	@RequestMapping(value = "/session_check")
	@ResponseBody
	public Member cartDelete (HttpSession session) {
		Member member = (Member) session.getAttribute("sUser");
		return member;
	}
	
}
