package com.itwill.hotel.service;

import java.util.List;

import com.itwill.hotel.domain.Wishlist;

public interface WishlistService {

	public List<Wishlist> selectWishlist(Integer mNo);

	public void insertWishlist(Wishlist wishlist);
	
	public void deleteWishlist(Wishlist wishlist);
	
}
