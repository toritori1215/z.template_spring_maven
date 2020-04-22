package com.itwill.hotel.mapper;

import java.util.List;

import com.itwill.hotel.domain.Blog;
import com.itwill.hotel.domain.BlogReview;

public interface BlogMapper {
	
	/****** Blog ******/
	public List<Blog> selectAllBlog();
	
	public Blog selectOneBlog(int bNo);
	
	public List<Blog> selectRecentBlog();
	
	public int insertBlog(Blog blog);
	
	public int deleteBlog(int bNo);
	
	public int updateBlog(Blog blog);
	
	
	/****** Blog Review ******/
	public List<BlogReview> selectBlogReview(int bNo);
	
	public int insertBlogReview(BlogReview blogReview);
	
	public int deleteBlogReview(int brNo);
	
	public int updateBlogReview(BlogReview blogReview);

}
