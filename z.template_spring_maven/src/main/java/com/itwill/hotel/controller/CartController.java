package com.itwill.hotel.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
			List<Cart> cartList = cartService.selectByNo(mNo);
			model.addAttribute(cartList);
			return "cart_fixed_sidebar";
		} else {
			return "forward:member_login_form";
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
		int mNo = member.getmNo();
		int newVal_int = Integer.parseInt(newVal);
		int pNo_int = Integer.parseInt(pNo);
		int pPrice_int = Integer.parseInt(pPrice);
		Date date = new SimpleDateFormat("yyyy/MMMM/dd", Locale.US).parse(selectDate);
		String strDate = new SimpleDateFormat("yyyy/MM/dd").format(date);
		
		Cart cart = new Cart(0, newVal_int, newVal_int*pPrice_int, selectTime, strDate, 
							 null, null, null, newVal_int, mNo, pNo_int);
		int count = cartService.insertCart(cart);
		if (count == 1) {
			List<Cart> cartList = cartService.selectByNo(mNo);
			model.addAttribute("cartList", cartList);
			return "redirect:/cart_services";
			// 카트에 갯수 확인하기
		} else {
			return "redirect:/common_404";
		}
	}
	
	@RequestMapping(value = "/cart_delete")
	@ResponseBody
	public int cartDelete (@RequestParam(value="cNo") Integer cNo,
							  HttpSession session) {
		/*
		Member member = (Member) session.getAttribute("sUser");
		if (member == null) {
			return 0;
		} else {
			return cartService.deleteCart(cNo);
		}
		*/
		return cartService.deleteCart(cNo);
	}
	
	@RequestMapping(value = "/session_check")
	@ResponseBody
	public Member cartDelete (HttpSession session) {
		Member member = (Member) session.getAttribute("sUser");
		return member;
	}
	
}
