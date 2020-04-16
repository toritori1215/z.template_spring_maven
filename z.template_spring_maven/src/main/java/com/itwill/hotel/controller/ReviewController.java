package com.itwill.hotel.controller;

import java.sql.Date;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.xml.bind.ParseConversionEvent;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.tags.form.PasswordInputTag;

import com.itwill.hotel.domain.Review;
import com.itwill.hotel.service.MemberService;
import com.itwill.hotel.service.ReviewService;

@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private MemberService memberService;
	
	
	@RequestMapping(value = "/hotel_single")
	public String hotelreviewList(HttpServletRequest request,Model model) {
		System.out.println("list컨트롤러");
		List<Review>hotelreviewList =reviewService.selectAll();
		System.out.println("@@@@@@@@@"+hotelreviewList);
		model.addAttribute("hotelreviewList",hotelreviewList);
		return "forward:hotel_single.jsp";
	}
	
	@RequestMapping(value = "/review_write", method=RequestMethod.POST)
	public String write(HttpServletRequest request,Review review,Model model){
	System.out.println("쓰기 컨트롤러");
	int reviewWrite=reviewService.createReview(review);
	System.out.println("reviewWrite");
    List<Review> reviewList = reviewService.selectAll();
    model.addAttribute("reviewList",reviewList);
    System.out.println("@@@@@@@@@"+reviewWrite);
	return "hotel_single";
	}
	@RequestMapping(value = "/review_delete_action" ,method=RequestMethod.GET)
	public String delete(@RequestParam(value = "rNo") String rNo,Model model) {
	System.out.println("delete컨트롤러 도착");
	System.out.println("rNo-->"+rNo);
	int reviewDelete=reviewService.deleteReview(Integer.parseInt(rNo));
	List<Review> reviewList =reviewService.selectAll();
	model.addAttribute("reviewList",reviewList);
	return "forward:hotel_single.jsp";
	
	}
}
