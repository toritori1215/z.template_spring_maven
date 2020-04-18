package com.itwill.hotel.service;

import java.util.List;

import com.itwill.hotel.domain.Cart;

public interface CartService {
	
	public List<Cart> selectByNo(Integer mNo);
	
	public int insertCart(Cart cart);

}
