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
	public List<Blog> selectBlogByType(String type) {
		return blogDao.selectBlogByType(type);
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
	public int updateBlog(HashMap hashMap) {
		return blogDao.updateBlog(hashMap);
	}

	@Override
	public int updateBlogImg(HashMap hashMap) {
		return blogDao.updateBlogImg(hashMap);
	}

	@Override
	public int deleteBlog(HashMap hashMap) {
		return blogDao.deleteBlog(hashMap);
	}

	@Override
	public int deleteBlogMember(int mNo) {
		return blogDao.deleteBlogMember(mNo);
	}
	
}
