package com.itwill.hotel.service;

import java.util.HashMap;
import java.util.List;

import com.itwill.hotel.domain.RestaurantDTO;
import com.itwill.hotel.util.PageInputDto;
import com.itwill.hotel.util.RestaurantBoardListPageDto;



public interface RestaurantService {
	
	public int registerProduct(RestaurantDTO restdto);
	public RestaurantDTO get_Restaurant_Product(int pNo);
	public RestaurantDTO get_Restaurant_Product_name_select(String pname);
	public RestaurantBoardListPageDto findRestaurantBoardList(PageInputDto pageInputDto,String orderBy,String category);
	public RestaurantBoardListPageDto calculator_paging(PageInputDto pageInputDto);
	public List<HashMap<String,Integer>> foodCategoryList();
	public int foodCategoryDessertCnt();
}
