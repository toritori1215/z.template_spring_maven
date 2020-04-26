package com.itwill.hotel.repository;

import java.util.HashMap;
import java.util.List;

import com.itwill.hotel.domain.Product;
import com.itwill.hotel.domain.Wishlist;

public interface ProductDao {

	public Product selectByNo(Integer pNo);

	public List<Product> selectByType(HashMap parameterMap);
	
	public List<Product> selectByCategory(String category);
	
	public Integer checkWishlist(Wishlist wishlist);
	
	public Integer countByType(String pType);
	
	public Integer countByCategory(String foodCategory);
	
	public Integer countBookedRoomQty(HashMap parameterMap);
	
	public Integer countBookedTourQty(HashMap parameterMap);
	
	public Integer countCartTourQty(HashMap parameterMap);
	
	public Integer countCartOptionQty(int pNo);
	
	public int updateRate(int pNo);
	
	public int deleteProduct(int pNo);
	
}
