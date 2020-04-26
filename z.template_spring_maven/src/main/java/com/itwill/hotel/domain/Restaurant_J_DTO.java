package com.itwill.hotel.domain;

import java.util.List;

public class Restaurant_J_DTO {
	private Integer jno;
	private Integer jtotpay;
	private String jdate;
	private String jcardowner;//1
	private String jemail; //1
	
	private String jphoneno; //1
	private String jcardno; //1
	private String jvaliddate; //2 -일딴 보자
	private String jcardcvc;//1
	private String jstreetaddr; //1
	
	private String jstreetnmg; //1
	private String jcity; //1
	private String jcountry; //1
	private String jstate; //1
	private String jzipcode; //1
	
	private String jguest; 
	private Integer jifcancel; 
	private Integer mno;
	
	private List<Restaurant_JD_DTO> jd_dto;

	public Restaurant_J_DTO() {
		// TODO Auto-generated constructor stub
	}
	
	public Restaurant_J_DTO(Integer jno, Integer jtotpay, String jdate, String jcardowner, String jemail,
			String jphoneno, String jcardno, String jvaliddate, String jcardcvc, String jstreetaddr, String jstreetnmg,
			String jcity, String jcountry, String jstate, String jzipcode, String jguest, Integer jifcancel,
			Integer mno, List<Restaurant_JD_DTO> jd_dto) {
		super();
		this.jno = jno;
		this.jtotpay = jtotpay;
		this.jdate = jdate;
		this.jcardowner = jcardowner;
		this.jemail = jemail;
		this.jphoneno = jphoneno;
		this.jcardno = jcardno;
		this.jvaliddate = jvaliddate;
		this.jcardcvc = jcardcvc;
		this.jstreetaddr = jstreetaddr;
		this.jstreetnmg = jstreetnmg;
		this.jcity = jcity;
		this.jcountry = jcountry;
		this.jstate = jstate;
		this.jzipcode = jzipcode;
		this.jguest = jguest;
		this.jifcancel = jifcancel;
		this.mno = mno;
		this.jd_dto = jd_dto;
	}






	public Integer getJno() {
		return jno;
	}

	public void setJno(Integer jno) {
		this.jno = jno;
	}

	public Integer getJtotpay() {
		return jtotpay;
	}

	public void setJtotpay(Integer jtotpay) {
		this.jtotpay = jtotpay;
	}

	public String getJdate() {
		return jdate;
	}

	public void setJdate(String jdate) {
		this.jdate = jdate;
	}

	public String getJcardowner() {
		return jcardowner;
	}

	public void setJcardowner(String jcardowner) {
		this.jcardowner = jcardowner;
	}

	public String getJemail() {
		return jemail;
	}

	public void setJemail(String jemail) {
		this.jemail = jemail;
	}

	public String getJphoneno() {
		return jphoneno;
	}

	public void setJphoneno(String jphoneno) {
		this.jphoneno = jphoneno;
	}

	public String getJcardno() {
		return jcardno;
	}

	public void setJcardno(String jcardno) {
		this.jcardno = jcardno;
	}

	public String getJvaliddate() {
		return jvaliddate;
	}

	public void setJvaliddate(String jvaliddate) {
		this.jvaliddate = jvaliddate;
	}

	public String getJcardcvc() {
		return jcardcvc;
	}

	public void setJcardcvc(String jcardcvc) {
		this.jcardcvc = jcardcvc;
	}

	public String getJstreetaddr() {
		return jstreetaddr;
	}

	public void setJstreetaddr(String jstreetaddr) {
		this.jstreetaddr = jstreetaddr;
	}

	public String getJstreetnmg() {
		return jstreetnmg;
	}

	public void setJstreetnmg(String jstreetnmg) {
		this.jstreetnmg = jstreetnmg;
	}

	public String getJcity() {
		return jcity;
	}

	public void setJcity(String jcity) {
		this.jcity = jcity;
	}

	public String getJcountry() {
		return jcountry;
	}

	public void setJcountry(String jcountry) {
		this.jcountry = jcountry;
	}

	public String getJstate() {
		return jstate;
	}

	public void setJstate(String jstate) {
		this.jstate = jstate;
	}

	public String getJzipcode() {
		return jzipcode;
	}

	public void setJzipcode(String jzipcode) {
		this.jzipcode = jzipcode;
	}

	public String getJguest() {
		return jguest;
	}

	public void setJguest(String jguest) {
		this.jguest = jguest;
	}

	public Integer getJifcancel() {
		return jifcancel;
	}

	public void setJifcancel(Integer jifcancel) {
		this.jifcancel = jifcancel;
	}

	public Integer getMno() {
		return mno;
	}

	public void setMno(Integer mno) {
		this.mno = mno;
	}

	public List<Restaurant_JD_DTO> getJd_dto() {
		return jd_dto;
	}

	public void setJd_dto(List<Restaurant_JD_DTO> jd_dto) {
		this.jd_dto = jd_dto;
	}

	@Override
	public String toString() {
		return "Restaurant_J_DTO [jno=" + jno + ", jtotpay=" + jtotpay + ", jdate=" + jdate + ", jcardowner="
				+ jcardowner + ", jemail=" + jemail + ", jphoneno=" + jphoneno + ", jcardno=" + jcardno
				+ ", jvaliddate=" + jvaliddate + ", jcardcvc=" + jcardcvc + ", jstreetaddr=" + jstreetaddr
				+ ", jstreetnmg=" + jstreetnmg + ", jcity=" + jcity + ", jcountry=" + jcountry + ", jstate=" + jstate
				+ ", jzipcode=" + jzipcode + ", jguest=" + jguest + ", jifcancel=" + jifcancel + ", mno=" + mno
				+ ", jd_dto=" + jd_dto + "]";
	}

	
	
	
	
}
