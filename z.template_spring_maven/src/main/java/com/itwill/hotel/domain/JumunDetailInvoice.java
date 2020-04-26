package com.itwill.hotel.domain;

import org.apache.ibatis.type.Alias;

@Alias(value = "JumunDetailInvoice")
public class JumunDetailInvoice {
	private int jdNo;
	private String jdOrderDate;
	private String jdOrderTime;
	private Integer jdProductQty;
	private Integer jdProductTot;
	private Integer jdOrderQty;
	private String jdStayDate;
	private int jNo;
	private int pNo;
	
	private String jCardOwner;
	private String jCardNo;
	private String jEmail;
	private String jStreetAddr;
	private String jStreetNMG;
	private String jCity;
	private String jCountry;
	private String jState;
	private String jDate;
	private String jGuest;
	private String pName;
	
	private String jdIfCanCancel;
	private String jdDy;
	private String jdDd;
	private String jdMon;
	
	public JumunDetailInvoice() {
		// TODO Auto-generated constructor stub
	}

	public JumunDetailInvoice(int jdNo, String jdOrderDate, String jdOrderTime, Integer jdProductQty,
			Integer jdProductTot, Integer jdOrderQty, String jdStayDate, int jNo, int pNo, String jCardOwner,
			String jCardNo, String jEmail, String jStreetAddr, String jStreetNMG, String jCity, String jCountry,
			String jState, String jDate, String jGuest, String pName, String jdIfCanCancel, String jdDy, String jdDd,
			String jdMon) {
		super();
		this.jdNo = jdNo;
		this.jdOrderDate = jdOrderDate;
		this.jdOrderTime = jdOrderTime;
		this.jdProductQty = jdProductQty;
		this.jdProductTot = jdProductTot;
		this.jdOrderQty = jdOrderQty;
		this.jdStayDate = jdStayDate;
		this.jNo = jNo;
		this.pNo = pNo;
		this.jCardOwner = jCardOwner;
		this.jCardNo = jCardNo;
		this.jEmail = jEmail;
		this.jStreetAddr = jStreetAddr;
		this.jStreetNMG = jStreetNMG;
		this.jCity = jCity;
		this.jCountry = jCountry;
		this.jState = jState;
		this.jDate = jDate;
		this.jGuest = jGuest;
		this.pName = pName;
		this.jdIfCanCancel = jdIfCanCancel;
		this.jdDy = jdDy;
		this.jdDd = jdDd;
		this.jdMon = jdMon;
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

	public String getJdOrderTime() {
		return jdOrderTime;
	}

	public void setJdOrderTime(String jdOrderTime) {
		this.jdOrderTime = jdOrderTime;
	}

	public Integer getJdProductQty() {
		return jdProductQty;
	}

	public void setJdProductQty(Integer jdProductQty) {
		this.jdProductQty = jdProductQty;
	}

	public Integer getJdProductTot() {
		return jdProductTot;
	}

	public void setJdProductTot(Integer jdProductTot) {
		this.jdProductTot = jdProductTot;
	}

	public Integer getJdOrderQty() {
		return jdOrderQty;
	}

	public void setJdOrderQty(Integer jdOrderQty) {
		this.jdOrderQty = jdOrderQty;
	}

	public String getJdStayDate() {
		return jdStayDate;
	}

	public void setJdStayDate(String jdStayDate) {
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

	public String getjCardOwner() {
		return jCardOwner;
	}

	public void setjCardOwner(String jCardOwner) {
		this.jCardOwner = jCardOwner;
	}

	public String getjCardNo() {
		return jCardNo;
	}

	public void setjCardNo(String jCardNo) {
		this.jCardNo = jCardNo;
	}

	public String getjEmail() {
		return jEmail;
	}

	public void setjEmail(String jEmail) {
		this.jEmail = jEmail;
	}

	public String getjStreetAddr() {
		return jStreetAddr;
	}

	public void setjStreetAddr(String jStreetAddr) {
		this.jStreetAddr = jStreetAddr;
	}

	public String getjStreetNMG() {
		return jStreetNMG;
	}

	public void setjStreetNMG(String jStreetNMG) {
		this.jStreetNMG = jStreetNMG;
	}

	public String getjCity() {
		return jCity;
	}

	public void setjCity(String jCity) {
		this.jCity = jCity;
	}

	public String getjCountry() {
		return jCountry;
	}

	public void setjCountry(String jCountry) {
		this.jCountry = jCountry;
	}

	public String getjState() {
		return jState;
	}

	public void setjState(String jState) {
		this.jState = jState;
	}

	public String getjDate() {
		return jDate;
	}

	public void setjDate(String jDate) {
		this.jDate = jDate;
	}

	public String getjGuest() {
		return jGuest;
	}

	public void setjGuest(String jGuest) {
		this.jGuest = jGuest;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getJdIfCanCancel() {
		return jdIfCanCancel;
	}

	public void setJdIfCanCancel(String jdIfCanCancel) {
		this.jdIfCanCancel = jdIfCanCancel;
	}

	public String getJdDy() {
		return jdDy;
	}

	public void setJdDy(String jdDy) {
		this.jdDy = jdDy;
	}

	public String getJdDd() {
		return jdDd;
	}

	public void setJdDd(String jdDd) {
		this.jdDd = jdDd;
	}

	public String getJdMon() {
		return jdMon;
	}

	public void setJdMon(String jdMon) {
		this.jdMon = jdMon;
	}
	
}
