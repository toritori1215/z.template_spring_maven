package com.itwill.hotel.mapper;

import java.util.HashMap;
import java.util.List;

import com.itwill.hotel.domain.Jumun;
import com.itwill.hotel.domain.JumunDetail;
import com.itwill.hotel.domain.JumunDetailInvoice;

public interface JumunMapper {
	
	/************ jumun ************/
	public List<Jumun> selectJumun(int mNo);
	
	public Jumun selectJumunByNo(int jNo);
	
	public int selectRecentJumun(int mNo);
	
	public int insertJumun(Jumun jumun);	
	
	public int deleteJumunMember(int mNo);

	
	/************ jumun detail ************/
	public int insertJumunDetail(JumunDetail jumunDetail);

	public JumunDetail selectJumunDetail(int jNo);
	
	public List<JumunDetail> selectJumunDetailMember(int mNo);
	
	public List<JumunDetail> selectJumunDetailCancelMember(int mNo);
	
	public int deleteJumunDetail(HashMap hashMap);
	
	public int deleteJumunDetailCancel(HashMap hashMap);
	
	public JumunDetailInvoice selectOneJumunDetail(int jdNo);
	
	public JumunDetailInvoice selectOneJumunDetailCancel(int jdNo);
	
	public List<JumunDetailInvoice> selectJumunDetailOrderPage(int mNo);
	
	public List<JumunDetailInvoice> selectJumunDetailCancelOrderPage(int mNo);
	
	public int insertJumunDetailCancel(JumunDetail jumunDetail);
	
}
