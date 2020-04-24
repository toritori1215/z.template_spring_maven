package com.itwill.hotel.repository;

import java.util.HashMap;
import java.util.List;

import com.itwill.hotel.domain.Blog;
import com.itwill.hotel.domain.BlogReview;

public interface BlogDao {
	
	/****** Blog ******/
	public List<Blog> selectAllBlog();
	
	public Blog selectOneBlog(int bNo);
	
	public List<Blog> selectRecentBlog();
	
	public int selectNewBlog();
	
	public int insertBlog(HashMap hashMap);
	
	public int insertBlogImg(String bImg);
	
	public int updateBlog(HashMap hashMap);
	
	public int updateBlogImg(HashMap hashMap);
	
	public int deleteBlog(HashMap hashMap);
	
}
