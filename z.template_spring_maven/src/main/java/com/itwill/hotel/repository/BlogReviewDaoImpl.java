package com.itwill.hotel.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.hotel.domain.BlogReview;
import com.itwill.hotel.mapper.BlogReviewMapper;

@Repository
public class BlogReviewDaoImpl implements BlogReviewDao {
	
	@Autowired
	private BlogReviewMapper BlogReviewMapper;
	
	@Override
	public List<BlogReview> selectAll() {
		List<BlogReview>blogReviewList = BlogReviewMapper.selectAll();
		return blogReviewList;
	}

	@Override
	public BlogReview selectOne(int brNo) {
		BlogReview blogReview = BlogReviewMapper.selectOne(brNo);
		return blogReview;
	}

	@Override
	public int insertBlogReview(BlogReview blogReview) {
		int insertResult = BlogReviewMapper.insertBlogReview(blogReview);
		return insertResult;
	}

	@Override
	public int deleteBlogReview(int brNo) {
		int deleteResult = BlogReviewMapper.deleteBlogReview(brNo);
		return deleteResult;
	}

	@Override
	public int updateBlogReview(BlogReview blogReview) {
		int updateResult = BlogReviewMapper.updateBlogReview(blogReview);
		return updateResult;
	}

	
}
