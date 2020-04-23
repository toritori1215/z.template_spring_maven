package com.itwill.hotel.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.hotel.service.JumunService;

@Controller
public class JumunController {
	
	@Autowired
	JumunService jumunService;
	
	@RequestMapping(value = "/cart_checkout")
	public String cartPayment() {
		return "common_payment_fixed_sidebar";
	}
	
	@RequestMapping(value = "/checkout_payment")
	public String checkoutPayment() {
		return "common_payment_fixed_sidebar";
	}
	
}
