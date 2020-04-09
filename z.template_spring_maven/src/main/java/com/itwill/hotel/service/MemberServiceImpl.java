package com.itwill.hotel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.itwill.hotel.domain.Member;
import com.itwill.hotel.repository.MemberDao;
import com.itwill.hotel.repository.MemberDaoImpl;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao memberDao;
	
	@Override
	public List<Member> selectAll() {
		return memberDao.selectAll();
	}

	@Override
	public Member selectByNo(Integer mNo) {
		return memberDao.selectByNo(mNo);
	}

	@Override
	public Member selectById(String mId) {
		return memberDao.selectById(mId);
	}
	
	@Override
	public void insertMember(Member member) {
		memberDao.insertMember(member);
	}

}
