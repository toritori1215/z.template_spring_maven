package com.itwill.hotel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.hotel.domain.Product;
import com.itwill.hotel.domain.Wishlist;
import com.itwill.hotel.service.WishlistService;

@Controller
public class WishlistController {
	
	@Autowired
	private WishlistService wishlistService;
	
	@RequestMapping(value = "/wishlist")
	public String wishlist() {
		return "wishlist";
	}
	 
	@RequestMapping(value = "/wishlist_list")
	public String wishlistList(
							   Model model) {
		List<Product> wishlistList = wishlistService.selectWishlist(Integer.parseInt("1"));
		model.addAttribute("wishlistList", wishlistList);
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
	public String wishlistDelete(
			 					 @RequestParam(value="pNo") String pNo,
			 					 Model model) {
		Integer mNo_int = Integer.parseInt("1");
		Integer pNo_int = Integer.parseInt(pNo);
		wishlistService.deleteWishlist(new Wishlist(mNo_int, pNo_int));
		List<Product> wishlistList = wishlistService.selectWishlist(mNo_int);
		//model.addAttribute("mNo", mNo);
		model.addAttribute("wishlistList", wishlistList);
		return "forward:wishlist_list";
	}
	
}
