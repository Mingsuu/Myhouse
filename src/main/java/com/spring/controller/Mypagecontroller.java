package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Mypagecontroller {

	
	@RequestMapping(value="/mypage_profile.do", method=RequestMethod.GET)
	public String profile() {
		return "/mypage/profile";
	}
	
	@RequestMapping(value="/mypage_ask.do", method=RequestMethod.GET)
	public String ask() {
		return "/mypage/ask";
	}
	
	@RequestMapping(value="/mypage_ask1.do", method=RequestMethod.GET)
	public String ask1() {
		return "/mypage/ask1";
	}
	
	@RequestMapping(value="/mypage_scrap.do", method=RequestMethod.GET)
	public String scrap() {
		return "/mypage/scrap";
	}
	
	@RequestMapping(value="/mypage_like.do", method=RequestMethod.GET)
	public String like() {
		return "/mypage/like";
	}
	
	@RequestMapping(value="/mypage_activity.do", method=RequestMethod.GET)
	public String activity() {
		return "/mypage/activity";
	}
	
	@RequestMapping(value="/mypage_orderlist.do", method=RequestMethod.GET)
	public String orderlist() {
		return "/mypage/orderlist";
	}
	
	@RequestMapping(value="/mypage_reception.do", method=RequestMethod.GET)
	public String reception() {
		return "/mypage/reception";
	}
	
	@RequestMapping(value="/mypage_notice.do", method=RequestMethod.GET)
	public String notice() {
		return "/mypage/notice";
	}
}
