package com.itwill.hotel.service;

import java.util.List;

import com.itwill.hotel.domain.Review;

public interface ReviewService {
	
	public List<Review> selectAll();
	
	public Review selectOne(Integer rNo);
	
	public int reviewCount(int pNo);
	
	public int createReview(Review review);
	
	public int deleteReview(Integer rNo);
	
	public int updateReview (Review reviewUpdate);
	
}
