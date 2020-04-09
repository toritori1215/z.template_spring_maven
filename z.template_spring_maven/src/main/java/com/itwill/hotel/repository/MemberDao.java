package com.itwill.hotel.repository;

import java.util.List;

import com.itwill.hotel.domain.Member;

public interface MemberDao {

	public List<Member> selectAll();

	public Member selectByNo(Integer mNo);

	public Member selectById(String mId);
	
	public void insertMember(Member member);

}
