package com.itwill.hotel.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.hotel.domain.Product;
import com.itwill.hotel.domain.Wishlist;
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
	public List<Product> selectByCategory(String category) {
		return productDao.selectByCategory(category);
	}
	
	@Override
	public Integer checkWishlist(Wishlist wishlist) {
		return productDao.checkWishlist(wishlist);
	}
	
	@Override
	public Integer countByType(String pType) {
		return productDao.countByType(pType);
	}

	@Override
	public Integer countByCategory(String foodCategory) {
		return productDao.countByCategory(foodCategory);
	}
	
	@Override
	public Integer countBookedRoomQty(HashMap parameterMap) {
		return productDao.countBookedRoomQty(parameterMap);
	}

	@Override
	public Integer countBookedTourQty(HashMap parameterMap) {
		return productDao.countBookedTourQty(parameterMap);
	}

	@Override
	public Integer countCartTourQty(HashMap parameterMap) {
		return productDao.countCartTourQty(parameterMap);
	}
	
	@Override
	public Integer countCartOptionQty(int pNo) {
		return productDao.countCartOptionQty(pNo);
	}

	@Override
	public int updateRate(int pNo) {
		return productDao.updateRate(pNo);
	}

	@Override
	public int deleteProduct(int pNo) {
		return productDao.deleteProduct(pNo);
	}
	
}
