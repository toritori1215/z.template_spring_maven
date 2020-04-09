package com.itwill.hotel.service;

import java.util.List;

import com.itwill.hotel.domain.Member;

public interface MemberService {

	public List<Member> selectAll();
	
	public Member selectOne(String mId);
	
	public int checkIdExist(String mId);
	
	public int insertMember(Member member);
	
	public int deleteInactiveMember(String mId);

}
