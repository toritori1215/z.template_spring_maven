package com.itwill.hotel.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.hotel.domain.Cart;
import com.itwill.hotel.mapper.CartMapper;

@Repository
public class CartDaoImpl implements CartDao {

	@Autowired
	private CartMapper cartMapper;

	@Override
	public int insertCart(Cart cart) {
		return cartMapper.insertCart(cart);
	}

	

}
