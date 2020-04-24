package com.itwill.hotel.util;

public class TestString {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String subStr = "9:00AM";
		String meridian = subStr.substring(subStr.length()-2);
		String time = subStr.substring(0,subStr.length()-2);
		System.out.println("subStr = "+ subStr);
		System.out.println("meridian = "+ meridian);
		System.out.println("time = "+ time);
		
	}

}
