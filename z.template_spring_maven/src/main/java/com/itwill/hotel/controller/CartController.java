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
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.hotel.domain.Cart;
import com.itwill.hotel.domain.Member;
import com.itwill.hotel.service.CartService;

@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping(value = "/cart_insert")
	public String cartAddAction(@RequestParam(value="newVal") String newVal,
								@RequestParam(value="pNo") String pNo,
								@RequestParam(value="pPrice") String pPrice,
								@RequestParam(value="selectDate") String selectDate,
								HttpSession session, Model model) throws ParseException {
		
		Member member = (Member) session.getAttribute("sUser");
		int mNo = member.getmNo();
		int newVal_int = Integer.parseInt(newVal);
		int pNo_int = Integer.parseInt(pNo);
		int pPrice_int = Integer.parseInt(pPrice);
		Date date = new SimpleDateFormat("yyyy/MMMM/dd", Locale.US).parse(selectDate);
		String strDate = new SimpleDateFormat("yyyy/MM/dd").format(date);
		
		Cart cart = new Cart(mNo, newVal_int, newVal_int*pPrice_int, null, strDate, 
							 null, null, null, newVal_int, pNo_int);
		int count = cartService.insertCart(cart);
		List<Cart> cartList = cartService.selectByNo(mNo);
		model.addAttribute("cartList", cartList);
		return "cart_fixed_sidebar"; 
	}
	
}
