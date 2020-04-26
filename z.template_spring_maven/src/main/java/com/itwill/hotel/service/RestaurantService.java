package com.itwill.hotel.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.itwill.hotel.domain.Member;
import com.itwill.hotel.domain.RestaurantCartDTO;
import com.itwill.hotel.domain.RestaurantDTO;
import com.itwill.hotel.domain.Restaurant_JD_DTO;
import com.itwill.hotel.domain.Restaurant_J_DTO;
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
	public List<RestaurantCartDTO> findCartList(Integer mno);
	public int insertCartInfo(RestaurantCartDTO cart_info);
	public int updateCartInfo(RestaurantCartDTO cart_info);
	public int seatCapacityCalcul(HashMap<String, String> dateAndtime);
	public int deleteMemberCart(int mno);
	public boolean cartReDefindTransaction(List<Restaurant_JD_DTO> jd_list,Member member);
	public List<RestaurantDTO> all_jumun_Info_Insert(Restaurant_J_DTO jumundto,
												  List<Restaurant_JD_DTO> jd_list,
												  int mno);
}
