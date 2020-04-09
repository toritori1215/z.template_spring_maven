package com.itwill.hotel.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.hotel.domain.Product;
import com.itwill.hotel.repository.ProductDao;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;

	@Override
	public Product selectByNo(Integer pNo) {
		return productDao.selectByNo(pNo);
	}
	
	@Override
	public List<Product> selectByType(HashMap parameterMap) {
		return productDao.selectByType(parameterMap);
	}

	@Override
	public List<Product> selectWishlist(Integer mNo) {
		return productDao.selectWishlist(mNo);
	}

	@Override
	public Integer countBookedRoomQty(HashMap parameterMap) {
		return productDao.countBookedRoomQty(parameterMap);
	}

	@Override
	public Integer countBookedTourQty(HashMap parameterMap) {
		return productDao.countBookedTourQty(parameterMap);
	}

}
