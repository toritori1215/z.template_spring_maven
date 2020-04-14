package com.itwill.hotel.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.hotel.domain.Product;
import com.itwill.hotel.service.ProductService;

@RestController
public class ProductRestController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "/tour_list_json", produces = "application/json;charset=UTF-8")
	public List<Product> productList(@RequestParam(value="ratingArray[]") ArrayList<Integer> ratingArray) {
		
		HashMap parameterMap = new HashMap();
		for (int i = 0; i < ratingArray.size(); i++) {
			Integer rating = ratingArray.get(i);
			parameterMap.put("pType", "tour");
			parameterMap.put("pRate"+rating, rating);
		}
		return productService.selectByType(parameterMap);
	}
	
}
