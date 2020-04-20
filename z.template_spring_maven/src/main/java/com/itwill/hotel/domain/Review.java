package com.itwill.hotel.domain;



import org.apache.ibatis.type.Alias;

@Alias("Review")
public class Review {
 
	private Integer rNo;
	private String rFirst;
	private String rLast;
	private String rEmail;
	private Integer rCleanliness;
	private Integer rComfort;
	private Integer rPrice;
	private Integer rQuality;
	private String rContent;
	private String rRegdate;
	private String pType;
	private Integer pNo;
	private Integer mId;
	private String mNo;
	private Integer rRate;
	
	
	public Integer getrRate() {
		return rRate;
	}

	public void setrRate(Integer rRate) {
		this.rRate = rRate;
	}

	public Review(Integer rNo, String rFirst, String rLast, String rEmail, Integer rCleanliness, Integer rComfort,
			Integer rPrice, Integer rQuality, String rContent, String rRegdate, String pType, Integer pNo, Integer mId,
			String mNo  ) {
		super();
		this.rNo = rNo;
		this.rFirst = rFirst;
		this.rLast = rLast;
		this.rEmail = rEmail;
		this.rCleanliness = rCleanliness;
		this.rComfort = rComfort;
		this.rPrice = rPrice;
		this.rQuality = rQuality;
		this.rContent = rContent;
		this.rRegdate = rRegdate;
		this.pType = pType;
		this.pNo = pNo;
		this.mId = mId;
		this.mNo = mNo;
		
	}

	public Review() {
		super();
	}

	public Integer getrNo() {
		return rNo;
	}

	public void setrNo(Integer rNo) {
		this.rNo = rNo;
	}

	public String getrFirst() {
		return rFirst;
	}

	public void setrFirst(String rFirst) {
		this.rFirst = rFirst;
	}

	public String getrLast() {
		return rLast;
	}

	public void setrLast(String rLast) {
		this.rLast = rLast;
	}

	public String getrEmail() {
		return rEmail;
	}

	public void setrEmail(String rEmail) {
		this.rEmail = rEmail;
	}

	public Integer getrCleanliness() {
		return rCleanliness;
	}

	public void setrCleanliness(Integer rCleanliness) {
		this.rCleanliness = rCleanliness;
	}

	public Integer getrComfort() {
		return rComfort;
	}

	public void setrComfort(Integer rComfort) {
		this.rComfort = rComfort;
	}

	public Integer getrPrice() {
		return rPrice;
	}

	public void setrPrice(Integer rPrice) {
		this.rPrice = rPrice;
	}

	public Integer getrQuality() {
		return rQuality;
	}

	public void setrQuality(Integer rQuality) {
		this.rQuality = rQuality;
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

	public String getpType() {
		return pType;
	}

	public void setpType(String pType) {
		this.pType = pType;
	}

	public Integer getpNo() {
		return pNo;
	}

	public void setpNo(Integer pNo) {
		this.pNo = pNo;
	}

	public Integer getmId() {
		return mId;
	}

	public void setmId(Integer mId) {
		this.mId = mId;
	}

	public String getmNo() {
		return mNo;
	}

	public void setmNo(String mNo) {
		this.mNo = mNo;
	}

	@Override
	public String toString() {
		return "Review [rNo=" + rNo + ", rFirst=" + rFirst + ", rLast=" + rLast + ", rEmail=" + rEmail
				+ ", rCleanliness=" + rCleanliness + ", rComfort=" + rComfort + ", rPrice=" + rPrice + ", rQuality="
				+ rQuality + ", rContent=" + rContent + ", rRegdate=" + rRegdate + ", pType=" + pType + ", pNo=" + pNo
				+ ", mId=" + mId + ", mNo=" + mNo + ", rRate=" + rRate + "]";
	}

	

	
	

}