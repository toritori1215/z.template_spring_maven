package com.itwill.hotel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.hotel.domain.Review;
import com.itwill.hotel.domain.ReviewRate;
import com.itwill.hotel.repository.ReviewDao;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewDao reviewDao;

	@Override
	public List<Review> selectAll(int pNo) {
		return reviewDao.selectAll(pNo);
	}

	@Override
	public ReviewRate selectRate(int pNo) {
		return reviewDao.selectRate(pNo);
	}

	@Override
	public int insertReview(Review review) {
		return reviewDao.insertReview(review);
	}

	@Override
	public int updateReview(Review updateReview) {
		return reviewDao.updateReview(updateReview);
	}

	@Override
	public int deleteReview(int rNo) {
		return reviewDao.deleteReview(rNo);
	}

}
