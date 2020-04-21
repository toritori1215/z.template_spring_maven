package com.itwill.hotel.repository;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.hotel.domain.Product;
import com.itwill.hotel.domain.Wishlist;
import com.itwill.hotel.mapper.ProductMapper;

@Repository
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private ProductMapper productMapper;

	@Override
	public Product selectByNo(Integer pNo) {
		return productMapper.selectByNo(pNo);
	}

	@Override
	public List<Product> selectByType(HashMap parameterMap) {
		return productMapper.selectByType(parameterMap);
	}
	
	@Override
	public Integer checkWishlist(Wishlist wishlist) {
		return productMapper.checkWishlist(wishlist);
	}

	@Override
	public Integer countBookedRoomQty(HashMap parameterMap) {
		return productMapper.countBookedRoomQty(parameterMap);
	}

	@Override
	public Integer countBookedTourQty(HashMap parameterMap) {
		return productMapper.countBookedTourQty(parameterMap);
	}

}
