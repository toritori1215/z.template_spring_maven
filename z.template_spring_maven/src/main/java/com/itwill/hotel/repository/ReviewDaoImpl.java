package com.itwill.hotel.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.itwill.hotel.domain.Review;
import com.itwill.hotel.mapper.ReviewMapper;


@Repository
public class ReviewDaoImpl implements ReviewDao {

	@Autowired
	private ReviewMapper reviewMapper;

	@Override
	public List<Review> selectAll() {
		List<Review> reviewList = reviewMapper.selectAll();
		return reviewList;
	}
	
	@Override
	public Review selectOne(Integer rNo) {
		Review reviewView = reviewMapper.selectOne(rNo);
		return reviewView;
	}

	@Override
	public int reviewCount(int pNo) {
		return reviewMapper.reviewCount(pNo);
	}

	@Override
	public int reviewWrite(Review review) {
		int rowCount = reviewMapper.reviewWrite(review);
		return rowCount;
	}
	@Override
	public int deleteReview(Integer rNo) {
		int deleteReview = reviewMapper.deleteReview(rNo);
		return deleteReview;
	}
	@Override
	public int updateReview(Review updateReview) {
		int updateRowCount = reviewMapper.updateReview(updateReview);
		return updateRowCount;
	}
	
}
