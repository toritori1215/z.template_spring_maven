package com.itwill.hotel.service;

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
	
	
	/****** Blog Review ******/
	@Override
	public List<BlogReview> selectAllBlogReviewDepth1() {
		return blogDao.selectAllBlogReviewDepth1();
	}
	@Override
	public List<BlogReview> selectAllBlogReviewDepth2() {
		return blogDao.selectAllBlogReviewDepth2();
	}
	@Override
	public List<BlogReview> selectAllBlogReviewDepth3() {
		return blogDao.selectAllBlogReviewDepth3();
	}
	
	@Override
	public BlogReview selectOneBlogReview(int brNo) {
		return blogDao.selectOneBlogReview(brNo);
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
