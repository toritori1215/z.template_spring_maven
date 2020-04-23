package com.itwill.hotel.domain;

import org.apache.ibatis.type.Alias;

@Alias(value = "ReviewRate")
public class ReviewRate {
	
	private int rTotRate1;
	private int rTotRate2;
	private int rTotRate3;
	private int rTotRate4;
	private int rTotRate;
	
	public ReviewRate() {
		// TODO Auto-generated constructor stub
	}

	public ReviewRate(int rTotRate1, int rTotRate2, int rTotRate3, int rTotRate4, int rTotRate) {
		super();
		this.rTotRate1 = rTotRate1;
		this.rTotRate2 = rTotRate2;
		this.rTotRate3 = rTotRate3;
		this.rTotRate4 = rTotRate4;
		this.rTotRate = rTotRate;
	}

	public int getrTotRate1() {
		return rTotRate1;
	}

	public void setrTotRate1(int rTotRate1) {
		this.rTotRate1 = rTotRate1;
	}

	public int getrTotRate2() {
		return rTotRate2;
	}

	public void setrTotRate2(int rTotRate2) {
		this.rTotRate2 = rTotRate2;
	}

	public int getrTotRate3() {
		return rTotRate3;
	}

	public void setrTotRate3(int rTotRate3) {
		this.rTotRate3 = rTotRate3;
	}

	public int getrTotRate4() {
		return rTotRate4;
	}

	public void setrTotRate4(int rTotRate4) {
		this.rTotRate4 = rTotRate4;
	}

	public int getrTotRate() {
		return rTotRate;
	}

	public void setrTotRate(int rTotRate) {
		this.rTotRate = rTotRate;
	}
	
}
