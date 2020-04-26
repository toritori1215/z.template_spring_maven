package com.itwill.hotel.repository;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.hotel.domain.Jumun;
import com.itwill.hotel.domain.JumunDetail;
import com.itwill.hotel.domain.JumunDetailInvoice;
import com.itwill.hotel.mapper.JumunMapper;

@Repository
public class JumunDaoImpl implements JumunDao {
	
	@Autowired
	private JumunMapper jumunMapper;

	
	/************ jumun ************/
	@Override
	public List<Jumun> selectJumun(int mNo) {
		return jumunMapper.selectJumun(mNo);
	}

	@Override
	public Jumun selectJumunByNo(int jNo) {
		return jumunMapper.selectJumunByNo(jNo);
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
	public int deleteJumunMember(int mNo) {
		return jumunMapper.deleteJumunMember(mNo);
	}
	
	
	/************ jumun detail ************/	
	@Override
	public int insertJumunDetail(JumunDetail jumunDetail) {
		return jumunMapper.insertJumunDetail(jumunDetail);
	}
	
	@Override
	public JumunDetail selectJumunDetail(int jNo) {
		return jumunMapper.selectJumunDetail(jNo);
	}

	@Override
	public List<JumunDetail> selectJumunDetailMember(int mNo) {
		return jumunMapper.selectJumunDetailMember(mNo);
	}

	@Override
	public List<JumunDetail> selectJumunDetailCancelMember(int mNo) {
		return jumunMapper.selectJumunDetailCancelMember(mNo);
	}

	@Override
	public int deleteJumunDetail(HashMap hashMap) {
		return jumunMapper.deleteJumunDetail(hashMap);
	}

	@Override
	public int deleteJumunDetailCancel(HashMap hashMap) {
		return jumunMapper.deleteJumunDetailCancel(hashMap);
	}

	@Override
	public JumunDetailInvoice selectOneJumunDetail(int jdNo) {
		return jumunMapper.selectOneJumunDetail(jdNo);
	}

	@Override
	public JumunDetailInvoice selectOneJumunDetailCancel(int jdNo) {
		return jumunMapper.selectOneJumunDetailCancel(jdNo);
	}

	@Override
	public List<JumunDetailInvoice> selectJumunDetailOrderPage(int mNo) {
		return jumunMapper.selectJumunDetailOrderPage(mNo);
	}

	@Override
	public List<JumunDetailInvoice> selectJumunDetailCancelOrderPage(int mNo) {
		return jumunMapper.selectJumunDetailCancelOrderPage(mNo);
	}

	@Override
	public int insertJumunDetailCancel(JumunDetail jumunDetail) {
		return jumunMapper.insertJumunDetailCancel(jumunDetail);
	}
	
}
