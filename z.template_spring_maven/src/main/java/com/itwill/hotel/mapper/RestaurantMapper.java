package com.itwill.hotel.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.itwill.hotel.domain.RestaurantCartDTO;
import com.itwill.hotel.domain.RestaurantDTO;
import com.itwill.hotel.domain.Restaurant_JD_DTO;
import com.itwill.hotel.domain.Restaurant_J_DTO;




public interface RestaurantMapper {
	
	//Product
	public int registerProduct(RestaurantDTO restDto);
	public RestaurantDTO get_Restaurant_Product(int pNo);
	public RestaurantDTO get_Restaurant_Product_name_select(String pname);
	
	public int restEntireProductCnt();
	public int restCategoryProductCnt(String category);
	public int foodCategoryDessertCnt();
	
	public List<RestaurantDTO> findRestBoardList();
	public List<RestaurantDTO> findRestBoardList_price_ASC();
	public List<RestaurantDTO> findRestBoardList_price_DESC();
	public List<RestaurantDTO> findRestBoardList_lower_ASC();
	public List<RestaurantDTO> findRestBoardList_lower_DESC();
	public List<HashMap<String,Integer>> foodCategoryList();
	
	public List<RestaurantDTO> findRestBoardList_Cartegory(String category);
	public List<RestaurantDTO> findRestBoardList_Cartegory_price_sort(@Param("category")String category,@Param("orderBy") String orderBy);
	public List<RestaurantDTO> findRestBoardList_Cartegory_prate_sort(@Param("category")String category,@Param("orderBy") String orderBy);
	
	//Cart
	List<RestaurantCartDTO> findCartList(Integer mno);
	public int insertCartInfo(RestaurantCartDTO cartInsertInfo);
	public int updateCartInfo(RestaurantCartDTO cartInsertInfo);
	
	public int seatCapacityCalcul(HashMap<String, String> dateAndtime);
	public int deleteMemberCart(int mno);
	public int insertJumunTable(Restaurant_J_DTO jumundto);
	public int insertJumunDetailTable(Restaurant_JD_DTO jd_list);
	public Restaurant_J_DTO selectJumunComplete(int mno);
	
}
