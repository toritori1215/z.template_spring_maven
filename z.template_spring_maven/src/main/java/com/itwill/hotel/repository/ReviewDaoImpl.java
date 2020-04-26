package com.itwill.hotel.repository;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.itwill.hotel.domain.Review;
import com.itwill.hotel.domain.ReviewRate;
import com.itwill.hotel.mapper.ReviewMapper;


@Repository
public class ReviewDaoImpl implements ReviewDao {

	@Autowired
	private ReviewMapper reviewMapper;

	@Override
	public List<Review> selectAll(int pNo) {
		return reviewMapper.selectAll(pNo);
	}

	@Override
	public ReviewRate selectRate(int pNo) {
		return reviewMapper.selectRate(pNo);
	}

	@Override
	public int insertReview(Review review) {
		return reviewMapper.insertReview(review);
	}

	@Override
	public int updateReview(HashMap hashMap) {
		return reviewMapper.updateReview(hashMap);
	}

	@Override
	public int deleteReview(HashMap hashMap) {
		return reviewMapper.deleteReview(hashMap);
	}

	@Override
	public Review selectOne(HashMap hashMap) {
		return reviewMapper.selectOne(hashMap);
	}

	@Override
	public int ifExisted(HashMap hashMap) {
		return reviewMapper.ifExisted(hashMap);
	}

	@Override
	public int deleteReviewMember(int mNo) {
		return reviewMapper.deleteReviewMember(mNo);
	}
	
}
