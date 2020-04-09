package com.itwill.hotel.service;

import java.util.HashMap;
import java.util.List;

import com.itwill.hotel.domain.Member;
import com.itwill.hotel.domain.Product;

public interface ProductService {

	public Product selectByNo(Integer pNo);

	public List<Product> selectByType(HashMap parameterMap);

	public List<Product> selectWishlist(Integer mNo);

	public Integer countBookedRoomQty(HashMap parameterMap);
	
	public Integer countBookedTourQty(HashMap parameterMap);
}
