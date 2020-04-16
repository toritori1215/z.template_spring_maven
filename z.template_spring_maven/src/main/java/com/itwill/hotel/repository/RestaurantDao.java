package com.itwill.hotel.repository;

import java.util.HashMap;
import java.util.List;

import com.itwill.hotel.domain.RestaurantDTO;

public interface RestaurantDao {
	public int registerProduct(RestaurantDTO restDto);
	public RestaurantDTO get_Restaurant_Product(int pNo);
	public int restEntireProductCnt();
	public int restCategoryProductCnt(String category);
	public int restCategoryProductDessertCnt(String category);
	public List<RestaurantDTO> findRestBoardList(String orderBy,String category);
	public List<HashMap<String,Integer>> foodCategoryList();
}
