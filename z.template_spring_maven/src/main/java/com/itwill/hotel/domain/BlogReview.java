package com.itwill.hotel.domain;

import java.util.Date;

public class BlogReview {
	private int brNo; 			// 블로그 댓글 번호
	private String brDate; 		// 블로그 댓글 작성 날짜
	private String brContent; 	// 블로그 댓글 내용
	private int mNo; 			// 회원 번호
	private int bNo; 			// 블로그 번호

	private Integer brStep; 		// 댓글 정렬 순서
	private Integer brGroup; 		// 원글과 댓글을 같은 그룹으로 묶음
	private Integer brDepth; 		// 몇 번째 댓글인가 판단하는 값

	public BlogReview() {

	}

	public BlogReview(int brNo, String brDate, String brContent, int mNo, int bNo, Integer brStep, Integer brGroup, Integer brDepth) {
		super();
		this.brNo = brNo;
		this.brDate = brDate;
		this.brContent = brContent;
		this.mNo = mNo;
		this.bNo = bNo;
		this.brStep = brStep;
		this.brGroup = brGroup;
		this.brDepth = brDepth;
	}

	public int getBrNo() {
		return brNo;
	}

	public void setBrNo(int brNo) {
		this.brNo = brNo;
	}

	public String getBrDate() {
		return brDate;
	}

	public void setBrDate(String brDate) {
		this.brDate = brDate;
	}

	public String getBrContent() {
		return brContent;
	}

	public void setBrContent(String brContent) {
		this.brContent = brContent;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
		this.bNo = bNo;
	}

	public Integer getBrStep() {
		return brStep;
	}

	public void setBrStep(Integer brStep) {
		this.brStep = brStep;
	}

	public Integer getBrGroup() {
		return brGroup;
	}

	public void setBrGroup(Integer brGroup) {
		this.brGroup = brGroup;
	}

	public Integer getBrDepth() {
		return brDepth;
	}

	public void setBrDepth(Integer brDepth) {
		this.brDepth = brDepth;
	}

}
