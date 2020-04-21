package com.itwill.hotel.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.hotel.domain.Blog;
import com.itwill.hotel.domain.BlogReview;
import com.itwill.hotel.domain.Member;
import com.itwill.hotel.mapper.BlogMapper;

@Repository
public class BlogDaoImpl implements BlogDao {
	
	@Autowired
	private BlogMapper blogMapper;
	
	/****** Blog ******/
	@Override
	public List<Blog> selectAllBlog() {
		List<Blog> blogList = blogMapper.selectAllBlog();
		return blogList;
	}

	@Override
	public Blog selectOneBlog(int bNo) {
		Blog blog = blogMapper.selectOneBlog(bNo);
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
	public int updateBlog(Blog blog) {
		int updateResult = blogMapper.updateBlog(blog);
		return updateResult;
	}
	
	
	/****** Blog Review ******/
	@Override
	public List<BlogReview> selectBlogReview(int bNo) {
		return blogMapper.selectBlogReview(bNo);
	}

	@Override
	public int insertBlogReview(BlogReview blogReview) {
		return blogMapper.insertBlogReview(blogReview);
	}

	@Override
	public int deleteBlogReview(int brNo) {
		return blogMapper.deleteBlogReview(brNo);
	}

	@Override
	public int updateBlogReview(BlogReview blogReview) {
		return blogMapper.updateBlogReview(blogReview);
	}
	
	
}
