package com.itwill.hotel.controller;

import java.util.HashMap;
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
	
	@RequestMapping(value = "/main")
	public String mainPage() {
		return "main_page";
	}
	
	@RequestMapping(value = "/member_login_form")
	public String memberLogin() {
		return "member_login";
	}
	
	@RequestMapping(value = "/member_login_action", method=RequestMethod.POST)
	public String memberLoginAction(@RequestParam(value = "mId") String mId,
									@RequestParam(value = "mPassword") String mPassword,
									HttpSession httpSession,
									Model model) {
		if (memberService.checkIdExist(mId) == 0) {
			// 아이디 없음
			model.addAttribute("msg", "아이디가 존재하지 않습니다.");
			return "forward:member_login_form";
		} else {
			Member tempMember = memberService.selectOne(mId);
			if (mPassword.equals(tempMember.getmPassword())) {
				if (tempMember.getmIfActive() == 1) {
					// 로그인
					memberService.setTempPasswordNull(mId);
					httpSession.setAttribute("sUser", tempMember);
					return "main_page";
				} else {
					// 아이디 휴면
					model.addAttribute("msg", "아이디가 휴면상태입니다");
					return "forward:member_login_form";
				}
			} else if (tempMember.getmTempPassword() != null && 
						tempMember.getmTempPassword() != "" && 
						mPassword.equals(tempMember.getmTempPassword())) {
				if (tempMember.getmIfActive() == 1) {
					// password-change로 이동
					model.addAttribute("sUser", tempMember);
					return "forward:member_change_password_form";
				} else {
					// 아이디 휴면
					model.addAttribute("msg", "아이디가 휴면상태입니다");
					return "forward:member_login_form";
				}
			} else {
				// 비밀번호 불일치
				model.addAttribute("msg", "비밀번호가 일치하지 않습니다");
				return "forward:member_login_form";
			}
		}
	}
	
	@RequestMapping(value = "/member_insert_form")
	public String memberInsertForm() {
		return "member_register";
	}
	
	@RequestMapping(value = "/member_insert")
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
			model.addAttribute("msg", "빈 칸에 값을 입력하십시오.");
			return "member_register"; 
		} else if (mPassword.equals(mPassword2)) {
			Member member = new Member(0, mId, mFirstName, mLastName, mPassword, mTel, mEmail, Integer.parseInt(mBirth),
										null, null, null, null, null, null, null, 1);
			int insertRowCount = memberService.insertMember(member);
			if (insertRowCount == 1) {
				return "member_login";
			} else {
				return "common_404";
			}
		} else {
			Member member = new Member(0, mId, mFirstName, mLastName, mPassword, mTel, mEmail, Integer.parseInt(mBirth),
										null, null, null, null, null, null, null, 1);
			model.addAttribute(member);
			model.addAttribute("msg", "비밀번호와 확인 비밀번호가 일치하지 않습니다");
			return "member_register";
		}
	}
	
	@RequestMapping(value = "/member_change_password_form")
	public String memberPasswordChangeForm() {
		return "member_change_password";
	}
	
	@RequestMapping(value = "/member_change_password_action")
	public String memberPasswordChangeAction(@RequestParam(value = "mId") String mId, 
											 @RequestParam(value = "mPassword") String mPassword, 
											 @RequestParam(value = "mPassword2") String mPassword2, 
											 Model model) {
		if (mPassword.equals(mPassword2)) {
			HashMap hashMap = new HashMap();
			hashMap.put("mId", mId);
			hashMap.put("mPassword", mPassword);
			memberService.updatePassword(hashMap);
			return "forward:member_login_form";			
		} else {
			model.addAttribute("msg", "비밀번호가 일치하지 않습니다");
			return "forward:member_change_password_form";
		}
	}
	
	@RequestMapping(value = "/member_get_temppassword")
	public String memberGetTemppassword(@RequestParam(value = "mId") String mId, 
										@RequestParam(value = "mFirstName") String mFirstName, 
										@RequestParam(value = "mLastName") String mLastName, 
										@RequestParam(value = "mTel") String mTel, 
										@RequestParam(value = "mEmail") String mEmail, 
										@RequestParam(value = "mBirth") String mBirth, 
										Model model) {
		model.addAttribute("mId", mId);
		model.addAttribute("mFirstName", mFirstName);
		model.addAttribute("mLastName", mLastName);
		model.addAttribute("mTel", mTel);
		model.addAttribute("mEmail", mEmail);
		model.addAttribute("mBirth", mBirth);
		if (mId == "" || mFirstName == "" || mLastName == "" || mTel == "" || 
				mEmail == "" || mBirth == "" || mId == null || mFirstName == null || 
				mLastName == null || mTel == null || mEmail == null || mBirth == null) {
			model.addAttribute("msg2", "빈 칸에 값을 입력하십시오");
			return "forward:member_login_form";
		}
		HashMap hashMap = new HashMap();
		hashMap.put("mId", mId);
		hashMap.put("mFirstName", mFirstName);
		hashMap.put("mLastName", mLastName);
		hashMap.put("mTel", mTel);
		hashMap.put("mEmail", mEmail);
		hashMap.put("mBirth", mBirth);
		if (memberService.checkExist(hashMap) == 1) {
			HashMap hashMap1 = new HashMap();
			hashMap1.put("mId", mId);
			hashMap1.put("mTempPassword", memberService.getTempPassword());
			memberService.updateTempPassword(hashMap1);
			Member member = memberService.selectOne(mId);
			model.addAttribute("msg1", member.getmTempPassword());
			return "forward:member_login_form";
		} else {
			model.addAttribute("msg2", "입력하신 정보와 일치하는 계정이 없습니다");
			return "forward:member_login_form";
		}
	}
	
	@RequestMapping(value = "/reactive_account")
	public String reactive_account_action(@RequestParam(value = "mId") String mId, 
										  @RequestParam(value = "mPassword") String mPassword,
										  @RequestParam(value = "mFirstName") String mFirstName, 
										  @RequestParam(value = "mLastName") String mLastName, 
										  @RequestParam(value = "mTel") String mTel, 
										  @RequestParam(value = "mEmail") String mEmail, 
										  @RequestParam(value = "mBirth") String mBirth, 
										  Model model) {
		model.addAttribute("mId", mId);
		model.addAttribute("mFirstName", mFirstName);
		model.addAttribute("mLastName", mLastName);
		model.addAttribute("mTel", mTel);
		model.addAttribute("mEmail", mEmail);
		model.addAttribute("mBirth", mBirth);
		if (mId == "" || mPassword == "" || mFirstName == "" || mLastName == "" || mTel == "" || 
				mEmail == "" || mBirth == "" || mId == null || mPassword == null || mFirstName == null || 
				mLastName == null || mTel == null || mEmail == null || mBirth == null) {
			model.addAttribute("msg3", "빈 칸에 값을 입력하십시오");
			return "forward:member_login_form";
		}
		HashMap hashMap = new HashMap();
		hashMap.put("mId", mId);
		hashMap.put("mPassword", mPassword);
		hashMap.put("mFirstName", mFirstName);
		hashMap.put("mLastName", mLastName);
		hashMap.put("mTel", mTel);
		hashMap.put("mEmail", mEmail);
		hashMap.put("mBirth", mBirth);
		if (memberService.checkExist2(hashMap) == 1) {
			HashMap hashMap1 = new HashMap();
			memberService.reActivateAccount(mId);
			model.addAttribute("msg4", "당신의 계정이 활성화 되었습니다");
			return "forward:member_login_form";
		} else {
			model.addAttribute("msg3", "입력하신 정보와 일치하는 계정이 없습니다");
			return "forward:member_login_form";
		}
	}

}
