package com.itwill.hotel.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.itwill.hotel.domain.Blog;
import com.itwill.hotel.domain.BlogReview;
import com.itwill.hotel.repository.BlogDao;

@Service
public class BlogServiceImpl implements BlogService {
	
	@Autowired
	private BlogDao blogDao;
	
	/****** Blog ******/
	@Override
	public List<Blog> selectAllBlog() {
		return blogDao.selectAllBlog();
	}

	@Override
	public Blog selectOneBlog(int bNo) {
		return blogDao.selectOneBlog(bNo);
	}

	@Override
	public List<Blog> selectRecentBlog() {
		return blogDao.selectRecentBlog();
	}

	@Override
	public int insertBlog(HashMap hashMap) {
		return blogDao.insertBlog(hashMap);
	}

	@Override
	public int deleteBlog(HashMap hashMap) {
		return blogDao.deleteBlog(hashMap);
	}

	@Override
	public int updateBlog(HashMap hashMap) {
		return blogDao.updateBlog(hashMap);
	}
	
	
	/****** Blog Review ******/
	@Override
	public List<BlogReview> selectBlogReview(int bNo) {
		return blogDao.selectBlogReview(bNo);
	}
	
	@Override
	public int insertBlogReview(BlogReview blogReview) {
		return blogDao.insertBlogReview(blogReview);
	}
	
	@Override
	public int deleteBlogReview(int brNo) {
		return blogDao.deleteBlogReview(brNo);
	}
	
	@Override
	public int updateBlogReview(BlogReview blogReview) {
		return blogDao.updateBlogReview(blogReview);
	}
	
}
