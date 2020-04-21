package com.itwill.hotel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.hotel.domain.Cart;
import com.itwill.hotel.repository.CartDao;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDao cartDao;
	
	@Override
	public List<Cart> selectByNo(Integer mNo) {
		return cartDao.selectByNo(mNo);
	}
	
	@Override
	public int insertCart(Cart cart) {
		return cartDao.insertCart(cart);
	}
	
}
