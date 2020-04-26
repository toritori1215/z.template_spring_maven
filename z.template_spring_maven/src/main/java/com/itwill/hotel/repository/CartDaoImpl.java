package com.itwill.hotel.repository;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.hotel.domain.Cart;
import com.itwill.hotel.mapper.CartMapper;

@Repository
public class CartDaoImpl implements CartDao {

	@Autowired
	private CartMapper cartMapper;
	
	@Override
	public List<Cart> selectBymNo(Integer mNo) {
		return cartMapper.selectBymNo(mNo);
	}
	
	@Override
	public Cart selectByCartNo(Integer cNo) {
		return cartMapper.selectByCartNo(cNo);
	}

	@Override
	public Cart checkCartProduct(Cart cart) {
		return cartMapper.checkCartProduct(cart);
	}

	@Override
	public Integer productTotalCart(HashMap parameterMap) {
		return cartMapper.productTotalCart(parameterMap);
	}
	
	@Override
	public int insertCart(Cart cart) {
		return cartMapper.insertCart(cart);
	}

	@Override
	public int deleteCart(Integer cNo) {
		return cartMapper.deleteCart(cNo);
	}

	@Override
	public int deleteOutdatedCart(HashMap parameterMap) {
		return cartMapper.deleteOutdatedCart(parameterMap);
	}

	@Override
	public int deleteByMap(HashMap parameterMap) {
		return cartMapper.deleteByMap(parameterMap);
	}

	@Override
	public int updateCart(HashMap parameterMap) {
		return cartMapper.updateCart(parameterMap);
	}

	@Override
	public int deleteCartMember(int mNo) {
		return cartMapper.deleteCartMember(mNo);
	}

}
