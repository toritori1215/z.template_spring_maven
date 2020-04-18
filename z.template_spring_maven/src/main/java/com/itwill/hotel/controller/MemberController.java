package com.itwill.hotel.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.hotel.domain.Member;
import com.itwill.hotel.domain.Product;
import com.itwill.hotel.service.MemberService;
import com.itwill.hotel.service.WishlistService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private WishlistService wishlistService;
	
	@RequestMapping(value = "/main")
	public String mainPage() {
		memberService.deleteInactiveMember();
		return "main_page";
	}
	
	@RequestMapping(value = "/member_login_form")
	public String memberLogin() {
		memberService.deleteInactiveMember();
		return "member_login";
	}
	
	@RequestMapping(value = "/member_login_action", method=RequestMethod.POST)
	public String memberLoginAction(@RequestParam(value = "mId") String mId,
									@RequestParam(value = "mPassword") String mPassword,
									@RequestParam(value = "mCheck", defaultValue = "") String mCheck,
									HttpSession session,
									Model model) {
		memberService.deleteInactiveMember();
		if (mId.trim().equals("") || mPassword.trim().equals("") || mId == null || mPassword == null ) {
			model.addAttribute("msg", "빈 칸에 값을 입력하십시오.");
			return "member_login"; 
		}
		if (memberService.checkIdExist(mId) == 0) {
			// 아이디 없음
			model.addAttribute("msg", "아이디가 존재하지 않습니다.");
			return "member_login";
		} else {
			Member tempMember = memberService.selectOne(mId);
			if (tempMember.getmTempPassword() != null && 
				tempMember.getmTempPassword() != "" && 
				mPassword.equals(tempMember.getmTempPassword())) {
				if (tempMember.getmIfActive() == 1) {
					// password-change로 이동
					session.setAttribute("sUser", tempMember);
					model.addAttribute("alertMsg", "임시비밀번호로 등록 하셨습니다.\n 비밀번호 변경 추천드립니다");
					List<Product> wishlistList = wishlistService.selectWishlist(tempMember.getmNo());
					session.setAttribute("wishlistList", wishlistList);
					model.addAttribute("inputMsg", 2);
					return "member_admin";
				} else {
					// 아이디 휴면
					model.addAttribute("msg", "아이디가 휴면상태입니다");
					return "member_login";
				}
			} else if (mPassword.equals(tempMember.getmPassword())) {
				if (tempMember.getmIfActive() == 1) {
					// 로그인
					memberService.setTempPasswordNull(mId);
					if (mCheck != null && !mCheck.trim().equals("")) {
						// 쿠키
					} else {
						session.setAttribute("sUser", tempMember);
					}
					return "main_page";
				} else {
					// 아이디 휴면
					model.addAttribute("msg", "아이디가 휴면상태입니다");
					return "member_login";
				}
			} else {
				// 비밀번호 불일치
				model.addAttribute("msg", "비밀번호가 일치하지 않습니다");
				return "member_login";
			}
		}
	}
	
	@RequestMapping(value = "/member_logout")
	public String memberLogout(HttpSession session) {
		session.invalidate();
		return "main_page";
	}
	
	@RequestMapping(value = "/member_insert_form")
	public String memberInsertForm() {
		memberService.deleteInactiveMember();
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
		memberService.deleteInactiveMember();
		model.addAttribute("mId", mId);
		model.addAttribute("mFirstName", mFirstName);
		model.addAttribute("mLastName", mLastName);
		model.addAttribute("mEmail", mEmail);
		model.addAttribute("mTel", mTel);
		model.addAttribute("mBirth", mBirth);
		if (mId.trim().equals("") || mPassword.trim().equals("") || mPassword2.trim().equals("") || mFirstName.trim().equals("") || 
			mLastName.trim().equals("") || mEmail.trim().equals("") || mTel.trim().equals("") || mBirth.trim().equals("") || 
			mId == null || mPassword == null || mPassword2 == null || mFirstName == null || 
			mLastName == null || mEmail == null || mTel == null || mBirth == null) {
			model.addAttribute("msg", "빈 칸에 값을 입력하십시오.");
			return "member_register"; 
		}
		if (mPassword.equals(mPassword2)) {
			if (memberService.checkIdExist(mId) == 1) {
				model.addAttribute("msg", "이미 사용중인 아이디 입니다");
				return "member_register";
			} else if (memberService.checkTelExist(mTel) == 1) {
				model.addAttribute("msg", "이미 사용중인 전화번호 입니다");
				return "member_register";
			} else if (memberService.checkEmailExist(mEmail) == 1) {
				model.addAttribute("msg", "이미 사용중인 이메일 입니다");
				return "member_register";
			} else {
				Member member = new Member(0, mId, mFirstName, mLastName, mPassword, mTel, mEmail, Integer.parseInt(mBirth),
						null, null, null, null, null, null, null, 1);
				if (memberService.insertMember(member) == 1) {
					return "member_login";
				} else {
					return "common_404";
				}
			}
		} else {
			model.addAttribute("msg", "비밀번호와 확인 비밀번호가 일치하지 않습니다");
			return "member_register";
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
		memberService.deleteInactiveMember();
		model.addAttribute("mId", mId);
		model.addAttribute("mFirstName", mFirstName);
		model.addAttribute("mLastName", mLastName);
		model.addAttribute("mTel", mTel);
		model.addAttribute("mEmail", mEmail);
		model.addAttribute("mBirth", mBirth);
		if (mId.trim().equals("") || mFirstName.trim().equals("") || mLastName.trim().equals("") || mTel.trim().equals("") || 
				mEmail.trim().equals("") || mBirth.trim().equals("") || mId == null || mFirstName == null || 
				mLastName == null || mTel == null || mEmail == null || mBirth == null) {
			model.addAttribute("msg2", "빈 칸에 값을 입력하십시오");
			return "member_login";
		}
		HashMap hashMap = new HashMap();
		hashMap.put("mId", mId);
		hashMap.put("mFirstName", mFirstName);
		hashMap.put("mLastName", mLastName);
		hashMap.put("mTel", mTel);
		hashMap.put("mEmail", mEmail);
		hashMap.put("mBirth", mBirth);
		if (memberService.forgetPasswordCheck(hashMap) == 1) {
			HashMap hashMap1 = new HashMap();
			hashMap1.put("mId", mId);
			hashMap1.put("mTempPassword", memberService.getTempPassword());
			memberService.updateTempPassword(hashMap1);
			Member member = memberService.selectOne(mId);
			model.addAttribute("msg1", member.getmTempPassword());
			return "member_login";
		} else {
			model.addAttribute("msg2", "입력하신 정보와 일치하는 계정이 없습니다");
			return "member_login";
		}
	}
	
	@RequestMapping(value = "/remove_member")
	public String memberRemove(HttpSession session, Model model) {
		Member member = (Member) session.getAttribute("sUser");
		int rowCount = memberService.removeMember(member.getmId());
		if (rowCount == 1) {
			model.addAttribute("removeMsg", "아이디 비활성화 되었습니다. "
											+ "정보는 30일 동안 보존됩니다."
											+ "30일 안에 계정 활성화 가능합니다."
											+ "본 계정은 30일 후 자동적으로 삭제 됩니다!");
		} else {
			return "common_404";
		}
		return "main_page";
	}
	
	@RequestMapping(value = "/reactive_account")
	public String reactiveAccountAction(@RequestParam(value = "mId") String mId, 
										  @RequestParam(value = "mPassword") String mPassword,
										  @RequestParam(value = "mFirstName") String mFirstName, 
										  @RequestParam(value = "mLastName") String mLastName, 
										  @RequestParam(value = "mTel") String mTel, 
										  @RequestParam(value = "mEmail") String mEmail, 
										  @RequestParam(value = "mBirth") String mBirth, 
										  Model model) {
		memberService.deleteInactiveMember();
		model.addAttribute("mId", mId);
		model.addAttribute("mFirstName", mFirstName);
		model.addAttribute("mLastName", mLastName);
		model.addAttribute("mTel", mTel);
		model.addAttribute("mEmail", mEmail);
		model.addAttribute("mBirth", mBirth);
		if (mId.trim().equals("") || mPassword.trim().equals("") || mFirstName.trim().equals("") || mLastName.trim().equals("") || mTel.trim().equals("") || 
				mEmail.trim().equals("") || mBirth.trim().equals("") || mId == null || mPassword == null || mFirstName == null || 
				mLastName == null || mTel == null || mEmail == null || mBirth == null) {
			model.addAttribute("msg3", "빈 칸에 값을 입력하십시오");
			return "member_login";
		}
		HashMap hashMap = new HashMap();
		hashMap.put("mId", mId);
		hashMap.put("mPassword", mPassword);
		hashMap.put("mFirstName", mFirstName);
		hashMap.put("mLastName", mLastName);
		hashMap.put("mTel", mTel);
		hashMap.put("mEmail", mEmail);
		hashMap.put("mBirth", mBirth);
		if (memberService.ifActive(hashMap) == 0) {
			if (memberService.reactiveAccountCheck(hashMap) == 1) {
				HashMap hashMap1 = new HashMap();
				memberService.reActivateAccount(mId);
				model.addAttribute("msg4", "당신의 계정이 활성화 되었습니다");
				return "member_login";
			} else {
				model.addAttribute("msg3", "입력하신 정보와 일치하는 계정이 없습니다");
				return "member_login";
			}
		} else {
			model.addAttribute("msg4", "당신의 계정은 이미 활성화 상태입니다");
			return "member_login";
		}
	}

	@RequestMapping(value = "/member_update_password")
	public String memberUpdatePassword(HttpSession session, 
										@RequestParam(value = "new_password") String new_password, 
										Model model) {
		Member member = (Member) session.getAttribute("sUser");
		HashMap hashMap = new HashMap();
		hashMap.put("mId", member.getmId());
		hashMap.put("mPassword", new_password);
		int rowCount = memberService.updatePassword(hashMap);
		if (rowCount == 1) {
			model.addAttribute("alertMsg", "비밀번호 변경 성공했습니다");
		} else {
			model.addAttribute("alertMsg", "비밀번호 변경 실패했습니다");
		}
		session.setAttribute("sUser", memberService.selectOne(member.getmId()));
		model.addAttribute("inputMsg", "2");
		return "member_admin";
	}
	
	@RequestMapping(value = "/member_update_email")
	public String memberUpdateEmail(HttpSession session, 
									@RequestParam(value = "new_email") String new_email, 
									Model model) {
		Member member = (Member) session.getAttribute("sUser");
		HashMap hashMap = new HashMap();
		hashMap.put("mEmail", new_email);
		hashMap.put("mNo", member.getmNo());
		int rowCount = memberService.updateEmail(hashMap);
		if (rowCount == 1) {
			model.addAttribute("alertMsg", "이메일 변경 성공했습니다");
		} else {
			model.addAttribute("alertMsg", "이메일 변경 실패했습니다");
		}
		session.setAttribute("sUser", memberService.selectOne(member.getmId()));
		model.addAttribute("inputMsg", "2");
		return "member_admin";
	}
	
	@RequestMapping(value = "/member_delete")
	public String memberDelete(HttpSession session, 
								@RequestParam(value = "option_1", defaultValue = "off") String ifSave, 
								Model model) {
		Member member = (Member) session.getAttribute("sUser");
		System.out.println(ifSave);
		if (ifSave.equals("on")) {
			int rowCount = memberService.removeMember(member.getmId());
			if (rowCount == 1) {
				model.addAttribute("DeleteMsg", "계정 비활성화 성공했습니다.\n" + 
												"정보는 30일 동안 보존됩니다.\n" + 
												"30일 안에 계정 활성화 가능합니다.\n" + 
												"본 계정은 30일 후 자동적으로 삭제 됩니다!");
				session.invalidate();
			} else {
				model.addAttribute("DeleteMsg", "계정 비활성화 실패했습니다");
			}
		} else if (ifSave.equals("off")) {
			int rowCount = memberService.deleteMember(member.getmId());
			if (rowCount == 1) {
				model.addAttribute("DeleteMsg", "계정 삭제 성공했습니다");
				session.invalidate();
			} else {
				model.addAttribute("DeleteMsg", "계정 삭제 실패했습니다");
			}
		}
		return "main_page";
	};
	
}
