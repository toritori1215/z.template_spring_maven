package com.itwill.hotel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.itwill.hotel.domain.Blog;
import com.itwill.hotel.repository.BlogDao;

@Service
public class BlogServiceImpl implements BlogService {
	
	@Autowired
	private BlogDao blogDao;
	
	@Override
	public List<Blog> selectAll() {
		return blogDao.selectAll();
	}

	@Override
	public Blog selectOne(int bNo) {
		return blogDao.selectOne(bNo);
	}

	@Override
	public int insertBlog(Blog blog) {
		
		return blogDao.insertBlog(blog);
	}

	@Override
	public int deleteBlog(int bNo) {
		
		return blogDao.deleteBlog(bNo);
	}

	@Override
	public int updateBlog(Blog blog) {
		
		return blogDao.updateBlog(blog);
	}
	
}
