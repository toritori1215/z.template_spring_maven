package com.itwill.hotel.domain;

import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="restDto")
public class RestaurantDTO {
	//상품번호
	private Integer pno;
	//상품이름
	private String pname;
	//상품가격
	private Integer pprice;
	//상품종류
	private String ptype;
	//재고량
	private Integer pavailable;
	//제품 이미지
	private String pimg;
	//수용인원
	//private Integer pCapacity;
	//평점
	private Double prate;
	//상품설명
	private String pdesc;
	//상품 카테고리
	private String pfoodcategory; 
	
	public RestaurantDTO() {
		// TODO Auto-generated constructor stub
	}
	

	public RestaurantDTO(Integer pno, String pname, Integer pprice, String ptype, Integer pavailable, String pimg,
			Double prate, String pdesc, String pfoodcategory) {
		super();
		this.pno = pno;
		this.pname = pname;
		this.pprice = pprice;
		this.ptype = ptype;
		this.pavailable = pavailable;
		this.pimg = pimg;
		this.prate = prate;
		this.pdesc = pdesc;
		this.pfoodcategory = pfoodcategory;
	}




	public Integer getPno() {
		return pno;
	}
	public void setPno(Integer pno) {
		this.pno = pno;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public Integer getPprice() {
		return pprice;
	}
	public void setPprice(Integer pprice) {
		this.pprice = pprice;
	}
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	public Integer getPavailable() {
		return pavailable;
	}
	public void setPavailable(Integer pavailable) {
		this.pavailable = pavailable;
	}
	public String getPimg() {
		return pimg;
	}
	public void setPimg(String pimg) {
		this.pimg = pimg;
	}
	public Double getPrate() {
		return prate;
	}
	public void setPrate(Double prate) {
		this.prate = prate;
	}
	public String getPdesc() {
		return pdesc;
	}
	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}

	
	public String getPfoodcategory() {
		return pfoodcategory;
	}


	public void setPfoodcategory(String pfoodcategory) {
		this.pfoodcategory = pfoodcategory;
	}


	@Override
	public String toString() {
		return "RestaurantDTO [pno=" + pno + ", pname=" + pname + ", pprice=" + pprice + ", ptype=" + ptype
				+ ", pavailable=" + pavailable + ", pimg=" + pimg + ", prate=" + prate + ", pdesc=" + pdesc
				+ ", pfoodcategory=" + pfoodcategory + "]";
	}


	

	
	
	
	
}
