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
import org.springframework.web.bind.annotation.ResponseBody;
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
	@ResponseBody
	@RequestMapping(value = "/review_write", method=RequestMethod.POST)
	public Integer write(@RequestParam(value = "rFirst") String rFirst,
						@RequestParam(value = "rLast") String rLast,
						@RequestParam(value = "rEmail") String rEmail,
						@RequestParam(value = "rCleanliness") String rCleanliness,
						@RequestParam(value = "rComfort") String rComfort,
						@RequestParam(value = "rPrice") String rPrice,
						@RequestParam(value = "rQuality") String rQuality,
						@RequestParam(value = "rContent") String rContent,
						@RequestParam(value = "pType") String pType, 
						Model model){
	
	int var1 = Integer.parseInt(rCleanliness);
	int var2 = Integer.parseInt(rComfort);
	int var3 = Integer.parseInt(rPrice);
	int var4 = Integer.parseInt(rQuality);
	int total_review = (var1+var2+var3+var4) /4;
	int reviewWrite = reviewService.createReview(new Review(-9999, rFirst, rLast, rEmail, var1, var2, var3, var4, rContent, null, pType, 1, 1, "toto", total_review));
    List<Review> hotelreviewList = reviewService.selectAll();
    System.out.println("########total_review: " + total_review);
    model.addAttribute("total_review", total_review);
	return total_review;
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
