package com.itwill.hotel.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.hotel.domain.Blog;
import com.itwill.hotel.domain.BlogReview;
import com.itwill.hotel.domain.Member;
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
	public String viewBlog(@RequestParam(value = "bNo", defaultValue = "") String bNo, 
							Model model) {
		if (bNo == null || bNo.trim().equals("")) {
			return "forward:blog_right_sidebar";
		}
		
		Blog blogView = blogService.selectOneBlog(Integer.parseInt(bNo));
		List<BlogReview> blogReviewList = blogService.selectBlogReview(Integer.parseInt(bNo));
		int size = blogReviewList.size();
		model.addAttribute("blogView", blogView);
		model.addAttribute("blogReviewList", blogReviewList);
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
	
	
	@RequestMapping(value = "/blog_delete")
	public String delete(@RequestParam(value = "bNo") String bNo, Model model) {
		int deleteBlog = blogService.deleteBlog(Integer.parseInt(bNo));
		if (deleteBlog == 1) {
			model.addAttribute("deleteBlogMsg", "삭제되었습니다.");
			return "forward:blog_right_sidebar";
		} else {
			model.addAttribute("deleteBlogMsg", "삭제 실패하였습니다.");
			return "common_404";
		}
	}
	
	@RequestMapping(value = "/blog_update")
	public String update(@RequestParam(value = "blog") Blog blog, Model model) {
		int updateBlog = blogService.updateBlog(blog);
		if (updateBlog == 1) {
			model.addAttribute("updateBlogMsg", "수정되었습니다.");
			return "forward:blog_post_right_sidebar";
		} else {
			model.addAttribute("updateBlogMsg", "수정 실패하였습니다.");
			return "common_404";
		}
	}
	
	
}
