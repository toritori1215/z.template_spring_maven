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
	 
	@RequestMapping(value = "/wishlist_list")
	public String wishlistList(HttpSession session, Model model) {
		Member sUser = (Member) session.getAttribute("sUser");
		List<Product> wishlistList = wishlistService.selectWishlist(sUser.getmNo());
		model.addAttribute("wishlistList", wishlistList);
		model.addAttribute("inputMsg", "1");
		return "member_admin";
	}
	
	@RequestMapping(value = "/wishlist_insert", method=RequestMethod.POST)
	public String wishlistInsert(@RequestParam(value="mNo") String mNo,
								 @RequestParam(value="pNo") String pNo,
								 Model model) {
		Integer mNo_int = Integer.parseInt(mNo);
		Integer pNo_int = Integer.parseInt(pNo);
		wishlistService.insertWishlist(new Wishlist(mNo_int, pNo_int));
		List<Product> wishlistList = wishlistService.selectWishlist(mNo_int);
		model.addAttribute("mNo", mNo);
		model.addAttribute("pNo", pNo);
		model.addAttribute("wishlistList", wishlistList);
		return "insert";
	}
	
	@RequestMapping(value = "/wishlist_delete")
	@ResponseBody
	public String wishlistDelete(@RequestParam(value="mNo") String mNo,
			 					 @RequestParam(value="pNo") String pNo) {
		int deleteRowCount = 
			wishlistService.deleteWishlist(new Wishlist(Integer.parseInt(mNo), Integer.parseInt(pNo)));
		if (deleteRowCount == 1) {
			return "true";
		} else {
			return "false";
		}
	}
	
}
