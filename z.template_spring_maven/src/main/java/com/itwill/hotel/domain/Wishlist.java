package com.itwill.hotel.domain;

import org.apache.ibatis.type.Alias;

@Alias("Wishlist")
public class Wishlist {

	private int mNo;
	private int pNo;
	
	public Wishlist() {
		
	}

	public Wishlist(int mNo, int pNo) {
		super();
		this.mNo = mNo;
		this.pNo = pNo;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

}

