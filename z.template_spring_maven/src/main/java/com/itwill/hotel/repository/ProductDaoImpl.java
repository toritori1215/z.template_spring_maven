package com.itwill.hotel.repository;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.hotel.domain.Product;
import com.itwill.hotel.mapper.ProductMapper;

@Repository
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private ProductMapper productMapper;

	@Override
	public Product selectByNo(Integer pNo) {
		Product product = productMapper.selectByNo(pNo);
		return product;
	}

	@Override
	public List<Product> selectByType(HashMap parameterMap) {
		List<Product> productList = productMapper.selectByType(parameterMap);
		return productList;
	}

	@Override
	public Integer countBookedRoomQty(HashMap parameterMap) {
		Integer count = productMapper.countBookedRoomQty(parameterMap);
		return count;
	}

	@Override
	public Integer countBookedTourQty(HashMap parameterMap) {
		Integer count = productMapper.countBookedTourQty(parameterMap);
		return null;
	}

}
