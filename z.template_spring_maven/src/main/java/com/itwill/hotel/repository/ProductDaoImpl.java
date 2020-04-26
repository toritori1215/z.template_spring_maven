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
	public List<Product> selectByCategory(String category) {
		return productMapper.selectByCategory(category);
	}
	
	@Override
	public Integer checkWishlist(Wishlist wishlist) {
		return productMapper.checkWishlist(wishlist);
	}
	
	@Override
	public Integer countByType(String pType) {
		return productMapper.countByType(pType);
	}

	@Override
	public Integer countByCategory(String foodCategory) {
		return productMapper.countByCategory(foodCategory);
	}

	@Override
	public Integer countBookedRoomQty(HashMap parameterMap) {
		return productMapper.countBookedRoomQty(parameterMap);
	}

	@Override
	public Integer countBookedTourQty(HashMap parameterMap) {
		return productMapper.countBookedTourQty(parameterMap);
	}

	@Override
	public Integer countCartTourQty(HashMap parameterMap) {
		return productMapper.countCartTourQty(parameterMap);
	}
	
	@Override
	public Integer countCartOptionQty(int pNo) {
		return productMapper.countCartOptionQty(pNo);
	}

	@Override
	public int updateRate(int pNo) {
		return productMapper.updateRate(pNo);
	}

	@Override
	public int deleteProduct(int pNo) {
		return productMapper.deleteProduct(pNo);
	}
	
}
