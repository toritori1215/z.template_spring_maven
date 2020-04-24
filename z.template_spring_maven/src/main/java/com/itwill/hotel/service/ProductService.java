package com.itwill.hotel.service;

import java.util.HashMap;
import java.util.List;

import com.itwill.hotel.domain.Member;
import com.itwill.hotel.domain.Product;
import com.itwill.hotel.domain.Wishlist;

public interface ProductService {

	public Product selectByNo(Integer pNo);

	public List<Product> selectByType(HashMap parameterMap);
	
	public List<Product> selectByCategory(String category);
	
	public Integer checkWishlist(Wishlist wishlist);
	
	public Integer countByCategory(String foodCategory);

	public Integer countBookedRoomQty(HashMap parameterMap);
	
	public Integer countBookedTourQty(HashMap parameterMap);
	
	public int updateRate(int pNo);
	
}
