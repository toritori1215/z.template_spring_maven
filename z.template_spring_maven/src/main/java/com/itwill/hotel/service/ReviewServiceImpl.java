package com.itwill.hotel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.hotel.domain.Review;
import com.itwill.hotel.repository.ReviewDao;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewDao reviewDao;
	
	@Override
	public List<Review> selectAll() {
		return reviewDao.selectAll();
	}
	
	@Override
	public Review selectOne(Integer rNo) {
		return reviewDao.selectOne(rNo);
	}

	@Override
	public int reviewCount(int pNo) {
		return reviewDao.reviewCount(pNo);
	}

	@Override
	public int createReview(Review review) {
		return reviewDao.reviewWrite(review);
	}
	
	@Override
	public int deleteReview(Integer rNo) {
		return reviewDao.deleteReview(rNo);
	}
	
	@Override
	public int updateReview(Review reviewUpdate) {
		return reviewDao.updateReview(reviewUpdate);
	}

}
