package com.itwill.hotel.domain;

public class Cart {
	private int mNo;
	private int cProductQty;
	private int cProductTypePay;
	private String cCheckinTime;
	private String cCheckin;
	private String cCheckout;
	private String cPickupPos;
	private String cDropoffPos;
	private int cOrderCnt;
	private int pNo;
	
	public Cart() {
		
	}
	
	public Cart(int mNo, int cProductQty, int cProductTypePay, String cCheckinTime, String cCheckin, String cCheckout,
				String cPickupPos, String cDropoffPos, int cOrderCnt, int pNo) {
		this.mNo = mNo;
		this.cProductQty = cProductQty;
		this.cProductTypePay = cProductTypePay;
		this.cCheckinTime = cCheckinTime;
		this.cCheckin = cCheckin;
		this.cCheckout = cCheckout;
		this.cPickupPos = cPickupPos;
		this.cDropoffPos = cDropoffPos;
		this.cOrderCnt = cOrderCnt;
		this.pNo = pNo;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
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

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	@Override
	public String toString() {
		return "Cart [mNo=" + mNo + ", cProductQty=" + cProductQty + ", cProductTypePay=" + cProductTypePay
				+ ", cCheckinTime=" + cCheckinTime + ", cCheckin=" + cCheckin + ", cCheckout=" + cCheckout
				+ ", cPickupPos=" + cPickupPos + ", cDropoffPos=" + cDropoffPos + ", cOrderCnt=" + cOrderCnt + ", pNo="
				+ pNo + "]";
	}
	
}
