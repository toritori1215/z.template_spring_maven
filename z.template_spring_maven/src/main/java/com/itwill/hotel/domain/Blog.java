package com.itwill.hotel.domain;

import org.apache.ibatis.type.Alias;

@Alias(value = "Blog")
public class Blog {
	private int bNo; 				// 불로그 번호
	private String bTitle; 			// 블로그 제목
	private String bDate; 			// 블로그 작성 날짜
	private String bContent; 		// 블로그 내용
	private Integer bReadCount; 	// 블로그 조회수
	private String bCategory; 		// 블로그 카테고리
	private String bImg;			// 블로그 이미지
	private int mNo; 				// 회원 번호
	
	
	public Blog() {
		// TODO Auto-generated constructor stub
	}

	public Blog(int bNo, String bTitle, String bDate, String bContent, Integer bReadCount, String bCategory, String bImg, 
			int mNo) {
		super();
		this.bNo = bNo;
		this.bTitle = bTitle;
		this.bDate = bDate;
		this.bContent = bContent;
		this.bReadCount = bReadCount;
		this.bCategory = bCategory;
		this.bImg = bImg;
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

	public String getbDate() {
		return bDate;
	}

	public void setbDate(String bDate) {
		this.bDate = bDate;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public Integer getbReadCount() {
		return bReadCount;
	}

	public void setbReadCount(Integer bReadCount) {
		this.bReadCount = bReadCount;
	}

	public String getbCategory() {
		return bCategory;
	}

	public void setbCategory(String bCategory) {
		this.bCategory = bCategory;
	}
	
	public String getbImg() {
		return bImg;
	}
	
	public void setbImg(String bImg) {
		this.bImg = bImg;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

}