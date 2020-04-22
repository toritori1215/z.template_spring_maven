package com.itwill.hotel.controller;

import java.sql.Date;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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

import com.itwill.hotel.domain.Member;
import com.itwill.hotel.domain.Review;
import com.itwill.hotel.service.MemberService;
import com.itwill.hotel.service.ReviewService;

@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping(value = "/insert_review")
	public String insertReview(@RequestParam(value = "position_review", defaultValue = "0") String rate1, 
								@RequestParam(value = "guide_review", defaultValue = "0") String rate2, 
								@RequestParam(value = "price_review", defaultValue = "0") String rate3, 
								@RequestParam(value = "quality_review", defaultValue = "0") String rate4, 
								@RequestParam(value = "insertPNo") String pNo, 
								@RequestParam(value = "review_text") String cotent, 
								@RequestParam(value = "insertPtype") String pType, 
								HttpSession session, Model model) {
		Member member = (Member) session.getAttribute("sUser");
		int rowCount = reviewService.insertReview(new Review(0, Integer.parseInt(rate1), Integer.parseInt(rate2), 
								Integer.parseInt(rate3), Integer.parseInt(rate4), cotent, null, member.getmNo(),
								Integer.parseInt(pNo), null, null, null, 0));
		if (rowCount == 1) {
			if (pType.toLowerCase().equals("tour")) {
				return "forward:tour_detail?pNo=" + pNo;
			} else if (pType.toLowerCase().equals("hotel")) {
				return "forward:hotel_detail?pNo=" + pNo;
			} else if (pType.toLowerCase().equals("facility")) {
				return "forward:facility_detail?pNo=" + pNo;
			} else if (pType.toLowerCase().equals("restaurant")) {
				return "forward:restaurant_detail?pNo=" + pNo;
			} else {
				return "common_404";
			}
		} else {
			return "common_404";
		}
	}
	
	@RequestMapping(value = "/delete_review")
	public String deleteReview(@RequestParam(value = "rNo") String rNo, 
								@RequestParam(value = "pType") String pType) {
		int rowCount = reviewService.deleteReview(Integer.parseInt(rNo));
		if (rowCount == 1) {
			if (pType.toLowerCase().equals("tour")) {
				return "forward:tour_detail";
			} else if (pType.toLowerCase().equals("hotel")) {
				return "forward:hotel_detail";
			} else if (pType.toLowerCase().equals("facility")) {
				return "forward:facility_detail";
			} else if (pType.toLowerCase().equals("restaurant")) {
				return "forward:restaurant_detail";
			} else {
				return "common_404";
			}
		} else {
			return "common_404";
		}
	}
	
}
