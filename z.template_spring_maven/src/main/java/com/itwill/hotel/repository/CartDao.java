package com.itwill.hotel.repository;

import java.util.List;

import com.itwill.hotel.domain.Cart;

public interface CartDao {
	
	public List<Cart> selectByNo(Integer mNo);
	
	public int insertCart(Cart cart);
	
}
