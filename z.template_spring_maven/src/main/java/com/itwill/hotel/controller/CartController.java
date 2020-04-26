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
			List<Cart> cartList = cartService.selectBymNo(mNo);
			for (int i = 0; i < cartList.size(); i++) {
				if (cartList.get(i).getpNo() > 6) {
					cartList.remove(i);
				}
			}
			session.setAttribute("cartList", cartList);
			
			if (cartList.size() != 0) {
				List<List> optionList = new ArrayList();
				for (int i = 0; i < cartList.size(); i++) {
					List<HashMap> optionInnerList = new ArrayList();
					List<Product> optionItemList = productService.selectByCategory(cartList.get(i).getpName());
					for (Product optionItem: optionItemList) {
						HashMap optionMap = new HashMap();
						optionMap.put("cProductQty", cartList.get(i).getcProductQty());
						optionMap.put("pDesc", optionItem.getpDesc());
						optionMap.put("pName", optionItem.getpName());
						optionMap.put("pPrice", optionItem.getpPrice());
						optionMap.put("pNo", optionItem.getpNo());
						Integer pQty = productService.countCartOptionQty(optionItem.getpNo());
						if (pQty == null) {
							pQty = 0;
						}
						optionMap.put("pQty", pQty);
						
						Cart tempCart = new Cart();
						tempCart.setmNo(mNo);
						tempCart.setpNo(optionItem.getpNo());
						tempCart.setcCheckin(cartList.get(i).getcCheckin());
						
						Cart optionCart = cartService.checkCartProduct(tempCart);
						if (optionCart != null) {
							optionMap.put("cNo", optionCart.getcNo());
						}
						optionInnerList.add(optionMap);
					}
					List<Product> insurance = productService.selectByCategory("insur");
					HashMap insuranceMap = new HashMap();
					insuranceMap.put("cProductQty", cartList.get(i).getcProductQty());
					insuranceMap.put("pDesc", insurance.get(i).getpDesc());
					insuranceMap.put("pName", insurance.get(i).getpName());
					insuranceMap.put("pPrice", insurance.get(i).getpPrice());
					insuranceMap.put("pNo", insurance.get(i).getpNo());
					Integer pQty = productService.countCartOptionQty(insurance.get(i).getpNo());
					if (pQty == null) {
						pQty = 0;
					}
					insuranceMap.put("pQty", pQty);
					
					Cart tempCart = new Cart();
					tempCart.setmNo(mNo);
					tempCart.setpNo(insurance.get(0).getpNo());
					tempCart.setcCheckin(cartList.get(i).getcCheckin());
					
					Cart optionCart = cartService.checkCartProduct(tempCart);
					if (optionCart != null) {
						insuranceMap.put("cNo", optionCart.getcNo());
					}
					optionInnerList.add(insuranceMap);
					optionList.add(optionInnerList);
				}
				session.setAttribute("optionList", optionList);
				List dateList = new ArrayList();
				for (Cart cart: cartList) {
					if (cart.getpNo() <= 5) {
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
			cartService.deleteCart(Integer.parseInt(cNo));
			List<Cart> cartList = cartService.selectBymNo(mNo);
			for (int i = 0; i < cartList.size(); i++) {
				if (cartList.get(i).getpNo() > 6) {
					cartList.remove(i);
				}
			}
			session.setAttribute("cartList", cartList);
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
