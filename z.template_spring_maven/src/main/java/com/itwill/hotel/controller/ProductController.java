package com.itwill.hotel.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.hotel.domain.Product;
import com.itwill.hotel.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "/tour_list")
	public String tourList(Model model) {
		HashMap parameterMap = new HashMap();
		parameterMap.put("pType", "tour");
		List<Product> productList=productService.selectByType(parameterMap);
		System.out.println(productList);
		model.addAttribute("productList", productList);
		return "forward:tour_all_list.jsp";
	}
	
	@RequestMapping(value = "/tour_detail")
	public String tourDetail(@RequestParam(value="pNo") String pNo, Model model) {
		model.addAttribute("pNo", pNo);
		return "forward:tour_single_with_gallery.jsp";
	}
	
	@RequestMapping(value = "/room_list")
	public String roomList() {
		return "room_all_list";
	}
	
	@RequestMapping(value = "/tour_grid")
	public String tourListGrid() {
		return "tour_all_grid";
	}
	
	@RequestMapping(value = "/room_grid")
	public String roomListGrid() {
		return "room_all_grid";
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
	
	@RequestMapping(value = "/count_room_condition")
	public String countRoomCondition() {
		return "product/count_room_condition";
	}
	
	@RequestMapping(value = "/count_room")
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
		return "product/count_room";
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
		
}
