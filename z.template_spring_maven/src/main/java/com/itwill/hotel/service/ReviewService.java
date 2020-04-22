package com.itwill.hotel.service;

import java.util.List;

import com.itwill.hotel.domain.Review;
import com.itwill.hotel.domain.ReviewRate;

public interface ReviewService {
	
	public List<Review> selectAll(int pNo);
	
	public ReviewRate selectRate(int pNo);
	
	public int insertReview(Review review);
	
	public int updateReview(Review updateReview);

	public int deleteReview(int rNo);
	
}
