package com.itwill.hotel.mapper;

import java.util.List;

import com.itwill.hotel.domain.Review;


public interface ReviewMapper {
	
	public List<Review> selectAll();
	
	public Review selectOne(Integer rNo);
	
	public int reviewWrite(Review review);
	
	public int deleteReview(Integer rNo);
	
	public int updateReview(Review updateReview);
}
