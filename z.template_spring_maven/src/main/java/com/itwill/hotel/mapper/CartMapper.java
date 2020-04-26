package com.itwill.hotel.mapper;

import java.util.HashMap;
import java.util.List;

import com.itwill.hotel.domain.Cart;

public interface CartMapper {
	
	public List<Cart> selectBymNo(Integer mNo);
	
	public Cart selectByCartNo(Integer cNo);
	
	public Cart checkCartProduct(Cart cart);
	
	public Integer productTotalCart(HashMap parameterMap);

	public int insertCart(Cart cart);
	
	public int deleteCart(Integer cNo);
	
	public int deleteByMap(HashMap parameterMap);
	
	public int deleteOutdatedCart(HashMap parameterMap);
	
	public int updateCart(HashMap parameterMap);
	
	public int deleteCartMember(int mNo);
	
}
