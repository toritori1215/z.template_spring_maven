package com.itwill.hotel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.hotel.domain.Product;
import com.itwill.hotel.domain.Wishlist;
import com.itwill.hotel.repository.WishlistDao;

@Service
public class WishlistServiceImpl implements WishlistService {

	@Autowired
	private WishlistDao wishlistDao;
	
	@Override
	public List<Product> selectWishlist(int mNo) {
		return wishlistDao.selectWishlist(mNo);
	}

	@Override
	public void insertWishlist(Wishlist wishlist) {
		wishlistDao.insertWishlist(wishlist);
	}

	@Override
	public void deleteWishlist(Wishlist wishlist) {
		wishlistDao.deleteWishlist(wishlist);
	}

}
