package com.itwill.hotel.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.hotel.domain.Member;
import com.itwill.hotel.mapper.MemberMapper;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	private MemberMapper memberMapper;

	@Override
	public List<Member> selectAll() {
		List<Member> memberList = memberMapper.selectAll();
		return memberList;
	}

	@Override
	public Member selectByNo(Integer mNo) {
		Member member = memberMapper.selectByNo(mNo);
		return member;
	}

	@Override
	public Member selectById(String mId) {
		Member member = memberMapper.selectById(mId);
		return member;
	}

}
