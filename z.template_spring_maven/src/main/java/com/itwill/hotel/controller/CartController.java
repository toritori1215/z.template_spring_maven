package com.itwill.hotel.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.hotel.domain.Cart;
import com.itwill.hotel.domain.Member;
import com.itwill.hotel.service.CartService;

@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping(value = "/cart_services")
	public String cartServices(HttpSession session, Model model) {
		Member member = (Member) session.getAttribute("sUser");
		if (member != null) {
			int mNo = member.getmNo();
			HashMap parameterMap = new HashMap();
			parameterMap.put("mNo", mNo);
			cartService.deleteOutdatedCart(parameterMap);
			
			List<Cart> cartList = cartService.selectBymNo(mNo);
			model.addAttribute(cartList);
			
			List dateList = new ArrayList();
			for (Cart cart: cartList) {
				dateList.add(cart.getcCheckin());
			}
			Collections.sort(dateList);
			int length = dateList.size();
			
			
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
			
			Cart cart = new Cart(0, newVal_int, newVal_int*pPrice_int, selectTime, strDate, 
								 null, null, null, newVal_int, mNo, pNo_int, pPrice_int);
			Cart cartExist = cartService.checkCartProduct(cart);
			
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
				cartService.insertCart(cart);
			}
			
			List<Cart> cartList = cartService.selectBymNo(mNo);
			model.addAttribute("cartList", cartList);
			return "redirect:/cart_services";
		} else {
			return "forward:member_login_form";
		}
	}
	
	@RequestMapping(value = "/cart_delete")
	@ResponseBody
	public int cartDelete (@RequestParam(value="cNo") String cNo) {
		return cartService.deleteCart(Integer.parseInt(cNo));
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
		int count = cartService.updateCart(parameterMap);
		return cProductQty_int*pPrice;
	}
	
	@RequestMapping(value = "/session_check")
	@ResponseBody
	public Member cartDelete (HttpSession session) {
		Member member = (Member) session.getAttribute("sUser");
		return member;
	}
	
}
