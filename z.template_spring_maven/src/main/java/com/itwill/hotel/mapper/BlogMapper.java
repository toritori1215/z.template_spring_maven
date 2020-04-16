package com.itwill.hotel.mapper;

import java.util.List;

import com.itwill.hotel.domain.Blog;

public interface BlogMapper {
	
	public List<Blog> selectAll();
	
	public Blog selectOne(int bNo);
	
	public int insertBlog(Blog blog);
	
	public int deleteBlog(int bNo);
	
	public int updateBlog(Blog blog);
}
