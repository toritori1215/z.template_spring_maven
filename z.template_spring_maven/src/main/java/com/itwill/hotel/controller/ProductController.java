package com.itwill.hotel.controller;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.hotel.domain.Cart;
import com.itwill.hotel.domain.Member;
import com.itwill.hotel.domain.Product;
import com.itwill.hotel.domain.Review;
import com.itwill.hotel.domain.ReviewRate;
import com.itwill.hotel.domain.Wishlist;
import com.itwill.hotel.service.ProductService;
import com.itwill.hotel.service.ReviewService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping(value = "/hotel_list")
	public String hotelList(Model model) {
		HashMap parameterMap = new HashMap();
		parameterMap.put("pType", "hotel");
		model.addAttribute("productList", productService.selectByType(parameterMap));
		return "hotels_all_list";
	}
	
	@RequestMapping(value = "/hotel_list_json", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public List<Product> hotelList(@RequestParam(value="ratingArray[]") ArrayList<Integer> ratingArray) {
		HashMap parameterMap = new HashMap();
		for (int i = 0; i < ratingArray.size(); i++) {
			Integer rating = ratingArray.get(i);
			parameterMap.put("pType", "tour");
			parameterMap.put("pRate"+rating, rating);
		}
		return productService.selectByType(parameterMap);
	}
	
	@RequestMapping(value = "/hotel_grid")
	public String hotelListGrid(Model model) {
		HashMap parameterMap = new HashMap();
		parameterMap.put("pType", "hotel");
		model.addAttribute("productList", productService.selectByType(parameterMap));
		return "hotels_all_grid";
	}
	
	@RequestMapping(value = "/tour_list")
	public String tourList(Model model, HttpSession session) {
		Member member = (Member) session.getAttribute("sUser");
		HashMap parameterMap = new HashMap();
		parameterMap.put("pType", "tour");
		List<Product> productList = productService.selectByType(parameterMap);
		model.addAttribute("productList", productList);
		/*
		List<String> categoryList = new ArrayList<String>();
		for (Product product: productList) {
			if(!categoryList.contains(product.getFoodCategory())) {
				categoryList.add(product.getFoodCategory());
			}
		}

		List<HashMap> categoryInfoList = new ArrayList<HashMap>();
		
		for (String category2 : categoryList) {
			HashMap categoryMap = new HashMap();
			categoryMap.put("category", category2);
			categoryMap.put("cCount", productService.countByCategory(category2));
			categoryInfoList.add(categoryMap);
		}
		*/
		//model.addAttribute("categoryInfoList", categoryInfoList);		
		//model.addAttribute("allCount", productService.countByType("tour"));
		
		return "tour_all_list";
	}
	
	@RequestMapping(value = "/tour_list_json", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public List<Product> productList(@RequestParam(value="ratingArray[]") ArrayList<Integer> ratingArray) {
		HashMap parameterMap = new HashMap();
		for (int i = 0; i < ratingArray.size(); i++) {
			Integer rating = ratingArray.get(i);
			parameterMap.put("pType", "tour");
			parameterMap.put("pRate"+rating, rating);
		}
		return productService.selectByType(parameterMap);
	}
	
	@RequestMapping(value = "/tour_spaces", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public int tourSpace(@RequestParam(value="newVal") String newVal,
						 @RequestParam(value="pNo") String pNo,
						 @RequestParam(value="selectDate") String selectDate,
						 @RequestParam(value="pAvailable") String pAvailable) throws ParseException {
		java.util.Date date = new SimpleDateFormat("yyyy/MMMM/dd", Locale.US).parse(selectDate);
		String strDate = new SimpleDateFormat("yyyy/MM/dd").format(date);
		HashMap parameterMap = new HashMap();
		parameterMap.put("pNo", Integer.parseInt(pNo));
		parameterMap.put("jdOrderDate", strDate);
		parameterMap.put("cCheckin", strDate);
		int newVal_int = Integer.parseInt(newVal);
		int bookedNo = 0;
		if (productService.countBookedTourQty(parameterMap) != null) {
			bookedNo = productService.countBookedTourQty(parameterMap);
		}
		int inCartNo = 0;
		if (productService.countCartTourQty(parameterMap) != null) {
			inCartNo = productService.countCartTourQty(parameterMap);
		}
		return Integer.parseInt(pAvailable) - (newVal_int + bookedNo + inCartNo);
	}
	
	@RequestMapping(value = "/tour_detail")
	public String tourDetail(@RequestParam(value="pNo") String pNo, 
								HttpSession session, Model model) {
		Member member = (Member) session.getAttribute("sUser");
		int ifExist = 0;
		if (member != null) {
			int mNo = member.getmNo();
			Wishlist wishlist = new Wishlist(mNo, Integer.parseInt(pNo));
			ifExist = productService.checkWishlist(wishlist);
			HashMap hashMap = new HashMap();
			hashMap.put("mNo", member.getmNo());
			hashMap.put("pNo", pNo);
			int ifReviewExisted = reviewService.ifExisted(hashMap);
			model.addAttribute("ifReviewExisted", ifReviewExisted);
		}
		Product product = productService.selectByNo(Integer.parseInt(pNo));
		model.addAttribute("product", product);
		model.addAttribute("ifExist", ifExist);
		List<Review> reviewList = reviewService.selectAll(Integer.parseInt(pNo));
		model.addAttribute("reviewList", reviewList);
		int reviewSize = reviewList.size();
		model.addAttribute("reviewSize", reviewSize);
		ReviewRate reviewRate = reviewService.selectRate(Integer.parseInt(pNo));
		model.addAttribute("reviewRate", reviewRate);
		return "tour_single_with_gallery";
	}
	
	@RequestMapping(value = "/tour_detail_travellers", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public int tourTravellers(@RequestParam(value="newVal") String newVal) {
		return Integer.parseInt(newVal);
	}
	
	
	@RequestMapping(value = "/hotel_single")
	public String hotelDetail(@RequestParam(value="pNo") String pNo, 
								HttpSession session, Model model) {
		Member member = (Member) session.getAttribute("sUser");
		int ifExist = 0;
		if (member != null) {
			int mNo = member.getmNo();
			Wishlist wishlist = new Wishlist(mNo, Integer.parseInt(pNo));
			ifExist = productService.checkWishlist(wishlist);
		}
		
		Product product = productService.selectByNo(Integer.parseInt(pNo));
		model.addAttribute("product", product);
		model.addAttribute("ifExist", ifExist);
		List<Review> reviewList = reviewService.selectAll(Integer.parseInt(pNo));
		model.addAttribute("reviewList", reviewList);
		int reviewSize = reviewList.size();
		model.addAttribute("reviewSize", reviewSize);
		ReviewRate reviewRate = reviewService.selectRate(Integer.parseInt(pNo));
		model.addAttribute("reviewRate", reviewRate);
		return "hotel_single";
	}
	
	@RequestMapping(value = "/hotel_single_details", produces = "application/json;charset=UTF-8")
	@ResponseBody
	public int hotel_checkin(@RequestParam(value="newVal") String newVal) {
		return Integer.parseInt(newVal);
	}
	
	@RequestMapping(value = "/tour_grid")
	public String tourListGrid() {
		return "tour_all_grid";
	}
		
	
	@RequestMapping(value = "/product_list_condition")
	public String productListCondition() {
		return "product/list_condition";
	}
	
	@RequestMapping(value = "/product_list", method=RequestMethod.POST)
	public String productList(@RequestParam(value="pType") String pType,
							  @RequestParam(value="pPrice_lb") String pPrice_lb,
							  @RequestParam(value="pPrice_ub") String pPrice_ub,
							  @RequestParam(value="pRateStar") String pRateStar,
							  @RequestParam(value="orderBy") String orderBy,
							  Model model) {
		
		if (pPrice_lb == "") {pPrice_lb = null;}
		if (pPrice_ub == "") {pPrice_ub = null;}
		if (pRateStar == "") {pRateStar = null;}
		
		HashMap parameterMap = new HashMap();
		parameterMap.put("pType", pType);
		parameterMap.put("pPrice_lb", pPrice_lb);
		parameterMap.put("pPrice_ub", pPrice_ub);
		parameterMap.put("pRateStar", pRateStar);
		parameterMap.put("orderBy", orderBy);

		List<Product> productList = productService.selectByType(parameterMap);
		model.addAttribute("productList", productList);
		model.addAttribute("parameterMap", parameterMap);
		return "product/list";
	}
	
	@RequestMapping(value = "/product_wishlist_condition")
	public String productWishListCondition() {
		return "product/list_wishlist_condition";
	}
	
	@RequestMapping(value = "/count_hotel_condition")
	public String countRoomCondition() {
		return "product/count_room_condition";
	}
	
	@RequestMapping(value = "/count_hotel")
	public String countRoom(@RequestParam(value="pNo", required=true) String pNo,
							@RequestParam(value="jdOrderDate", required=true) String jdOrderDate,
							@RequestParam(value="jdCheckOut", required=true) String jdCheckOut,
							Model model) {
		HashMap parameterMap = new HashMap();
		parameterMap.put("pNo", Integer.parseInt(pNo));
		parameterMap.put("jdOrderDate", jdOrderDate);
		parameterMap.put("jdCheckOut", jdCheckOut);
		
		int count = productService.countBookedRoomQty(parameterMap);
		model.addAttribute("count", count);
		model.addAttribute("parameterMap", parameterMap);
		Product product = productService.selectByNo(Integer.parseInt(pNo));
		int remain = product.getpAvailable() - count;
		model.addAttribute("remain", remain);
		return "product/count_hotel";
	}
	
	@RequestMapping(value = "/count_tour_condition")
	public String countTourCondition() {
		return "product/count_tour_condition";
	}
	
	@RequestMapping(value = "/count_tour")
	public String countTour(@RequestParam(value="pNo", required=true) String pNo,
							@RequestParam(value="jdOrderDate", required=true) String jdOrderDate,
							@RequestParam(value="jdOrderTime", required=true) String jdOrderTime,
							Model model) {
		HashMap parameterMap = new HashMap();
		parameterMap.put("pNo", Integer.parseInt(pNo));
		parameterMap.put("jdOrderDate", jdOrderDate);
		parameterMap.put("jdOrderTime", jdOrderTime);
		
		int count = productService.countBookedTourQty(parameterMap);
		model.addAttribute("count", count);
		model.addAttribute("parameterMap", parameterMap);
		Product product = productService.selectByNo(Integer.parseInt(pNo));
		int remain = product.getpAvailable() - count;
		model.addAttribute("remain", remain);
		return "product/count_tour";
	}
	
	@RequestMapping(value = "/error_page")
	public String errorPage() {
		return "common_404";
	}
	
}
