package com.itwill.hotel.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.annotation.RequestScope;

import com.itwill.hotel.domain.Member;
import com.itwill.hotel.domain.Product;
import com.itwill.hotel.domain.Wishlist;
import com.itwill.hotel.service.WishlistService;

@Controller
public class WishlistController {
	
	@Autowired
	private WishlistService wishlistService;
	
	@RequestMapping(value = "/wishlist_insert", method=RequestMethod.POST)
	public String wishlistInsert(@RequestParam(value="pNo") String pNo,
								 Model model, HttpSession session) {
		Member member = (Member) session.getAttribute("sUser");
		wishlistService.insertWishlist(new Wishlist(member.getmNo(), Integer.parseInt(pNo)));
		List<Product> wishlistList = wishlistService.selectWishlist(member.getmNo());
		model.addAttribute("pNo", pNo);
		session.setAttribute("wishlistList", wishlistList);
		return "insert";
	}
	
	@RequestMapping(value = "/wishlist_delete")
	@ResponseBody
	public String wishlistDelete(@RequestParam(value="pNo") String pNo, 
			 					 HttpSession session) {
		Member member = (Member) session.getAttribute("sUser");
		int deleteRowCount = 
			wishlistService.deleteWishlist(new Wishlist(member.getmNo(), Integer.parseInt(pNo)));
		if (deleteRowCount == 1) {
			List<Product> wishlistList = wishlistService.selectWishlist(member.getmNo());
			session.setAttribute("wishlist", wishlistList);
			return "true";
		} else {
			return "false";
		}
	}
	
}
