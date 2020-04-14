package com.itwill.hotel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.hotel.domain.BlogReview;
import com.itwill.hotel.repository.BlogReviewDao;

@Service
public class BlogReviewServiceImpl {
	
	@Autowired
	private BlogReviewDao blogReviewDao;
	
	public List<BlogReview> selectAll() {
		return blogReviewDao.selectAll();
	}
	
	public BlogReview selectOne(int brNo) {
		return blogReviewDao.selectOne(brNo);
	}
	
	public int insertBlogReview(BlogReview blogReview) {
		return blogReviewDao.insertBlogReview(blogReview);
	}
	
	public int deleteBlogReview(int brNo) {
		return blogReviewDao.deleteBlogReview(brNo);
	}
	
	public int updateBlogReview(int brNo) {
		return blogReviewDao.updateBlogReview(brNo);
	}
	
}
