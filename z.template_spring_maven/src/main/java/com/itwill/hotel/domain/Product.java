package com.itwill.hotel.domain;

import org.apache.ibatis.type.Alias;

@Alias("Product")
public class Product {

	private int pNo;
	private String pName;
	private int pPrice;
	private String pType;
	private int pAvailable;
	private String pImg;
	private int pCapacity;
	private double pRate;
	private String pDesc;
	private String foodCategory;
	private int rCount;
	private int wCount;
	
	public Product() {
		
	}
	
	public Product(int pNo, String pName, int pPrice, String pType, int pAvailable, String pImg, int pCapacity,
				   double pRate, String pDesc, String foodCategory) {
		this.pNo = pNo;
		this.pName = pName;
		this.pPrice = pPrice;
		this.pType = pType;
		this.pAvailable = pAvailable;
		this.pImg = pImg;
		this.pCapacity = pCapacity;
		this.pRate = pRate;
		this.pDesc = pDesc;
		this.foodCategory = foodCategory;
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
	
	public String getpType() {
		return pType;
	}
	
	public void setpType(String pType) {
		this.pType = pType;
	}
	
	public int getpAvailable() {
		return pAvailable;
	}
	
	public void setpAvailable(int pAvailable) {
		this.pAvailable = pAvailable;
	}
	
	public String getpImg() {
		return pImg;
	}
	
	public void setpImg(String pImg) {
		this.pImg = pImg;
	}
	
	public int getpCapacity() {
		return pCapacity;
	}
	
	public void setpCapacity(int pCapacity) {
		this.pCapacity = pCapacity;
	}
	
	public double getpRate() {
		return pRate;
	}
	
	public void setpRate(double pRate) {
		this.pRate = pRate;
	}
	
	public String getpDesc() {
		return pDesc;
	}
	
	public void setpDesc(String pDesc) {
		this.pDesc = pDesc;
	}
	
	public String getFoodCategory() {
		return foodCategory;
	}

	public void setFoodCategory(String foodCategory) {
		this.foodCategory = foodCategory;
	}

	public int getrCount() {
		return rCount;
	}

	public void setrCount(int rCount) {
		this.rCount = rCount;
	}

	public int getwCount() {
		return wCount;
	}

	public void setwCount(int wCount) {
		this.wCount = wCount;
	}

	@Override
	public String toString() {
		return "Product [pNo=" + pNo + ", pName=" + pName + ", pPrice=" + pPrice + ", pType=" + pType + ", pAvailable="
				+ pAvailable + ", pImg=" + pImg + ", pCapacity=" + pCapacity + ", pRate=" + pRate + ", pDesc=" + pDesc
				+ ", foodCategory=" + foodCategory + ", rCount=" + rCount + ", wCount=" + wCount + "]";
	}

}
