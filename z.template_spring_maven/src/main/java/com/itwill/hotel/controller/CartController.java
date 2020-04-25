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
			session.setAttribute("cartList", cartList);
			
			if (cartList.size() != 0) {
				List<HashMap> optionList = new ArrayList();
				for (Cart cart: cartList) {
					HashMap optionMap = new HashMap();
					optionMap.put("foodCategory", cart.getpName());
					optionMap.put("cCheckin", cart.getcCheckin());
					optionMap.put("cProductQty", cart.getcProductQty());
					List<Product> optionItemList = productService.selectByCategory(cart.getpName());
					List<HashMap> optionInnerList = new ArrayList();
					for (Product optionItem: optionItemList) {
						HashMap optionInnerMap = new HashMap();
						optionInnerMap.put("pDesc", optionItem.getpDesc());
						optionInnerMap.put("pName", optionItem.getpName());
						optionInnerMap.put("pPrice", optionItem.getpPrice());
						optionInnerList.add(optionInnerMap);
					}
					List<Product> insurance = productService.selectByCategory("Insurance");
					HashMap insuranceMap = new HashMap();
					insuranceMap.put("pDesc", insurance.get(0).getpDesc());
					insuranceMap.put("pName", insurance.get(0).getpName());
					insuranceMap.put("pPrice", insurance.get(0).getpPrice());
					optionInnerList.add(insuranceMap);
					optionMap.put("optionInnerList", optionInnerList);
					optionList.add(optionMap);
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
							 HttpSession session, Model model) throws ParseException {
		
		Member member = (Member) session.getAttribute("sUser");
		
		if (member != null) {
			int mNo = member.getmNo();
			int newVal_int = Integer.parseInt(newVal);
			int pNo_int = Integer.parseInt(pNo);
			int pPrice_int = Integer.parseInt(pPrice);
			Date date = new SimpleDateFormat("yyyy/MMMM/dd", Locale.US).parse(selectDate);
			String strDate = new SimpleDateFormat("yyyy/MM/dd").format(date);
			
			Cart newCart = new Cart(0, newVal_int, newVal_int*pPrice_int, selectTime, strDate, 
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
		} else {
			return "forward:member_login_form";
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
	
	@RequestMapping(value = "/session_check")
	@ResponseBody
	public Member cartDelete (HttpSession session) {
		Member member = (Member) session.getAttribute("sUser");
		return member;
	}
	
}
