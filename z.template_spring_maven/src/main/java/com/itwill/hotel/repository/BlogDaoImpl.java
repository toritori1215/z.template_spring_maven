package com.itwill.hotel.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.hotel.domain.Blog;
import com.itwill.hotel.domain.Member;
import com.itwill.hotel.mapper.BlogMapper;

@Repository
public class BlogDaoImpl implements BlogDao {
	
	@Autowired
	private BlogMapper blogMapper;
	
	@Override
	public List<Blog> selectAll() {
		List<Blog> blogList = blogMapper.selectAll();
		return blogList;
	}

	@Override
	public Blog selectOne(int bNo) {
		Blog blog = blogMapper.selectOne(bNo);
		return blog;
	}

	@Override
	public int insertBlog(Blog blog) {
		int insertResult = blogMapper.insertBlog(blog);
		return insertResult;
	}

	@Override
	public int deleteBlog(int bNo) {
		int deleteResult = blogMapper.deleteBlog(bNo);
		return deleteResult;
	}

	@Override
	public int updateBlog(int bNo) {
		int updateResult = blogMapper.updateBlog(bNo);
		return updateResult;
	}
	
	
	
}
