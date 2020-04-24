package com.itwill.hotel.service;

import java.util.HashMap;
import java.util.List;

import com.itwill.hotel.domain.Jumun;
import com.itwill.hotel.domain.JumunDetail;

public interface JumunService {
	
	public List<Jumun> selectJumun(int mNo);
	
	public int selectRecentJumun(int mNo);
	
	public int insertJumun(Jumun jumun);
	
	public int cancelJumun(HashMap hashMap);
	
	public int insertJumunDetail(JumunDetail jumunDetail);
	
}
