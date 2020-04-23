package com.itwill.hotel.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.hotel.domain.Jumun;
import com.itwill.hotel.repository.JumunDao;

@Service
public class JumunServiceImpl implements JumunService {
	
	@Autowired
	private JumunDao jumunDao;

	@Override
	public List<Jumun> selectJumun(int mNo) {
		return jumunDao.selectJumun(mNo);
	}

	@Override
	public int insertJumun(Jumun jumun) {
		return jumunDao.insertJumun(jumun);
	}

	@Override
	public int cancelJumun(HashMap hashMap) {
		return jumunDao.cancelJumun(hashMap);
	}

}
