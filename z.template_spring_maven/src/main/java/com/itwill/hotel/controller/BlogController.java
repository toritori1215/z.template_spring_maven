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
	public String view(@RequestParam(value = "bNo") String bNo, 
						Model model) {
		Blog blogView = blogService.selectOneBlog(Integer.parseInt(bNo));
		model.addAttribute("blogView", blogView);
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
