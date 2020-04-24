package com.itwill.hotel.domain;

import org.apache.ibatis.type.Alias;

@Alias(value = "JumunDetail")
public class JumunDetail {
	private int jdNo;
	private String jdOrderDate;
	private String jdCheckout;
	private String jdOrderTime;
	private String jdPickupPos;
	private String jdDropoffPos;
	private int jdProductQty;
	private int jdProductTot;
	private int jdOrderQty;
	private int jdStayDate;
	private int jNo;
	private int pNo;
	
	public JumunDetail() {
		
	}

	public JumunDetail(int jdNo, String jdOrderDate, String jdCheckout, String jdOrderTime, String jdPickupPos,
			String jdDropoffPos, int jdProductQty, int jdProductTot, int jdOrderQty, int jdStayDate, int jNo, int pNo) {
		super();
		this.jdNo = jdNo;
		this.jdOrderDate = jdOrderDate;
		this.jdCheckout = jdCheckout;
		this.jdOrderTime = jdOrderTime;
		this.jdPickupPos = jdPickupPos;
		this.jdDropoffPos = jdDropoffPos;
		this.jdProductQty = jdProductQty;
		this.jdProductTot = jdProductTot;
		this.jdOrderQty = jdOrderQty;
		this.jdStayDate = jdStayDate;
		this.jNo = jNo;
		this.pNo = pNo;
	}

	public int getJdNo() {
		return jdNo;
	}

	public void setJdNo(int jdNo) {
		this.jdNo = jdNo;
	}

	public String getJdOrderDate() {
		return jdOrderDate;
	}

	public void setJdOrderDate(String jdOrderDate) {
		this.jdOrderDate = jdOrderDate;
	}

	public String getJdCheckout() {
		return jdCheckout;
	}

	public void setJdCheckout(String jdCheckout) {
		this.jdCheckout = jdCheckout;
	}

	public String getJdOrderTime() {
		return jdOrderTime;
	}

	public void setJdOrderTime(String jdOrderTime) {
		this.jdOrderTime = jdOrderTime;
	}

	public String getJdPickupPos() {
		return jdPickupPos;
	}

	public void setJdPickupPos(String jdPickupPos) {
		this.jdPickupPos = jdPickupPos;
	}

	public String getJdDropoffPos() {
		return jdDropoffPos;
	}

	public void setJdDropoffPos(String jdDropoffPos) {
		this.jdDropoffPos = jdDropoffPos;
	}

	public int getJdProductQty() {
		return jdProductQty;
	}

	public void setJdProductQty(int jdProductQty) {
		this.jdProductQty = jdProductQty;
	}

	public int getJdProductTot() {
		return jdProductTot;
	}

	public void setJdProductTot(int jdProductTot) {
		this.jdProductTot = jdProductTot;
	}

	public int getJdOrderQty() {
		return jdOrderQty;
	}

	public void setJdOrderQty(int jdOrderQty) {
		this.jdOrderQty = jdOrderQty;
	}

	public int getJdStayDate() {
		return jdStayDate;
	}

	public void setJdStayDate(int jdStayDate) {
		this.jdStayDate = jdStayDate;
	}

	public int getjNo() {
		return jNo;
	}

	public void setjNo(int jNo) {
		this.jNo = jNo;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	@Override
	public String toString() {
		return "JumunDetail [jdNo=" + jdNo + ", jdOrderDate=" + jdOrderDate + ", jdCheckout=" + jdCheckout
				+ ", jdOrderTime=" + jdOrderTime + ", jdPickupPos=" + jdPickupPos + ", jdDropoffPos=" + jdDropoffPos
				+ ", jdProductQty=" + jdProductQty + ", jdProductTot=" + jdProductTot + ", jdOrderQty=" + jdOrderQty
				+ ", jdStayDate=" + jdStayDate + ", jNo=" + jNo + ", pNo=" + pNo + "]";
	}

}
