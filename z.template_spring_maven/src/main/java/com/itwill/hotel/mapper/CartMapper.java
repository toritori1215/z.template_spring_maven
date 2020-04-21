package com.itwill.hotel.mapper;

import java.util.List;

import com.itwill.hotel.domain.Cart;

public interface CartMapper {
	
	public List<Cart> selectByNo(Integer mNo);

	public int insertCart(Cart cart);
	
	public int deleteCart(Integer cNo);
	
}
