package com.itwill.hotel.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

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
		List<Blog> recentBlogList = blogService.selectRecentBlog();
		model.addAttribute("blogList", blogList);
		model.addAttribute("recentBlogList", recentBlogList);
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
		List<Blog> recentBlogList = blogService.selectRecentBlog();
		int blogReviewSize = blogReviewList.size();
		model.addAttribute("blogView", blogView);
		model.addAttribute("blogReviewList", blogReviewList);
		model.addAttribute("recentBlogList", recentBlogList);
		model.addAttribute("blogReviewSize", blogReviewSize);
		return "forward:blog_post_right_sidebar.jsp";
	}
	
	@RequestMapping(value = "/blog_delete")
	@ResponseBody
	public String delete(@RequestParam(value = "bNo") String bNo, Model model) {
		/*
		if (deleteBlog == 1) {
			System.out.println("삭제성공");
			//model.addAttribute("deleteBlogMsg", "삭제되었습니다.");
			return "success";
			//List<Blog> blogList = blogService.selectAllBlog();
		} else {
			model.addAttribute("deleteBlogMsg", "삭제 실패하였습니다.");
			return "fail";
		}
		*/
		return "";
	}
	
	@RequestMapping(value = "/blog_update")
	public String update() {
		/*
		int updateBlog = blogService.updateBlog();
		if (updateBlog == 1) {
			model.addAttribute("updateBlogMsg", "수정되었습니다.");
			return "forward:blog_post_right_sidebar";
		} else {
			model.addAttribute("updateBlogMsg", "수정 실패하였습니다.");
			return "common_404";
		}
		*/
		return "";
	}
	
	@RequestMapping(value = "/blog_insert")
	public String upload(@RequestParam("write_blog_title") String title, 
							@RequestParam("write_blog_content") String content, 
							@RequestParam("Category") String category, 
							HttpSession session, Model model) {
		Member member = (Member) session.getAttribute("sUser");
		HashMap hashMap = new HashMap();
		hashMap.put("bTitle", title);
		hashMap.put("bContent", content);
		hashMap.put("bCategory", category);
		hashMap.put("mNo", member.getmNo());
		int rowCount = blogService.insertBlog(hashMap);
		return "forward:blog_right_sidebar";
	}
	
	@RequestMapping(value = "/blog_upload")
	public void upload(@RequestParam("write_blog_title") String title, 
						@RequestParam("write_blog_content") String content, 
						@RequestParam("bImg") String bImg, 
						HttpServletResponse response, HttpServletRequest request, 
						@RequestParam("Filedata") MultipartFile Filedata, 
						HttpSession session, Model model) {
	   	SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmssSSS");
	   	String newfilename = df.format(new Date()) + Integer.toString((int) (Math.random()*10)) + ".jpg";
	   	File f = new File("C:\\Users\\STU\\Desktop\\eclipse\\STS3-4.14.0\\spring-tool-suite-3.9.11.RELEASE-e4.14.0-win32-x86_64\\sts-bundle\\pivotal-tc-server\\instances\\base-instance\\wtpwebapps\\z.template_spring_maven\\resources\\z.SiliconVillage\\img\\blog\\" + newfilename);
	   	File f2 = new File("C:\\Users\\STU\\git\\z.template_spring_maven\\z.template_spring_maven\\src\\main\\webapp\\resources\\z.SiliconVillage\\img\\blog\\" + newfilename);
		try { 
			Filedata.transferTo(f);
			Filedata.transferTo(f2);
		   	response.getWriter().write(newfilename);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
	}
	
}
