package com.itwill.hotel.mapper;

import java.util.List;

import com.itwill.hotel.domain.Review;
import com.itwill.hotel.domain.ReviewRate;


public interface ReviewMapper {
	
	public List<Review> selectAll(int pNo);
	
	public ReviewRate selectRate(int pNo);
	
	public int insertReview(Review review);
	
	public int updateReview(Review updateReview);

	public int deleteReview(int rNo);
	
}
