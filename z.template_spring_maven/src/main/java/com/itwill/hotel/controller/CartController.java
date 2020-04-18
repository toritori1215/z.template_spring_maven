package com.itwill.hotel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.hotel.domain.Cart;
import com.itwill.hotel.service.CartService;

@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping(value = "/cart_add_action")
	public String cartAddAction(@RequestParam(value="cart") Cart cart, Model model) {
		cartService.insertCart(cart);
		return "cart_fixed_sidebar"; 
	}
	
}
