package com.itwill.hotel.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.hotel.domain.Member;
import com.itwill.hotel.service.JumunService;

@Controller
public class JumunController {
	
	@Autowired
	JumunService jumunService;
	
	@RequestMapping(value = "/cart_checkout")
	public String cartPayment(HttpSession session) {
		Member member = (Member) session.getAttribute("sUser");
		if (member == null) {
			return "redirect:/member_login_form";
		} else {
			return "common_payment_fixed_sidebar";
		}
	}
	
	@RequestMapping(value = "/checkout_payment")
	public String checkoutPayment() {
		return "common_payment_fixed_sidebar";
	}
	
}
