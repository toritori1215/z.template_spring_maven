package com.itwill.hotel.service;

import java.util.HashMap;
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
	public int checkTelExist(String mTel) {
		return memberDao.checkTelExist(mTel);
	}
	
	@Override
	public int checkEmailExist(String mEmail) {
		return memberDao.checkEmailExist(mEmail);
	}

	@Override
	public int deleteInactiveMember() {
		return memberDao.deleteInactiveMember();
	}

	@Override
	public int removeMember(String mId) {
		return memberDao.removeMember(mId);
	}

	@Override
	public int deleteMember(String mId) {
		return memberDao.deleteMember(mId);
	}

	@Override
	public int setTempPasswordNull(String mId) {
		return memberDao.setTempPasswordNull(mId);
	}

	@Override
	public int updatePassword(HashMap hashMap) {
		return memberDao.updatePassword(hashMap);
	}

	@Override
	public String getTempPassword() {
		return memberDao.getTempPassword();
	}
	
	@Override
	public int forgetPasswordCheck(HashMap hashMap) {
		return memberDao.forgetPasswordCheck(hashMap);
	}

	@Override
	public int updateTempPassword(HashMap hashMap) {
		return memberDao.updateTempPassword(hashMap);
	}

	@Override
	public int reactiveAccountCheck(HashMap hashMap) {
		return memberDao.reactiveAccountCheck(hashMap);
	}

	@Override
	public int reActivateAccount(String mId) {
		return memberDao.reActivateAccount(mId);
	}

	@Override
	public int ifActive(HashMap hashMap) {
		return memberDao.ifActive(hashMap);
	}

	@Override
	public int updateEmail(HashMap hashMap) {
		return memberDao.updateEmail(hashMap);
	}

	@Override
	public int updateMember(HashMap hashMap) {
		return memberDao.updateMember(hashMap);
	}

	@Override
	public int updateImg(HashMap hashMap) {
		return memberDao.updateImg(hashMap);
	}

}
