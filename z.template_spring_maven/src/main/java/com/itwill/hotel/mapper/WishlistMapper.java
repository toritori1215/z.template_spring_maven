package com.itwill.hotel.mapper;

import java.util.List;

import com.itwill.hotel.domain.Product;
import com.itwill.hotel.domain.Wishlist;

public interface WishlistMapper {
	
	public List<Product> selectWishlist(Integer mNo);

	public int insertWishlist(Wishlist wishlist);
	
	public int deleteWishlist(Wishlist wishlist);
	
	public int deleteWishlistMember(int mNo);
	
}
