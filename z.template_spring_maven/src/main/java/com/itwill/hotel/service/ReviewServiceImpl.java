package com.itwill.hotel.service;

import java.util.HashMap;
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
	public int updateReview(HashMap hashMap) {
		return reviewDao.updateReview(hashMap);
	}

	@Override
	public int deleteReview(HashMap hashMap) {
		return reviewDao.deleteReview(hashMap);
	}

	@Override
	public Review selectOne(HashMap hashMap) {
		return reviewDao.selectOne(hashMap);
	}

	@Override
	public int ifExisted(HashMap hashMap) {
		return reviewDao.ifExisted(hashMap);
	}

	@Override
	public int deleteReviewMember(int mNo) {
		return reviewDao.deleteReviewMember(mNo);
	}

}
