package com.itwill.hotel.repository;

import java.util.List;

import com.itwill.hotel.domain.Product;
import com.itwill.hotel.domain.Wishlist;

public interface WishlistDao {

	public List<Product> selectWishlist(int mNo);
	
	public int insertWishlist(Wishlist wishlist);
	
	public int deleteWishlist(Wishlist wishlist);
	
	public int deleteWishlistMember(int mNo);
	
}
