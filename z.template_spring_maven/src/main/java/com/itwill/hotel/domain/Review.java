package com.itwill.hotel.domain;



import org.apache.ibatis.type.Alias;

@Alias("Review")
public class Review {
 
	private int rNo;
	private String rContent;
	private String rRegdate;
	private Integer rReadCount;
	private Double rRate;
	private Integer rGroup;
	private Integer rStep;
	private Integer rDepth;
	private int mNo;
	private String mId;
	
	public Review() {
		
	}

	public Review(int rNo, String rContent, String rRegdate, Integer rReadCount, Double rRate, Integer rGroup, Integer rStep,
			Integer rDepth, int mNo, String mId) {
		super();
		this.rNo = rNo;
		this.rContent = rContent;
		this.rRegdate = rRegdate;
		this.rReadCount = rReadCount;
		this.rRate = rRate;
		this.rGroup = rGroup;
		this.rStep = rStep;
		this.rDepth = rDepth;
		this.mNo = mNo;
		this.mId = mId;
	}

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	public String getrRegdate() {
		return rRegdate;
	}

	public void setrRegdate(String rRegdate) {
		this.rRegdate = rRegdate;
	}

	public Integer getrReadCount() {
		return rReadCount;
	}

	public void setrReadCount(Integer rReadCount) {
		this.rReadCount = rReadCount;
	}

	public Double getrRate() {
		return rRate;
	}

	public void setrRate(Double rRate) {
		this.rRate = rRate;
	}

	public Integer getrGroup() {
		return rGroup;
	}

	public void setrGroup(Integer rGroup) {
		this.rGroup = rGroup;
	}

	public Integer getrStep() {
		return rStep;
	}

	public void setrStep(Integer rStep) {
		this.rStep = rStep;
	}

	public Integer getrDepth() {
		return rDepth;
	}

	public void setrDepth(Integer rDepth) {
		this.rDepth = rDepth;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}
	
}