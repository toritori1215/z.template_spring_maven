package com.itwill.hotel.domain;



import org.apache.ibatis.type.Alias;

@Alias("Review")
public class Review {
 
	private int rNo;
	private Integer rRate1;
	private Integer rRate2;
	private Integer rRate3;
	private Integer rRate4;
	private String rContent;
	private String rRegDate;
	private int mNo;
	private int pNo;

	private String mId;
	private String mImg;
	private String pType;
	private int rRate;
	
	public Review() {
		// TODO Auto-generated constructor stub
	}

	public Review(int rNo, Integer rRate1, Integer rRate2, Integer rRate3, Integer rRate4, String rContent, String rRegDate,
			int mNo, int pNo, String mId, String mImg, String pType, int rRate) {
		super();
		this.rNo = rNo;
		this.rRate1 = rRate1;
		this.rRate2 = rRate2;
		this.rRate3 = rRate3;
		this.rRate4 = rRate4;
		this.rContent = rContent;
		this.rRegDate = rRegDate;
		this.mNo = mNo;
		this.pNo = pNo;
		this.mId = mId;
		this.mImg = mImg;
		this.pType = pType;
		this.rRate = rRate;
	}

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
	}

	public Integer getrRate1() {
		return rRate1;
	}

	public void setrRate1(Integer rRate1) {
		this.rRate1 = rRate1;
	}

	public Integer getrRate2() {
		return rRate2;
	}

	public void setrRate2(Integer rRate2) {
		this.rRate2 = rRate2;
	}

	public Integer getrRate3() {
		return rRate3;
	}

	public void setrRate3(Integer rRate3) {
		this.rRate3 = rRate3;
	}

	public Integer getrRate4() {
		return rRate4;
	}

	public void setrRate4(Integer rRate4) {
		this.rRate4 = rRate4;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	public String getrRegDate() {
		return rRegDate;
	}

	public void setrRegDate(String rRegDate) {
		this.rRegDate = rRegDate;
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

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getmImg() {
		return mImg;
	}

	public void setmImg(String mImg) {
		this.mImg = mImg;
	}

	public String getpType() {
		return pType;
	}

	public void setpType(String pType) {
		this.pType = pType;
	}

	public int getrRate() {
		return rRate;
	}

	public void setrRate(int rRate) {
		this.rRate = rRate;
	}

}