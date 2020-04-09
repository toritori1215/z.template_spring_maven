package com.itwill.hotel.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.hotel.domain.Member;
import com.itwill.hotel.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/member")
	public String member() {
		return "";
	}

	@RequestMapping(value = "/member_list")
	public String memberList(Model model) {
		List<Member> memberList = memberService.selectAll();
		model.addAttribute("memberList", memberList);
		return "";
	}
	
	@RequestMapping(value = "/member_view")
	public String memberView(@Param(value = "mNo") String mNo, Model model) {
		Member member = memberService.selectByNo(Integer.parseInt(mNo));
		model.addAttribute("member", member);
		return "";
	}
	
	@RequestMapping(value = "/member_login_form")
	public String memberLogin() {
		return "member_login";
	}
	
	@RequestMapping(value = "/member_login_action")
	public String memberLoginAction(HttpServletRequest request, HttpServletResponse response) {
		String mId = request.getParameter("id");
		String mPassword = request.getParameter("password");
		Member member = memberService.selectById(mId);
		String password = member.getmPassword();
		if (mId == "" || mId == null) {
			String msg = "empty id";
			return "";
		}
		if (mPassword == "" || mPassword == null) {
			String msg = "empty password";
			return "";
		}
		if (!mPassword.equals(password)) {
			String msg = "mass password";
			return "";
		}
		return "";
	}

}
