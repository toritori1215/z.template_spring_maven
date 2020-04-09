package com.itwill.hotel.domain;

import java.util.Date;

public class Blog {
	private int bNo; 			// 회원번호
	private String bTitle; 		// 블로그 제목
	private Date bDate; 		// 블로그 작성 날짜
	private String bContent; 	// 블로그 내용
	private int bReadCount; 	// 블로그 조회수
	private String bCategory; 	// 블로그 카테고리
	private int mNo; 			// 회원 번호

	public Blog() {

	}

	public Blog(int bNo, String bTitle, Date bDate, String bContent, int bReadCount, String bCategory, int mNo) {
		super();
		this.bNo = bNo;
		this.bTitle = bTitle;
		this.bDate = bDate;
		this.bContent = bContent;
		this.bReadCount = bReadCount;
		this.bCategory = bCategory;
		this.mNo = mNo;

	}

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
		this.bNo = bNo;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public Date getbDate() {
		return bDate;
	}

	public void setbDate(Date bDate) {
		this.bDate = bDate;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public int getbReadCount() {
		return bReadCount;
	}

	public void setbReadCount(int bReadCount) {
		this.bReadCount = bReadCount;
	}

	public String getbCategory() {
		return bCategory;
	}

	public void setbCategory(String bCategory) {
		this.bCategory = bCategory;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

}