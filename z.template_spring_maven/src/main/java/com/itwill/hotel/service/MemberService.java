package com.itwill.hotel.service;

import java.util.List;

import com.itwill.hotel.domain.Member;

public interface MemberService {

	public List<Member> selectAll();

	public Member selectByNo(Integer mNo);

	public Member selectById(String mId);
	
	public void insertMember(Member member);

}
