package com.itwill.hotel.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.itwill.hotel.domain.RestaurantCartDTO;
import com.itwill.hotel.domain.RestaurantDTO;
import com.itwill.hotel.domain.Restaurant_JD_DTO;
import com.itwill.hotel.domain.Restaurant_J_DTO;

public interface RestaurantDao {
	public int registerProduct(RestaurantDTO restDto);
	public RestaurantDTO get_Restaurant_Product(int pNo);
	public RestaurantDTO get_Restaurant_Product_name_select(String pname);
	public int restEntireProductCnt();
	public int foodCategoryDessertCnt();
	public int restCategoryProductCnt(String category);
	public int restCategoryProductDessertCnt(String category);
	public List<RestaurantDTO> findRestBoardList(String orderBy,String category);
	public List<HashMap<String,Integer>> foodCategoryList();
	public List<RestaurantCartDTO> findCartList(Integer mno);
	public int insertCartInfo(RestaurantCartDTO cart_info);
	public int updateCartInfo(RestaurantCartDTO cart_info);
	public int seatCapacityCalcul(HashMap<String, String> dateAndtime);
	public int deleteMemberCart(int mno);
	public int insertJumunTable(Restaurant_J_DTO jumundto);
	public int insertJumunDetailTable(Restaurant_JD_DTO jd_list);
	
}
