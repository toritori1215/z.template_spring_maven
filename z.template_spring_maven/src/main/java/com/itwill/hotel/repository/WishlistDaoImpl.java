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
	public int insertWishlist(Wishlist wishlist) {
		return wishlistMapper.insertWishlist(wishlist);
	}

	@Override
	public int deleteWishlist(Wishlist wishlist) {
		return wishlistMapper.deleteWishlist(wishlist);
	}

	@Override
	public int deleteWishlistMember(int mNo) {
		return wishlistMapper.deleteWishlistMember(mNo);
	}

}
