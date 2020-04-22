package com.itwill.hotel.util;

public class TimeCalculator{
	public static String timeCalculatorMethod(String timeText) {
		//meridian: ""
		String timeTrim = timeText.replace(" ", "");
		String timeMeridian = timeTrim.substring(timeTrim.length()-2);
		String time = timeTrim.substring(0,timeTrim.length()-2);
		
		
		System.out.println("time ::-->"+ time);
		if(timeMeridian.equals("PM")) {
			if(time.equals("1:00")){
				time ="13:00";
			}else if(time.equals("2:00")) {
				time ="14:00";
			}else if(time.equals("3:00")) {
				time ="15:00";
			}else if(time.equals("4:00")) {
				time ="16:00";
			}else if(time.equals("5:00")) {
				time ="17:00";
			}else if(time.equals("6:00")) {
				time ="18:00";
			}else if(time.equals("7:00")) {
				time ="19:00";
			}else if(time.equals("8:00")) {
				time ="20:00";
			}else if(time.equals("9:00")) {
				time ="21:00";
			}else if(time.equals("10:00")) {
				time ="22:00";
			}else if(time.equals("11:00")) {
				time ="23:00";
			}
		}else if(timeMeridian.equals("AM")) {
			if(time.equals("24:00")) {
				time = "00:00";
			}
		}
		return time;
	}
	
	public static String minTime(String time) {
		if(time.equals("1:00")){
			time ="00:00";
		}else if(time.equals("2:00")) {
			time ="01:00";
		}else if(time.equals("3:00")) {
			time ="02:00";
		}else if(time.equals("4:00")) {
			time ="03:00";
		}else if(time.equals("5:00")) {
			time ="04:00";
		}else if(time.equals("6:00")) {
			time ="05:00";
		}else if(time.equals("7:00")) {
			time ="06:00";
		}else if(time.equals("8:00")) {
			time ="07:00";
		}else if(time.equals("9:00")) {
			time ="08:00";
		}else if(time.equals("10:00")) {
			time ="09:00";
		}else if(time.equals("11:00")) {
			time ="10:00";
		}else if(time.equals("12:00")) {
			time ="11:00";
		}else if(time.equals("13:00")) {
			time ="12:00";
		}else if(time.equals("14:00")) {
			time ="13:00";
		}else if(time.equals("15:00")) {
			time ="14:00";
		}else if(time.equals("16:00")) {
			time ="15:00";
		}else if(time.equals("17:00")) {
			time ="16:00";
		}else if(time.equals("18:00")) {
			time ="17:00";
		}else if(time.equals("19:00")) {
			time ="18:00";
		}else if(time.equals("20:00")) {
			time ="19:00";
		}else if(time.equals("21:00")) {
			time ="20:00";
		}else if(time.equals("22:00")) {
			time ="21:00";
		}else if(time.equals("23:00")) {
			time ="22:00";
		}
		
		return time;
	}
	
	public static String maxTime(String time) {
		if(time.equals("1:00")){
			time ="02:00";
		}else if(time.equals("2:00")) {
			time ="03:00";
		}else if(time.equals("3:00")) {
			time ="04:00";
		}else if(time.equals("4:00")) {
			time ="05:00";
		}else if(time.equals("5:00")) {
			time ="06:00";
		}else if(time.equals("6:00")) {
			time ="07:00";
		}else if(time.equals("7:00")) {
			time ="08:00";
		}else if(time.equals("8:00")) {
			time ="09:00";
		}else if(time.equals("9:00")) {
			time ="10:00";
		}else if(time.equals("10:00")) {
			time ="11:00";
		}else if(time.equals("11:00")) {
			time ="12:00";
		}else if(time.equals("12:00")) {
			time ="13:00";
		}else if(time.equals("13:00")) {
			time ="14:00";
		}else if(time.equals("14:00")) {
			time ="15:00";
		}else if(time.equals("15:00")) {
			time ="16:00";
		}else if(time.equals("16:00")) {
			time ="17:00";
		}else if(time.equals("17:00")) {
			time ="18:00";
		}else if(time.equals("18:00")) {
			time ="19:00";
		}else if(time.equals("19:00")) {
			time ="20:00";
		}else if(time.equals("20:00")) {
			time ="21:00";
		}else if(time.equals("21:00")) {
			time ="22:00";
		}else if(time.equals("22:00")) {
			time ="23:00";
		}
		
		return time;
	}
	
}
