package com.itwill.hotel.service;

import java.util.HashMap;
import java.util.List;

import com.itwill.hotel.domain.Cart;

public interface CartService {
	
	public List<Cart> selectBymNo(Integer mNo);
	
	public Cart selectByCartNo(Integer cNo);
	
	public Cart checkCartProduct(Cart cart);
	
	public int insertCart(Cart cart);
	
	public int deleteCart(Integer cNo);
	
	public int updateCart(HashMap parameterMap);

}
