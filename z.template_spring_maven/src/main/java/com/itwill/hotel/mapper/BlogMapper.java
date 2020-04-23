package com.itwill.hotel.mapper;

import java.util.HashMap;
import java.util.List;

import com.itwill.hotel.domain.Blog;
import com.itwill.hotel.domain.BlogReview;

public interface BlogMapper {
	
	/****** Blog ******/
	public List<Blog> selectAllBlog();
	
	public Blog selectOneBlog(int bNo);
	
	public List<Blog> selectRecentBlog();
	
	public int insertBlog(HashMap hashMap);
	
	public int deleteBlog(HashMap hashMap);
	
	public int updateBlog(HashMap hashMap);
	
	
	/****** Blog Review ******/
	public List<BlogReview> selectBlogReview(int bNo);
	
	public int insertBlogReview(BlogReview blogReview);
	
	public int deleteBlogReview(int brNo);
	
	public int updateBlogReview(BlogReview blogReview);

}
