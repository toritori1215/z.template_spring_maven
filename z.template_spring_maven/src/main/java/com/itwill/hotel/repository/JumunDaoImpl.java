package com.itwill.hotel.repository;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.hotel.domain.Jumun;
import com.itwill.hotel.domain.JumunDetail;
import com.itwill.hotel.mapper.JumunMapper;

@Repository
public class JumunDaoImpl implements JumunDao {
	
	@Autowired
	private JumunMapper jumunMapper;

	@Override
	public List<Jumun> selectJumun(int mNo) {
		return jumunMapper.selectJumun(mNo);
	}

	@Override
	public int selectRecentJumun(int mNo) {
		return jumunMapper.selectRecentJumun(mNo);
	}

	@Override
	public int insertJumun(Jumun jumun) {
		return jumunMapper.insertJumun(jumun);
	}

	@Override
	public int cancelJumun(HashMap hashMap) {
		return jumunMapper.cancelJumun(hashMap);
	}

	@Override
	public int insertJumunDetail(JumunDetail jumunDetail) {
		return jumunMapper.insertJumunDetail(jumunDetail);
	}
	
}
