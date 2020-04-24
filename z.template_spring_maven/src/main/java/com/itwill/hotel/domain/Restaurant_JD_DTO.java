package com.itwill.hotel.domain;

public class Restaurant_JD_DTO {
	private Integer jno;
	private String jdorderdate;
	private String jdordertime;
	private Integer jdproductqty;
	private Integer jdproducttot;
	private Integer jdorderqty;
	private Integer pno;
	private Integer pdno;
	
	public Restaurant_JD_DTO() {
		// TODO Auto-generated constructor stub
	}
	
	

	public Restaurant_JD_DTO(Integer jno, String jdorderdate, String jdordertime, Integer jdproductqty,
			Integer jdproducttot, Integer jdorderqty, Integer pno, Integer pdno) {
		super();
		this.jno = jno;
		this.jdorderdate = jdorderdate;
		this.jdordertime = jdordertime;
		this.jdproductqty = jdproductqty;
		this.jdproducttot = jdproducttot;
		this.jdorderqty = jdorderqty;
		this.pno = pno;
		this.pdno = pdno;
	}



	public Integer getJno() {
		return jno;
	}

	public void setJno(Integer jno) {
		this.jno = jno;
	}

	public String getJdorderdate() {
		return jdorderdate;
	}

	public void setJdorderdate(String jdorderdate) {
		this.jdorderdate = jdorderdate;
	}

	public String getJdordertime() {
		return jdordertime;
	}

	public void setJdordertime(String jdordertime) {
		this.jdordertime = jdordertime;
	}

	public Integer getJdproductqty() {
		return jdproductqty;
	}

	public void setJdproductqty(Integer jdproductqty) {
		this.jdproductqty = jdproductqty;
	}

	public Integer getJdproducttot() {
		return jdproducttot;
	}

	public void setJdproducttot(Integer jdproducttot) {
		this.jdproducttot = jdproducttot;
	}

	public Integer getJdorderqty() {
		return jdorderqty;
	}

	public void setJdorderqty(Integer jdorderqty) {
		this.jdorderqty = jdorderqty;
	}

	public Integer getPno() {
		return pno;
	}

	public void setPno(Integer pno) {
		this.pno = pno;
	}



	public Integer getPdno() {
		return pdno;
	}



	public void setPdno(Integer pdno) {
		this.pdno = pdno;
	}



	@Override
	public String toString() {
		return "Restaurant_JD_DTO [jno=" + jno + ", jdorderdate=" + jdorderdate + ", jdordertime=" + jdordertime
				+ ", jdproductqty=" + jdproductqty + ", jdproducttot=" + jdproducttot + ", jdorderqty=" + jdorderqty
				+ ", pno=" + pno + ", pdno=" + pdno + "]";
	}

	
	
	
	
}
