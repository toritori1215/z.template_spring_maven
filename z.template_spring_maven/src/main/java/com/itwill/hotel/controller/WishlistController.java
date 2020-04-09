package com.itwill.hotel.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.hotel.domain.Wishlist;
import com.itwill.hotel.service.WishlistService;

@Controller
public class WishlistController {
	
	@Autowired
	private WishlistService wishlistService;
	
	@RequestMapping(value = "/wishlist")
	public String wishlist() {
		return "wishlist/wishlist";
	}
	
	@RequestMapping(value = "/wishlist_list_condition")
	public String wishlistListCondition() {
		return "wishlist/list_condition";
	}
	 
	@RequestMapping(value = "/wishlist_list")
	public String wishlistList(@RequestParam(value="mNo", required=true) String mNo, Model model) {
		List<Wishlist> wishlistList = wishlistService.selectWishlist(Integer.parseInt(mNo));
		model.addAttribute("mNo", mNo);
		model.addAttribute("wishlistList", wishlistList);
		return "wishlist/list";
	}
	
	@RequestMapping(value = "/wishlist_insert_condition")
	public String wishlistInsertCondition() {
		return "wishlist/insert_condition";
	}
	
	@RequestMapping(value = "/wishlist_insert", method=RequestMethod.POST)
	public String wishlistInsert(@RequestParam(value="mNo") String mNo,
								 @RequestParam(value="pNo") String pNo,
								 Model model) {
		Integer mNo_int = Integer.parseInt(mNo);
		Integer pNo_int = Integer.parseInt(pNo);
		wishlistService.insertWishlist(new Wishlist(mNo_int, pNo_int));
		List<Wishlist> wishlistList = wishlistService.selectWishlist(mNo_int);
		model.addAttribute("mNo", mNo);
		model.addAttribute("pNo", pNo);
		model.addAttribute("wishlistList", wishlistList);
		return "wishlist/insert";
	}
	
	@RequestMapping(value = "/wishlist_delete_condition")
	public String wishlistDeleteCondition() {
		return "wishlist/delete_condition";
	}
	 
	@RequestMapping(value = "/wishlist_delete")
	public String wishlistDelete(@RequestParam(value="mNo") String mNo,
			 					 @RequestParam(value="pNo") String pNo,
			 					 Model model) {
		Integer mNo_int = Integer.parseInt(mNo);
		Integer pNo_int = Integer.parseInt(pNo);
		wishlistService.deleteWishlist(new Wishlist(mNo_int, pNo_int));
		List<Wishlist> wishlistList = wishlistService.selectWishlist(mNo_int);
		model.addAttribute("mNo", mNo);
		model.addAttribute("pNo", pNo);
		model.addAttribute("wishlistList", wishlistList);
		return "wishlist/delete";
	}
	
}
