package com.itwill.hotel.repository;

import java.util.HashMap;
import java.util.List;

import com.itwill.hotel.domain.Jumun;

public interface JumunDao {
	
	public List<Jumun> selectJumun(int mNo);
	
	public int insertJumun(Jumun jumun);
	
	public int cancelJumun(HashMap hashMap);
	
}
