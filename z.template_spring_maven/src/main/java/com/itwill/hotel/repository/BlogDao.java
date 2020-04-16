package com.itwill.hotel.repository;

import java.util.List;

import com.itwill.hotel.domain.Blog;

public interface BlogDao {
	
	public List<Blog> selectAll();
	
	public Blog selectOne(int bNo);
	
	public int insertBlog(Blog blog);
	
	public int deleteBlog(int bNo);
	
	public int updateBlog(Blog blog);
	
}
