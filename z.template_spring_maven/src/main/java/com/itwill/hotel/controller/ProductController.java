package com.itwill.hotel.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		model.addAttribute("productList", productService.selectByType(parameterMap));
		return "forward:tour_all_list.jsp";
	}
	
	@RequestMapping(value = "/tour_grid")
	public String tourListGrid() {
		return "tour_all_grid";
	}
	
	@RequestMapping(value = "/tour_detail")
	public String tourDetail(@RequestParam(value="pNo") String pNo, Model model) {
		model.addAttribute("product", productService.selectByNo(Integer.parseInt(pNo)));
		return "forward:tour_single_with_gallery.jsp";
	}
	
	@RequestMapping(value = "/product_list_condition")
	public String productListCondition() {
		return "product/list_condition";
	}
	
	@RequestMapping(value = "/product_list", method=RequestMethod.POST)
	public String productList(@RequestParam(value="pType") String pType,
							  @RequestParam(value="pPrice_lb") String pPrice_lb,
							  @RequestParam(value="pPrice_ub") String pPrice_ub,
							  @RequestParam(value="pRate1") String pRate1,
							  @RequestParam(value="pRate2") String pRate2,
							  @RequestParam(value="pRate3") String pRate3,
							  @RequestParam(value="pRate4") String pRate4,
							  @RequestParam(value="pRate5") String pRate5,
							  @RequestParam(value="orderBy") String orderBy,
							  Model model) {
		
		if (pPrice_lb == "") {pPrice_lb = null;}
		if (pPrice_ub == "") {pPrice_ub = null;}
		if (pRate1 == "") {pRate1 = null;}
		if (pRate2 == "") {pRate2 = null;}
		if (pRate3 == "") {pRate3 = null;}
		if (pRate4 == "") {pRate4 = null;}
		if (pRate5 == "") {pRate5 = null;}
		
		HashMap parameterMap = new HashMap();
		parameterMap.put("pType", pType);
		parameterMap.put("pPrice_lb", pPrice_lb);
		parameterMap.put("pPrice_ub", pPrice_ub);
		parameterMap.put("pRate1", pRate1);
		parameterMap.put("pRate2", pRate2);
		parameterMap.put("pRate3", pRate3);
		parameterMap.put("pRate4", pRate4);
		parameterMap.put("pRate5", pRate5);
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
