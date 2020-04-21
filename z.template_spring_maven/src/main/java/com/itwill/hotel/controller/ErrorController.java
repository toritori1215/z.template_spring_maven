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
public class ErrorController {
	
	@RequestMapping(value = "/common_404")
	public String errorPage() {
		return "common_404";
	}
	
}
