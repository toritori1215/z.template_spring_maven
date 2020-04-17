package com.itwill.hotel.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.hotel.domain.Blog;
import com.itwill.hotel.domain.BlogReview;
import com.itwill.hotel.service.BlogService;

@Controller
public class BlogController {
	
	@Autowired
	private BlogService blogService;
	
	@RequestMapping(value = "/blog_right_sidebar")
	public String blogList(Model model) {
		List<Blog> blogList = blogService.selectAllBlog();
		model.addAttribute("blogList", blogList);
		return "forward:blog_right_sidebar.jsp";
	}
	
	@RequestMapping(value = "/blog_post_right_sidebar")
	public String viewBlog(@RequestParam(value = "bNo") String bNo, 
							Model model) {
		Blog blogView = blogService.selectOneBlog(Integer.parseInt(bNo));
		List<BlogReview> blogReviewList1 = blogService.selectAllBlogReviewDepth1();
		List<BlogReview> blogReviewList2 = blogService.selectAllBlogReviewDepth2();
		List<BlogReview> blogReviewList3 = blogService.selectAllBlogReviewDepth3();
		int size = blogReviewList1.size();
		model.addAttribute("blogView", blogView);
		model.addAttribute("blogReviewList1", blogReviewList1);
		model.addAttribute("blogReviewList2", blogReviewList2);
		model.addAttribute("blogReviewList3", blogReviewList3);
		model.addAttribute("size", size);
		return "forward:blog_post_right_sidebar.jsp";
	}
	
	@RequestMapping(value = "/blog_insert", method = RequestMethod.POST)
	public String insert(HttpServletRequest request, Blog blog, Model model) {
		int insertBlog = blogService.insertBlog(blog);
		List<Blog> blogList = blogService.selectAllBlog();
		model.addAttribute("blogList", blogList);
		return "blog_right_sidebar";
	}
	
	
	
	public String delete(@RequestParam(value = "bNo") String bNo, Model model) {
		int deleteBlog = blogService.deleteBlog(Integer.parseInt(bNo));
		List<Blog> blogList = blogService.selectAllBlog();
		model.addAttribute("blogList", blogList);
		return "forward:blog_right_sidebar";
		
	}
	
	
}
