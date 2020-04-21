package com.itwill.hotel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.hotel.service.JumunService;

@Controller
public class JumunController {
	
	@Autowired
	JumunService jumunService;
	
}
