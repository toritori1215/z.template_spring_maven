package com.itwill.hotel.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.hotel.domain.Jumun;
import com.itwill.hotel.domain.JumunDetail;
import com.itwill.hotel.domain.JumunDetailInvoice;
import com.itwill.hotel.repository.JumunDao;

@Service
public class JumunServiceImpl implements JumunService {
	
	@Autowired
	private JumunDao jumunDao;

	
	/************ jumun ************/
	@Override
	public List<Jumun> selectJumun(int mNo) {
		return jumunDao.selectJumun(mNo);
	}

	@Override
	public int selectRecentJumun(int mNo) {
		return jumunDao.selectRecentJumun(mNo);
	}

	@Override
	public Jumun selectJumunByNo(int jNo) {
		return jumunDao.selectJumunByNo(jNo);
	}

	@Override
	public int insertJumun(Jumun jumun) {
		return jumunDao.insertJumun(jumun);
	}

	@Override
	public int deleteJumunMember(int mNo) {
		return jumunDao.deleteJumunMember(mNo);
	}
	
	
	/************ jumun detail ************/
	@Override
	public int insertJumunDetail(JumunDetail jumunDetail) {
		return jumunDao.insertJumunDetail(jumunDetail);
	}

	@Override
	public JumunDetail selectJumunDetail(int jNo) {
		return jumunDao.selectJumunDetail(jNo);
	}
	
	@Override
	public List<JumunDetail> selectJumunDetailMember(int mNo) {
		return jumunDao.selectJumunDetailMember(mNo);
	}

	@Override
	public List<JumunDetail> selectJumunDetailCancelMember(int mNo) {
		return jumunDao.selectJumunDetailCancelMember(mNo);
	}

	@Override
	public int deleteJumunDetail(HashMap hashMap) {
		return jumunDao.deleteJumunDetail(hashMap);
	}

	@Override
	public int deleteJumunDetailCancel(HashMap hashMap) {
		return jumunDao.deleteJumunDetailCancel(hashMap);
	}

	@Override
	public JumunDetailInvoice selectOneJumunDetail(int jdNo) {
		return jumunDao.selectOneJumunDetail(jdNo);
	}

	@Override
	public JumunDetailInvoice selectOneJumunDetailCancel(int jdNo) {
		return jumunDao.selectOneJumunDetailCancel(jdNo);
	}	

	@Override
	public List<JumunDetailInvoice> selectJumunDetailOrderPage(int mNo) {
		return jumunDao.selectJumunDetailOrderPage(mNo);
	}

	@Override
	public List<JumunDetailInvoice> selectJumunDetailCancelOrderPage(int mNo) {
		return jumunDao.selectJumunDetailCancelOrderPage(mNo);
	}

	@Override
	public int insertJumunDetailCancel(JumunDetail jumunDetail) {
		return jumunDao.insertJumunDetailCancel(jumunDetail);
	}
	
}
