package com.itwill.hotel.mapper;

import java.util.HashMap;
import java.util.List;

import com.itwill.hotel.domain.Jumun;

public interface JumunMapper {
	
	public List<Jumun> selectJumun(int mNo);
	
	public int insertJumun(Jumun jumun);
	
	public int cancelJumun(HashMap hashMap);
	
}
