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
	public String write(HttpServletRequest request,Review review,Model model,
						@RequestParam(value = "cleanliness") String cleanliness,
						@RequestParam(value = "comfort") String comfort,
						@RequestParam(value = "price") String price,
						@RequestParam(value = "quality") String quality){
	System.out.println("쓰기 컨트롤러");
	System.out.println("cleanliness-->"+cleanliness);
	System.out.println("comfort-->"+comfort);
	System.out.println("price-->"+price);
	System.out.println("quality-->"+quality);
	int var1 =Integer.parseInt(cleanliness);
	int var2 =Integer.parseInt(comfort);
	int var3 =Integer.parseInt(price);
	int var4 =Integer.parseInt(quality);
	int total_review =(var1+var2+var3+var4)/4;
	System.out.println("total_review-->"+total_review);
	review.setrRate(new Double(total_review));
	int reviewWrite=reviewService.createReview(review);
	System.out.println("reviewWrite");
    List<Review> reviewList = reviewService.selectAll();
    model.addAttribute("reviewList",reviewList);
    //model.addAttribute("total_review", 34);
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
