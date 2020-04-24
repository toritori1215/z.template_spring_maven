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
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.itwill.hotel.domain.Blog;
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
		List<Blog> recentBlogList = blogService.selectRecentBlog();
		model.addAttribute("recentBlogList", recentBlogList);
		return "forward:blog_right_sidebar.jsp";
	}
	
	@RequestMapping(value = "/blog_post_right_sidebar")
	public String viewBlog(@RequestParam(value = "bNo", defaultValue = "") String bNo, 
							HttpSession session, Model model) {
		if (bNo == null || bNo.trim().equals("")) {
			return "forward:blog_right_sidebar";
		}
		Blog blog = blogService.selectOneBlog(Integer.parseInt(bNo));
		model.addAttribute("blog", blog);
		List<Blog> recentBlogList = blogService.selectRecentBlog();
		model.addAttribute("recentBlogList", recentBlogList);
		int sessionBno = Integer.parseInt(bNo);
		session.setAttribute("SessionBno", sessionBno);
		return "forward:blog_post_right_sidebar.jsp";
	}
	
	@RequestMapping(value = "/blog_insert")
	public String upload(@RequestParam(value = "write_blog_title") String title, 
							@RequestParam(value = "write_blog_content") String content, 
							@RequestParam(value = "Category") String category, 
							HttpSession session, Model model) {
		Member member = (Member) session.getAttribute("sUser");
		HashMap hashMap = new HashMap();
		hashMap.put("bTitle", title);
		hashMap.put("bContent", content);
		hashMap.put("bCategory", category);
		hashMap.put("mNo", member.getmNo());
		int rowCount = blogService.insertBlog(hashMap);
		int bNo = blogService.selectNewBlog();
		session.setAttribute("SessionBno", bNo);
		return "forward:blog_right_sidebar";
	}
	
	@RequestMapping(value = "/uploadBlog")
	public void uploadBlog(HttpServletResponse response, HttpServletRequest request, 
								@RequestParam("Filedata") MultipartFile Filedata, 
								HttpSession session, Model model) {
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		String newfilename = df.format(new Date()) + Integer.toString((int) (Math.random()*10)) + ".jpg";
		File f = new File("C:\\Users\\user\\Desktop\\JAVA\\Spring Tool Suite\\spring-tool-suite-3.9.6.RELEASE-e4.9.0-win32\\sts-bundle\\pivotal-tc-server\\instances\\base-instance\\wtpwebapps\\z.template_spring_maven\\resources\\z.SiliconVillage\\img\\blog\\" + newfilename);
		File f2 = new File("C:\\Users\\user\\git\\z.template_spring_maven\\z.template_spring_maven\\src\\main\\webapp\\resources\\z.SiliconVillage\\img\\blog\\" + newfilename);
		try {
			Filedata.transferTo(f);
			Filedata.transferTo(f2);
			response.getWriter().write(newfilename);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		HashMap hashMap = new HashMap();
		hashMap.put("bImg", newfilename);
		hashMap.put("bNo", session.getAttribute("SessionBno"));
		blogService.updateBlogImg(hashMap);
	}
	
	@RequestMapping(value = "/blog_update")
	public String update(@RequestParam(value = "write_blog_title") String bTitle, 
							@RequestParam(value = "write_blog_content") String bContent, 
							@RequestParam(value = "bNo") String bNo, Model model) {
		HashMap hashMap = new HashMap();
		hashMap.put("bTitle", bTitle);
		hashMap.put("bContent", bContent);
		hashMap.put("bNo", bNo);
		int rowCount = blogService.updateBlog(hashMap);
		if (rowCount == 1) {
			model.addAttribute("blogViewMsg", "수정 성공했습니다");
			return "forward:blog_post_right_sidebar";
		} else {
			return "common_404";
		}
	}
	
	@RequestMapping(value = "/blog_delete")
	public String delete(@RequestParam(value = "bNo") String bNo, 
							HttpSession session, Model model) {
		Member member = (Member) session.getAttribute("sUser");
		HashMap hashMap = new HashMap();
		hashMap.put("bNo", bNo);
		hashMap.put("mNo", member.getmNo());
		int rowCount = blogService.deleteBlog(hashMap);
		if (rowCount == 1) {
			model.addAttribute("blogMsg", "삭제 성공했습니다");
			return "forward:blog_right_sidebar";
		} else {
			return "common_404";
		}
	}
	
	@RequestMapping(value = "/uploadBlogView")
	public void uploadBlogView(HttpServletResponse response, HttpServletRequest request, 
						@RequestParam("Filedata") MultipartFile Filedata, 
						HttpSession session, Model model) {
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		String newfilename = df.format(new Date()) + Integer.toString((int) (Math.random()*10)) + ".jpg";
		File f = new File("C:\\Users\\user\\Desktop\\JAVA\\Spring Tool Suite\\spring-tool-suite-3.9.6.RELEASE-e4.9.0-win32\\sts-bundle\\pivotal-tc-server\\instances\\base-instance\\wtpwebapps\\z.template_spring_maven\\resources\\z.SiliconVillage\\img\\blog\\" + newfilename);
		File f2 = new File("C:\\Users\\user\\git\\z.template_spring_maven\\z.template_spring_maven\\src\\main\\webapp\\resources\\z.SiliconVillage\\img\\blog\\" + newfilename);
		try {
			Filedata.transferTo(f);
			Filedata.transferTo(f2);
			response.getWriter().write(newfilename);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		HashMap hashMap = new HashMap();
		hashMap.put("bImg", newfilename);
		hashMap.put("bNo", session.getAttribute("SessionBno"));
		blogService.updateBlogImg(hashMap);
	}
	
}
