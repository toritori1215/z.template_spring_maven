package com.itwill.hotel.repository;

import java.util.List;

import com.itwill.hotel.domain.Review;


public interface ReviewDao {

	public List<Review> selectAll();

	public Review selectOne(Integer rNo);
	
	public int reviewCount(int pNo);
	
	public int reviewWrite(Review review);

	public int deleteReview(Integer rNo);
	
	public int updateReview(Review reviewUpdate);
}
