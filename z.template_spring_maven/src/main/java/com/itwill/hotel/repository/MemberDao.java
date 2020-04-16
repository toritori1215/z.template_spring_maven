package com.itwill.hotel.repository;

import java.util.HashMap;
import java.util.List;

import com.itwill.hotel.domain.Member;

public interface MemberDao {

	public List<Member> selectAll();
	
	public Member selectOne(String mId);
	
	public int checkIdExist(String mId);
	
	public int insertMember(Member member);
	
	public int deleteInactiveMember();
	
	public int removeMember(String mId);
	
	public int deleteMember(String mId);
	
	public int setTempPasswordNull(String mId);
	
	public int updatePassword(HashMap hashMap);
	
	public String getTempPassword();
	
	public int checkExist(HashMap hashMap);

	public int updateTempPassword(HashMap hashMap);
	
	public int checkExist2(HashMap hashMap);
	
	public int reActivateAccount(String mId);

	public int updateMember(HashMap hashMap);
	
	public int updateEmail(HashMap hashMap);

}
