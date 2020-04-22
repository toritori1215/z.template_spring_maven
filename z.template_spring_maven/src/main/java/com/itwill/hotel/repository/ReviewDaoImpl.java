package com.itwill.hotel.repository;

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
	public int updateReview(Review updateReview) {
		return reviewMapper.updateReview(updateReview);
	}

	@Override
	public int deleteReview(int rNo) {
		return reviewMapper.deleteReview(rNo);
	}
	
}
