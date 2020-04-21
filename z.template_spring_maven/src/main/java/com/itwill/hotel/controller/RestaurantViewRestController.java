package com.itwill.hotel.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.itwill.hotel.domain.RestaurantDTO;
import com.itwill.hotel.service.RestaurantService;
import com.itwill.hotel.util.PageInputDto;
import com.itwill.hotel.util.RestaurantBoardListPageDto;



@RestController
public class RestaurantViewRestController {
	
	@Autowired
	@Qualifier("restaurantService")
	private RestaurantService restService;
	
	
	@RequestMapping(value="RestaurantDTO_XML", produces = "text/xml;charset=UTF-8")
	@ResponseBody
	public RestaurantDTO get_Restaurant_Product(@RequestParam("pNo") int pNo) {
		System.out.println("restController로 잘들어오네~!!!");
		RestaurantDTO restDto = restService.get_Restaurant_Product(pNo);
		return restDto;
	}
	
	
	@RequestMapping(value="insertRestDTO", produces = "text/xml;charset=UTF-8")
	@ResponseBody
	public String registerProduct(@ModelAttribute RestaurantDTO restdto) {
		System.out.println("restController로 상품등록~!!!");
		System.out.println("restdto ::" + restdto);
		int cnt = restService.registerProduct(restdto);
		return cnt+"";
	}
	/*
	@RequestMapping(value="pageCalculate", produces = "text/xml;charset=UTF-8")
	@ResponseBody
	public String pageCalculate(Model model,
			  					@RequestParam(required = false) String pageno) {
		System.out.println("페이지 계산 메소드");
		
		return cnt+"";
	}
	*/
	@RequestMapping(value="rest_all_list", produces = "text/xml;charset=UTF-8")
	@ResponseBody
	public String rest_all_list(@RequestParam(required = false) String pageno,
								@RequestParam(required = false) String orderBy,
								@RequestParam(required = false) String category) {
		
		System.out.println("restController로  restaurants_all_list ajax 요청~!!!");
		
		if(pageno==null||pageno.equals("")){
			pageno="1";
		}	
		if(category==null) {
			category="";
		}
		//2.한페이지에표시할 게시물수 
		int rowCountPerPage = 6;
		//3.한페이지에보여줄 페이지번호갯수(<< 1 2 3 4 5 >>)
		int pageCountPerPage = 5;
		//페이징(계산)을위한DTO,VO
		PageInputDto pageInputDto=
				new PageInputDto(rowCountPerPage,pageCountPerPage,pageno,"","");

		//게시물조회
		RestaurantBoardListPageDto restListPage 
			=restService.findRestaurantBoardList(pageInputDto, orderBy, category);
		
		
		//model.addObject("restListPage2",restListPage2);
		//model.addObject("currentPageno",pageno);
		String jsonStr ="";
		try {
			ObjectMapper mapper = new ObjectMapper();
			jsonStr = mapper.writeValueAsString(restListPage);
			System.out.println("restListPage::"+restListPage);
			return jsonStr;
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return jsonStr;
	}
	
	@RequestMapping(value="paging_Ajax", produces = "text/xml;charset=UTF-8")
	@ResponseBody
	public String paging_Ajax(@RequestParam(required = false) String pageno,
								@RequestParam(required = false) String orderBy) {
		
		if(pageno==null||pageno.equals("")){
			pageno="1";
		}	
		//2.한페이지에표시할 게시물수 
		int rowCountPerPage = 6;
		//3.한페이지에보여줄 페이지번호갯수(<< 1 2 3 4 5 >>)
		int pageCountPerPage = 5;
		//페이징(계산)을위한DTO,VO
		PageInputDto pageInputDto=
				new PageInputDto(rowCountPerPage,pageCountPerPage,pageno,"","");

		//게시물조회
		RestaurantBoardListPageDto restListPage 
			=restService.calculator_paging(pageInputDto);
		
		//model.addObject("restListPage2",restListPage2);
		//model.addObject("currentPageno",pageno);
		String jsonStr ="";
		try {
			ObjectMapper mapper = new ObjectMapper();
			jsonStr = mapper.writeValueAsString(restListPage);
			System.out.println("restListPage::"+restListPage);
			return jsonStr;
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return jsonStr;
	}
	
}
