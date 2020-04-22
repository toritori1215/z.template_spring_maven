package com.itwill.hotel.domain;

import java.util.List;

/**
 * @author KIMHB
 *
 */
public class RestaurantCartDTO {
	private Integer mno; //회원번호
	private Integer cproductQty; //제품주문수량
	private Integer cproductTypePay;//제품별 총 가격
	private Integer pno;//제품번호
	private List<RestaurantDTO> restproductList;
	
	
	public RestaurantCartDTO() {
		// TODO Auto-generated constructor stub
	}
	
	

	public RestaurantCartDTO(Integer mno, Integer cproductQty, Integer cproductTypePay, Integer pno,
			List<RestaurantDTO> restproductList) {
		super();
		this.mno = mno;
		this.cproductQty = cproductQty;
		this.cproductTypePay = cproductTypePay;
		this.pno = pno;
		this.restproductList = restproductList;
	}



	public Integer getMno() {
		return mno;
	}

	public void setMno(Integer mno) {
		this.mno = mno;
	}

	public Integer getCproductQty() {
		return cproductQty;
	}

	public void setCproductQty(Integer cproductQty) {
		this.cproductQty = cproductQty;
	}

	public Integer getCproductTypePay() {
		return cproductTypePay;
	}

	public void setCproductTypePay(Integer cproductTypePay) {
		this.cproductTypePay = cproductTypePay;
	}

	public Integer getPno() {
		return pno;
	}

	public void setPno(Integer pno) {
		this.pno = pno;
	}

	public List<RestaurantDTO> getRestproductList() {
		return restproductList;
	}



	public void setRestproductList(List<RestaurantDTO> restproductList) {
		this.restproductList = restproductList;
	}



	@Override
	public String toString() {
		return "RestaurantCartDTO [mno=" + mno + ", cproductQty=" + cproductQty + ", cproductTypePay=" + cproductTypePay
				+ ", pno=" + pno + ", restproductList=" + restproductList + "]";
	}


	
	
	
	
}
