package com.itwill.hotel.repository;

import java.util.List;

import com.itwill.hotel.domain.BlogReview;

public interface BlogReviewDao {
	
	public List<BlogReview> selectAll();
	
	public BlogReview selectOne(int brNo);
	
	public int insertBlogReview(BlogReview blogReview);
	
	public int deleteBlogReview(int brNo);
	
	public int updateBlogReview(int brNo);
	
}
