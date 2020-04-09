package com.itwill.hotel.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.itwill.hotel.domain.Member;
import com.itwill.hotel.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/member_login_form")
	public String memberLogin() {
		return "member_login";
	}
	
	@RequestMapping(value = "/member_login_action", method=RequestMethod.POST)
	public String memberLoginAction(@ModelAttribute(name="fMember") Member member,
									//@RequestParam(value = "mId") String mId,
									//@RequestParam(value = "mPassword") String mPassword,
									HttpSession httpSession,
									Model model) {
		String mId = member.getmId();
		memberService.deleteInactiveMember(mId);
		if (memberService.checkIdExist(mId) != 1) {
			model.addAttribute("msg1", "아이디가 존재하지 않습니다.");
			return "member_login_form";
		}
		Member tempMember = memberService.selectOne(mId);
		if (member.getmPassword().equals(tempMember.getmPassword())) {
			if (tempMember.getmIfactive() == 0) {
				model.addAttribute("msg3", "아이디 휴면상태야");
				return "member_login_form";
			} else {
				// 로그인
				return "common_404";
			}
		} else if (tempMember.getmTempPassword() != null && 
				   tempMember.getmTempPassword() != "" && 
				   member.getmPassword().equals(tempMember.getmTempPassword())) {
			if (tempMember.getmIfactive() == 0) {
				model.addAttribute("msg3", "아이디 휴면상태야");
				return "member_login_form";
			} else {
				// 로그인
				return "common_404";
			}
		} else {
			model.addAttribute("msg2", "비밀번호 아니잖아");
			return "member_login_form";
		}
	}
	
	@RequestMapping (value = "/member_insert_form")
	public String memberInsertForm() {
		return "member_register";
	}
	
	@RequestMapping (value = "/member_insert")
	public String memberInsert(@RequestParam(value = "mId") String mId,
							   @RequestParam(value = "mPassword") String mPassword,
							   @RequestParam(value = "mPassword2") String mPassword2,
							   @RequestParam(value = "mFirstName") String mFirstName,
							   @RequestParam(value = "mLastName") String mLastName,
							   @RequestParam(value = "mEmail") String mEmail,
							   @RequestParam(value = "mTel") String mTel,
							   @RequestParam(value = "mBirth") String mBirth,
							   Model model) {
		
		if (mId == "" || mPassword == "" || mPassword2 == "" || mFirstName == "" || 
			mLastName == "" || mEmail == "" || mTel == "" || mBirth == "" || 
			mId == null || mPassword == null || mPassword2 == null || mFirstName == null || 
			mLastName == null || mEmail == null || mTel == null || mBirth == null) {
			model.addAttribute("msg1", "빈 칸에 값을 입력하십시오.");
			return "member_register"; 
		} else if (mPassword.equals(mPassword2)) {
			Member member = new Member(0, mId, mFirstName, mLastName, mPassword, mTel, mEmail, Integer.parseInt(mBirth),
										null, null, null, null, null, null, null, 1);
			int insertRowCount = memberService.insertMember(member);
			if (insertRowCount == 1) {
				return "member_login_form";
			} else {
				return "common_404";
			}
		} else {
			Member member = new Member(0, mId, mFirstName, mLastName, mPassword, mTel, mEmail, Integer.parseInt(mBirth),
										null, null, null, null, null, null, null, 1);
			model.addAttribute(member);
			model.addAttribute("msg2", "비밀번호와 확인 비밀번호가 일치하지 않습니다");
			return "member_register";
		}
		// 아이디, 이메일, 연락처 중복체크
	}

}
