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
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.hotel.domain.Cart;
import com.itwill.hotel.domain.Jumun;
import com.itwill.hotel.domain.JumunDetail;
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
	public String jumunCheckout(HttpSession session) {
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
	
	@RequestMapping(value = "/jumun_confirmation")
	public String jumunAction(@RequestParam(value="firstname_booking") String firstName,
							  @RequestParam(value="lastname_booking") String lastName,
							  @RequestParam(value="email_booking") String email,
							  @RequestParam(value="telephone_booking") String phone,
							  @RequestParam(value="name_card_booking") String nameCard,
							  @RequestParam(value="card_number") String cardNumber,
							  @RequestParam(value="expiry_month") String expiryMonth,
							  @RequestParam(value="expiry_year") String expiryYear,
							  @RequestParam(value="cvv") String cvv,
							  @RequestParam(value="country") String country,
							  @RequestParam(value="street_1") String street1,
							  @RequestParam(value="street_2") String street2,
							  @RequestParam(value="city_booking") String city,
							  @RequestParam(value="state_booking") String state,
							  @RequestParam(value="postal_code") String postalCode,
							  @RequestParam(value="policy_terms") String policyTerms,
							  HttpSession session, Model model) throws ParseException {
		Member member = (Member) session.getAttribute("sUser");

		if (member != null) {
			int mNo = member.getmNo();
			Jumun jumun = new Jumun(0, (int)session.getAttribute("cartTotal"), null, nameCard, email, phone, cardNumber,
					  				expiryMonth+expiryYear, cvv, street1, street2, city, country, state, postalCode,
					  				firstName+" "+lastName, "1", Integer.toString(mNo));
			jumunService.insertJumun(jumun);
			int jNo = jumunService.selectRecentJumun(mNo);
			model.addAttribute("jNo", jNo);
			model.addAttribute("gName", firstName+" "+lastName);
			//model.addAttribute("cartList", cartList);
			model.addAttribute("refNo", Integer.toString(mNo)+"-0"+phone.substring(3,4)+phone.substring(1,3)+phone.substring(4,6)+Integer.toString(jNo));
			List<Cart> cartList = (List<Cart>) session.getAttribute("cartList");
			for (Cart cart: cartList) {
				JumunDetail jumunDetail = new JumunDetail(0, cart.getcCheckin(), null, null, null, null, 
						cart.getcProductQty(), cart.getcProductTypePay(), cart.getcOrderCnt(), 0, jNo, cart.getpNo());
				jumunService.insertJumunDetail(jumunDetail);
				cartService.deleteCart(cart.getcNo());
			}
			return "common_confirmation_fixed_sidebar";
		} else {
			return "redirect:/member_login_form";
		}
	}
	
	@RequestMapping(value = "/invoice")
	public String confirmation() {
		return "common_invoice";
	}
	
}
