package com.itwill.hotel.domain;

import org.apache.ibatis.type.Alias;

@Alias(value = "Jumun")
public class Jumun {
	private int jNo;
	private int jTotPay;
	private String jDate;
	private String jCardOwner;
	private String jEmail;
	private String jPhoneNo;
	private String jCardNo;
	private String jValidDate;
	private String jCardCVC;
	private String jStreetAddr;
	private String jStreetNMG;
	private String jCity;
	private String jCountry;
	private String jState;
	private String jZipCode;
	private String jGuest;
	private String jIfCancel;
	private String mNo;
	
	public Jumun() {
		// TODO Auto-generated constructor stub
	}

	public Jumun(int jNo, int jTotPay, String jDate, String jCardOwner, String jEmail, String jPhoneNo, String jCardNo,
			String jValidDate, String jCardCVC, String jStreetAddr, String jStreetNMG, String jCity, String jCountry,
			String jState, String jZipCode, String jGuest, String jIfCancel, String mNo) {
		super();
		this.jNo = jNo;
		this.jTotPay = jTotPay;
		this.jDate = jDate;
		this.jCardOwner = jCardOwner;
		this.jEmail = jEmail;
		this.jPhoneNo = jPhoneNo;
		this.jCardNo = jCardNo;
		this.jValidDate = jValidDate;
		this.jCardCVC = jCardCVC;
		this.jStreetAddr = jStreetAddr;
		this.jStreetNMG = jStreetNMG;
		this.jCity = jCity;
		this.jCountry = jCountry;
		this.jState = jState;
		this.jZipCode = jZipCode;
		this.jGuest = jGuest;
		this.jIfCancel = jIfCancel;
		this.mNo = mNo;
	}

	public int getjNo() {
		return jNo;
	}

	public void setjNo(int jNo) {
		this.jNo = jNo;
	}

	public int getjTotPay() {
		return jTotPay;
	}

	public void setjTotPay(int jTotPay) {
		this.jTotPay = jTotPay;
	}

	public String getjDate() {
		return jDate;
	}

	public void setjDate(String jDate) {
		this.jDate = jDate;
	}

	public String getjCardOwner() {
		return jCardOwner;
	}

	public void setjCardOwner(String jCardOwner) {
		this.jCardOwner = jCardOwner;
	}

	public String getjEmail() {
		return jEmail;
	}

	public void setjEmail(String jEmail) {
		this.jEmail = jEmail;
	}

	public String getjPhoneNo() {
		return jPhoneNo;
	}

	public void setjPhoneNo(String jPhoneNo) {
		this.jPhoneNo = jPhoneNo;
	}

	public String getjCardNo() {
		return jCardNo;
	}

	public void setjCardNo(String jCardNo) {
		this.jCardNo = jCardNo;
	}

	public String getjValidDate() {
		return jValidDate;
	}

	public void setjValidDate(String jValidDate) {
		this.jValidDate = jValidDate;
	}

	public String getjCardCVC() {
		return jCardCVC;
	}

	public void setjCardCVC(String jCardCVC) {
		this.jCardCVC = jCardCVC;
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

	public String getjZipCode() {
		return jZipCode;
	}

	public void setjZipCode(String jZipCode) {
		this.jZipCode = jZipCode;
	}

	public String getjGuest() {
		return jGuest;
	}

	public void setjGuest(String jGuest) {
		this.jGuest = jGuest;
	}

	public String getjIfCancel() {
		return jIfCancel;
	}

	public void setjIfCancel(String jIfCancel) {
		this.jIfCancel = jIfCancel;
	}

	public String getmNo() {
		return mNo;
	}

	public void setmNo(String mNo) {
		this.mNo = mNo;
	}
	
}
