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
	
	@RequestMapping(value="/mypage_clientcenter.do", method=RequestMethod.GET)
	public String clientcenter() {
		return "/mypage/clientcenter";
	}
	
	
	@RequestMapping(value="/mypage_review.do", method=RequestMethod.GET)
	public String rivew() {
		return "/mypage/review";
	}
	
	@RequestMapping(value="/mypage_review1.do", method=RequestMethod.GET)
	public String rivew1() {
		return "/mypage/review1";
	}
	
	@RequestMapping(value="/mypage_review2.do", method=RequestMethod.GET)
	public String rivew2() {
		return "/mypage/review2";
	}
	
	@RequestMapping(value="/mypage_option.do", method=RequestMethod.GET)
	public String option() {
		return "/mypage/option";
	}
	
	@RequestMapping(value="/mypage_password.do", method=RequestMethod.GET)
	public String password() {
		return "/mypage/password";
	}
	
	@RequestMapping(value="/mypage_memberdelete.do", method=RequestMethod.GET)
	public String memberdelete() {
		return "/mypage/memberdelete";
	}
	
	@RequestMapping(value="/mypage_picture.do", method=RequestMethod.GET)
	public String picture() {
		return "/mypage/picture";
	}
	
	@RequestMapping(value="/mypage_noticecontent.do", method=RequestMethod.GET)
	public String noticecontent() {
		return "/mypage/noticecontent";
	}
	
	@RequestMapping(value="/mypage_profile1.do", method=RequestMethod.GET)
	public String profile1() {
		return "/mypage/profile1";
	}
	
	@RequestMapping(value="/mypage_scrap1.do", method=RequestMethod.GET)
	public String scrap1() {
		return "/mypage/scrap1";
	}
	
	@RequestMapping(value="/mypage_scrap2.do", method=RequestMethod.GET)
	public String scrap2() {
		return "/mypage/scrap2";
	}
	
}
