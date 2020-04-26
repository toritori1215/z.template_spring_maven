package com.itwill.hotel.repository;

import java.util.HashMap;
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
		return blogMapper.selectAllBlog();
	}

	@Override
	public List<Blog> selectBlogByType(String type) {
		return blogMapper.selectBlogByType(type);
	}

	@Override
	public Blog selectOneBlog(int bNo) {
		return blogMapper.selectOneBlog(bNo);
	}

	@Override
	public List<Blog> selectRecentBlog() {
		return blogMapper.selectRecentBlog();
	}

	@Override
	public int insertBlog(HashMap hashMap) {
		return blogMapper.insertBlog(hashMap);
	}

	@Override
	public int updateBlog(HashMap hashMap) {
		return blogMapper.updateBlog(hashMap);
	}

	@Override
	public int updateBlogImg(HashMap hashMap) {
		return blogMapper.updateBlogImg(hashMap);
	}

	@Override
	public int deleteBlog(HashMap hashMap) {
		return blogMapper.deleteBlog(hashMap);
	}

	@Override
	public int deleteBlogMember(int mNo) {
		return blogMapper.deleteBlogMember(mNo);
	}
	
}
