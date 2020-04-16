package com.itwill.hotel.repository;

import java.util.HashMap;
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
	public Member selectOne(String mId) {
		Member member = memberMapper.selectOne(mId);
		return member;
	}
	
	@Override
	public int checkIdExist(String mId) {
		return memberMapper.checkIdExist(mId);
	}
	
	@Override
	public int insertMember(Member member) {
		return memberMapper.insertMember(member);
	}

	@Override
	public int deleteInactiveMember() {
		return memberMapper.deleteInactiveMember();
	}

	@Override
	public int removeMember(String mId) {
		return memberMapper.removeMember(mId);
	}

	@Override
	public int deleteMember(String mId) {
		return memberMapper.deleteMember(mId);
	}

	@Override
	public int setTempPasswordNull(String mId) {
		return memberMapper.setTempPasswordNull(mId);
	}

	@Override
	public int updatePassword(HashMap hashMap) {
		return memberMapper.updatePassword(hashMap);
	}

	@Override
	public int checkExist(HashMap hashMap) {
		return memberMapper.checkExist(hashMap);
	}
	
	@Override
	public String getTempPassword() {
		return memberMapper.getTempPassword();
	}

	@Override
	public int updateTempPassword(HashMap hashMap) {
		return memberMapper.updateTempPassword(hashMap);
	}

	@Override
	public int checkExist2(HashMap hashMap) {
		return memberMapper.checkExist2(hashMap);
	}
	
	@Override
	public int reActivateAccount(String mId) {
		return memberMapper.reActivateAccount(mId);
	}

	@Override
	public int updateMember(HashMap hashMap) {
		return memberMapper.updateMember(hashMap);
	}

	@Override
	public int updateEmail(HashMap hashMap) {
		return memberMapper.updateEmail(hashMap);
	}

}
