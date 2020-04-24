package com.itwill.hotel.domain;

import org.apache.ibatis.type.Alias;

@Alias(value = "Member")
public class Member {
	
	private Integer mNo;
	private String mId;
	private String mFirstName;
	private String mLastName;
	private String mPassword;
	private String mTel;
	private String mEmail;
	private Integer mBirth;
	private String mImg;
	private String mCountry;
	private String mCity;
	private String mAddress;
	private String mZipCode;
	private String mTempPassword;
	private String mRemoveDate;
	private Integer mIfActive;
	
	public Member() {
		
	}

	public Member(Integer mNo, String mId, String mFirstName, String mLastName, String mPassword, String mTel,
			String mEmail, Integer mBirth, String mImg, String mCountry, String mCity, String mAddress, String mZipCode,
			String mTempPassword, String mRemoveDate, Integer mIfActive) {
		this.mNo = mNo;
		this.mId = mId;
		this.mFirstName = mFirstName;
		this.mLastName = mLastName;
		this.mPassword = mPassword;
		this.mTel = mTel;
		this.mEmail = mEmail;
		this.mBirth = mBirth;
		this.mImg = mImg;
		this.mCountry = mCountry;
		this.mCity = mCity;
		this.mAddress = mAddress;
		this.mZipCode = mZipCode;
		this.mTempPassword = mTempPassword;
		this.mRemoveDate = mRemoveDate;
		this.mIfActive = mIfActive;
	}

	public Integer getmNo() {
		return mNo;
	}

	public void setmNo(Integer mNo) {
		this.mNo = mNo;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getmFirstName() {
		return mFirstName;
	}

	public void setmFirstName(String mFirstName) {
		this.mFirstName = mFirstName;
	}

	public String getmLastName() {
		return mLastName;
	}

	public void setmLastName(String mLastName) {
		this.mLastName = mLastName;
	}

	public String getmPassword() {
		return mPassword;
	}

	public void setmPassword(String mPassword) {
		this.mPassword = mPassword;
	}

	public String getmTel() {
		return mTel;
	}

	public void setmTel(String mTel) {
		this.mTel = mTel;
	}

	public String getmEmail() {
		return mEmail;
	}

	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}

	public Integer getmBirth() {
		return mBirth;
	}

	public void setmBirth(Integer mBirth) {
		this.mBirth = mBirth;
	}

	public String getmImg() {
		return mImg;
	}

	public void setmImg(String mImg) {
		this.mImg = mImg;
	}

	public String getmCountry() {
		return mCountry;
	}

	public void setmCountry(String mCountry) {
		this.mCountry = mCountry;
	}

	public String getmCity() {
		return mCity;
	}

	public void setmCity(String mCity) {
		this.mCity = mCity;
	}

	public String getmAddress() {
		return mAddress;
	}

	public void setmAddress(String mAddress) {
		this.mAddress = mAddress;
	}

	public String getmZipCode() {
		return mZipCode;
	}

	public void setmZipCode(String mZipCode) {
		this.mZipCode = mZipCode;
	}

	public String getmTempPassword() {
		return mTempPassword;
	}

	public void setmTempPassword(String mTempPassword) {
		this.mTempPassword = mTempPassword;
	}

	public String getmRemoveDate() {
		return mRemoveDate;
	}

	public void setmRemoveDate(String mRemoveDate) {
		this.mRemoveDate = mRemoveDate;
	}

	public Integer getmIfActive() {
		return mIfActive;
	}

	public void setmIfActive(Integer mIfActive) {
		this.mIfActive = mIfActive;
	}
	
}
