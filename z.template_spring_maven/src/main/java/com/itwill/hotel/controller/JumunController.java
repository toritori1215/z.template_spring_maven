package com.itwill.hotel.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.hotel.domain.Cart;
import com.itwill.hotel.domain.Member;
import com.itwill.hotel.domain.Product;
import com.itwill.hotel.service.CartService;
import com.itwill.hotel.service.JumunService;

@Controller
public class JumunController {
	
	@Autowired
	private JumunService jumunService;
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping(value = "/jumun_checkout")
	public String cartPayment(HttpSession session) {
		Member member = (Member) session.getAttribute("sUser");
		if (member != null) {
			int mNo = member.getmNo();
			List<Cart> cartList = cartService.selectBymNo(mNo);
			session.setAttribute("cartList", cartList);
			
			if (cartList.size() != 0) {
				List dateList = new ArrayList();
				for (Cart cart: cartList) {
					dateList.add(cart.getcCheckin());
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
				return "redirect:/main";
			}
			
			int cartTotal = 0;
			for (Cart cart: cartList) {
				cartTotal += cart.getcProductTypePay();
			}
			session.setAttribute("cartTotal", cartTotal);
			return "common_payment_fixed_sidebar";
		} else {
			return "redirect:/member_login_form";
		}
	}
	
	@RequestMapping(value = "/jumun_action")
	public String jumunAction(@RequestParam(value="firstname_booking") String firstName,
							  @RequestParam(value="lastname_booking") String lastName,
							  @RequestParam(value="email_booking") String email,
							  @RequestParam(value="email_booking_2") String email2,
							  @RequestParam(value="telephone_booking") String telephone,
							  @RequestParam(value="name_card_booking") String nameCard,
							  @RequestParam(value="card_number") String cardNumber,
							  @RequestParam(value="expire_month") String expireMonth,
							  @RequestParam(value="expire_year") String expireYear,
							  @RequestParam(value="cvv") String cvv,
							  @RequestParam(value="country") String country,
							  @RequestParam(value="street_1") String street1,
							  @RequestParam(value="street_2") String street2,
							  @RequestParam(value="city_booking") String city,
							  @RequestParam(value="state_booking") String state,
							  @RequestParam(value="postal_code") String postalCode,
							  @RequestParam(value="policy_terms") String policyTerms) {
		
		System.out.println(country);
		
		return "common_confirmation_fixed_sidebar";
	}
	
}
