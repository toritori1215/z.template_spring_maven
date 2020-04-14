package com.itwill.hotel.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.hotel.domain.Product;
import com.itwill.hotel.domain.Wishlist;
import com.itwill.hotel.mapper.WishlistMapper;

@Repository
public class WishlistDaoImpl implements WishlistDao {

	@Autowired
	private WishlistMapper wishlistMapper;
	
	@Override
	public List<Product> selectWishlist(int mNo) {
		List<Product> wishlistList = wishlistMapper.selectWishlist(mNo);
		return wishlistList;
	}

	@Override
	public void insertWishlist(Wishlist wishlist) {
		wishlistMapper.insertWishlist(wishlist);
	}

	@Override
	public void deleteWishlist(Wishlist wishlist) {
		wishlistMapper.deleteWishlist(wishlist);
	}

}
