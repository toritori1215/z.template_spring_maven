package com.itwill.hotel.mapper;

import java.util.List;

import com.itwill.hotel.domain.Member;

public interface MemberMapper {
	
	public List<Member> selectAll();
	
	public Member selectByNo(Integer mNo);
	
	public Member selectById(String mId);
	
	public int checkIdExist(String mId);
	
	public int insertMember(Member member);
	
	public int deleteInactiveMember(String mId);
	
}
