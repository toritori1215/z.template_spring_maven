package com.itwill.hotel.repository;

import java.util.HashMap;
import java.util.List;

import com.itwill.hotel.domain.Jumun;
import com.itwill.hotel.domain.JumunDetail;
import com.itwill.hotel.domain.JumunDetailInvoice;

public interface JumunDao {
	
	/************ jumun ************/
	public List<Jumun> selectJumun(int mNo);
	
	public Jumun selectJumunByNo(int jNo);
	
	public int selectRecentJumun(int mNo);
	
	public int insertJumun(Jumun jumun);
	
	public int cancelJumun(HashMap hashMap);
	
	public int insertJumunDetail(JumunDetail jumunDetail);
	
	
	/************ jumun detail ************/
	public List<JumunDetailInvoice> selectJumunDetail(int jNo);
	
	
}
