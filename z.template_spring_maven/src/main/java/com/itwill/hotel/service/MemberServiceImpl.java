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
	public Member selectOne(String mId) {
		return memberDao.selectOne(mId);
	}
	
	@Override
	public int checkIdExist(String mId) {
		return memberDao.checkIdExist(mId);
	}
	
	@Override
	public int insertMember(Member member) {
		return memberDao.insertMember(member);
	}

	@Override
	public int deleteInactiveMember(String mId) {
		return memberDao.deleteInactiveMember(mId);
	}

}
