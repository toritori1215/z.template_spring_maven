package com.itwill.hotel.mapper;

import java.util.HashMap;
import java.util.List;

import com.itwill.hotel.domain.Review;
import com.itwill.hotel.domain.ReviewRate;


public interface ReviewMapper {
	
	public List<Review> selectAll(int pNo);
	
	public ReviewRate selectRate(int pNo);
	
	public int insertReview(Review review);
	
	public int updateReview(HashMap hashMap);

	public int deleteReview(HashMap hashMap);
	
	public Review selectOne(HashMap hashMap);
	
	public int ifExisted(HashMap hashMap);
	
	public int deleteReviewMember(int mNo);
	
}
