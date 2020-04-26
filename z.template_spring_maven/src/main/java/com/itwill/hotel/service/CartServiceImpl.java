package com.itwill.hotel.service;

import java.util.HashMap;
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
	public List<Cart> selectBymNo(Integer mNo) {
		return cartDao.selectBymNo(mNo);
	}
	
	@Override
	public Cart selectByCartNo(Integer cNo) {
		return cartDao.selectByCartNo(cNo);
	}

	@Override
	public Cart checkCartProduct(Cart cart) {
		return cartDao.checkCartProduct(cart);
	}

	@Override
	public Integer productTotalCart(HashMap parameterMap) {
		return cartDao.productTotalCart(parameterMap);
	}
	
	@Override
	public int insertCart(Cart cart) {
		return cartDao.insertCart(cart);
	}

	@Override
	public int deleteCart(Integer cNo) {
		return cartDao.deleteCart(cNo);
	}

	@Override
	public int deleteOutdatedCart(HashMap parameterMap) {
		return cartDao.deleteOutdatedCart(parameterMap);
	}

	@Override
	public int deleteByMap(HashMap parameterMap) {
		return cartDao.deleteByMap(parameterMap);
	}

	@Override
	public int updateCart(HashMap parameterMap) {
		return cartDao.updateCart(parameterMap);
	}

	@Override
	public int deleteCartMember(int mNo) {
		return cartDao.deleteCartMember(mNo);
	}
	
}
