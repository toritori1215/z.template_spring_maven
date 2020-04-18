package com.itwill.hotel.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.hotel.domain.Cart;
import com.itwill.hotel.domain.Member;
import com.itwill.hotel.service.CartService;

@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping(value = "/cart_add_action")
	public String cartAddAction(@RequestParam(value="cart") Cart cart, HttpSession session, Model model) {
		Member member = (Member) session.getAttribute("sUser");
		int mNo = member.getmNo();
		cartService.insertCart(cart);
		List<Cart> cartList = cartService.selectByNo(mNo);
		model.addAttribute("cartList", cartList);
		return "cart_fixed_sidebar"; 
	}
	
}
