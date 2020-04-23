package com.itwill.hotel.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.hotel.domain.Member;
import com.itwill.hotel.domain.Review;
import com.itwill.hotel.service.ProductService;
import com.itwill.hotel.service.ReviewService;

@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private ProductService productService;
	
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
		int rowCount1 = reviewService.insertReview(new Review(0, Integer.parseInt(rate1), Integer.parseInt(rate2), 
								Integer.parseInt(rate3), Integer.parseInt(rate4), cotent, null, member.getmNo(),
								Integer.parseInt(pNo), null, null, null, 0));
		int rowCount2 = productService.updateRate(Integer.parseInt(pNo));
		if (rowCount1 == 1 && rowCount2==1) {
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

	@RequestMapping(value = "/update_review")
	public String updateReview(@RequestParam(value = "position_review", defaultValue = "0") String rate1, 
								@RequestParam(value = "guide_review", defaultValue = "0") String rate2, 
								@RequestParam(value = "price_review", defaultValue = "0") String rate3, 
								@RequestParam(value = "quality_review", defaultValue = "0") String rate4, 
								@RequestParam(value = "updatePno") String pNo, 
								@RequestParam(value = "review_text") String content, 
								@RequestParam(value = "updatePtype") String pType, 
								HttpSession session, Model model) {
		Member member = (Member) session.getAttribute("sUser");
		HashMap hashMap = new HashMap();
		hashMap.put("rRate1", rate1);
		hashMap.put("rRate2", rate2);
		hashMap.put("rRate3", rate3);
		hashMap.put("rRate4", rate4);
		hashMap.put("rContent", content);
		hashMap.put("pNo", pNo);
		hashMap.put("mNo", member.getmNo());
		int rowCount1 = reviewService.updateReview(hashMap);
		int rowCount2 = productService.updateRate(Integer.parseInt(pNo));
		if (rowCount1 == 1 && rowCount2 == 1) {
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
	public String deleteReview(@RequestParam(value = "pNo") String pNo,
								@RequestParam(value = "pType") String pType, 
								HttpSession session) {
		Member member = (Member) session.getAttribute("sUser");
		HashMap hashMap = new HashMap();
		hashMap.put("mNo", member.getmNo());
		hashMap.put("pNo", Integer.parseInt(pNo));
		int rowCount1 = reviewService.deleteReview(hashMap);
		int rowCount2 = productService.updateRate(Integer.parseInt(pNo));
		if (rowCount1 == 1 && rowCount2 == 1) {
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
	
	@RequestMapping("review_selectOne")
	@ResponseBody
	public Review selectOneReview(@RequestParam(value = "pNo") String pNo, 
									@RequestParam(value = "mNo") String mNo) {
		HashMap hashMap = new HashMap();
		hashMap.put("pNo", pNo);
		hashMap.put("mNo", mNo);
		Review review = reviewService.selectOne(hashMap);
		return review;
	}
	
	@RequestMapping("review_ifExisted")
	@ResponseBody
	public String ifExist(@RequestParam(value = "pNo") String pNo, 
							HttpSession session) {
		Member member = (Member) session.getAttribute("sUser");
		HashMap hashMap = new HashMap();
		hashMap.put("pNo", pNo);
		hashMap.put("mNo", member.getmNo());
		int rowCount = reviewService.ifExisted(hashMap);
		if (rowCount == 1) {
			return "true";
		} else {
			return "false";
		}
	}
	
}
