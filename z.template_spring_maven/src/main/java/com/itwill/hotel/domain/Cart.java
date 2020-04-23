package com.itwill.hotel.domain;

public class Cart {
	private int cNo;
	private int cProductQty;
	private int cProductTypePay;
	private String cCheckinTime;
	private String cCheckin;
	private String cCheckout;
	private String cPickupPos;
	private String cDropoffPos;
	private int cOrderCnt;
	private int mNo;
	private int pNo;
	private String pName;
	private int pPrice;
	
	public Cart() {
		
	}
	
	public Cart(int cNo, int cProductQty, int cProductTypePay, String cCheckinTime, String cCheckin, String cCheckout,
			String cPickupPos, String cDropoffPos, int cOrderCnt, int mNo, int pNo, int pPrice) {
		super();
		this.cNo = cNo;
		this.cProductQty = cProductQty;
		this.cProductTypePay = cProductTypePay;
		this.cCheckinTime = cCheckinTime;
		this.cCheckin = cCheckin;
		this.cCheckout = cCheckout;
		this.cPickupPos = cPickupPos;
		this.cDropoffPos = cDropoffPos;
		this.cOrderCnt = cOrderCnt;
		this.mNo = mNo;
		this.pNo = pNo;
		this.pPrice = pPrice;
	}

	public int getcNo() {
		return cNo;
	}

	public void setcNo(int cNo) {
		this.cNo = cNo;
	}

	public int getcProductQty() {
		return cProductQty;
	}

	public void setcProductQty(int cProductQty) {
		this.cProductQty = cProductQty;
	}

	public int getcProductTypePay() {
		return cProductTypePay;
	}

	public void setcProductTypePay(int cProductTypePay) {
		this.cProductTypePay = cProductTypePay;
	}

	public String getcCheckinTime() {
		return cCheckinTime;
	}

	public void setcCheckinTime(String cCheckinTime) {
		this.cCheckinTime = cCheckinTime;
	}

	public String getcCheckin() {
		return cCheckin;
	}

	public void setcCheckin(String cCheckin) {
		this.cCheckin = cCheckin;
	}

	public String getcCheckout() {
		return cCheckout;
	}

	public void setcCheckout(String cCheckout) {
		this.cCheckout = cCheckout;
	}

	public String getcPickupPos() {
		return cPickupPos;
	}

	public void setcPickupPos(String cPickupPos) {
		this.cPickupPos = cPickupPos;
	}

	public String getcDropoffPos() {
		return cDropoffPos;
	}

	public void setcDropoffPos(String cDropoffPos) {
		this.cDropoffPos = cDropoffPos;
	}

	public int getcOrderCnt() {
		return cOrderCnt;
	}

	public void setcOrderCnt(int cOrderCnt) {
		this.cOrderCnt = cOrderCnt;
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

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public int getpPrice() {
		return pPrice;
	}

	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}

	@Override
	public String toString() {
		return "Cart [cNo=" + cNo + ", cProductQty=" + cProductQty + ", cProductTypePay=" + cProductTypePay
				+ ", cCheckinTime=" + cCheckinTime + ", cCheckin=" + cCheckin + ", cCheckout=" + cCheckout
				+ ", cPickupPos=" + cPickupPos + ", cDropoffPos=" + cDropoffPos + ", cOrderCnt=" + cOrderCnt + ", mNo="
				+ mNo + ", pNo=" + pNo + ", pName=" + pName + ", pPrice=" + pPrice + "]";
	}
	
}
