package com.itwill.hotel.domain;



import org.apache.ibatis.type.Alias;

@Alias("Review")
public class Review {
 
	private int rNo;
	private String rFirstName;
	private String rLastName;
	private String rEmail;
	private Integer rate1;
	private Integer rate2;
	private Integer rate3;
	private Integer rate4;
	private String rContent;
	private String rRegdate;
	private String pType;
	private int mNo;
	private int pNo;
	private int reviewCount;
	

}