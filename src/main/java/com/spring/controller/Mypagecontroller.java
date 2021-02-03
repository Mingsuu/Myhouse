package com.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.myhouse.vo.MemberVO;
import com.spring.service1.MypageService;

@Controller
public class Mypagecontroller {

	
	@Autowired
	private MypageService mypageService;
	
	
	
	
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
	public ModelAndView like() {
		return mypageService.getlike();
	}
	
	@RequestMapping(value="/mypage_activity.do", method=RequestMethod.GET)
	public String activity() {
		return "/mypage/activity";
	}
	
	@RequestMapping(value="/mypage_orderlist.do", method=RequestMethod.GET)
	public ModelAndView orderlist() {
		return mypageService.getorder();
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
	public ModelAndView rivew2() {
		return mypageService.getreview();
	}
	
	@RequestMapping(value="/mypage_option.do", method=RequestMethod.GET)
	public ModelAndView option() {
		return mypageService.getoption();
	}
	
	@RequestMapping(value="/option_update_proc.do", method=RequestMethod.POST)
	public ModelAndView option_update_proc(MemberVO vo, HttpServletRequest request) {
		//서버의 저장경로
		String root_path = request.getSession().getServletContext().getRealPath("/");
		String attach_path = "\\resources\\upload\\";
		System.out.println(root_path+attach_path);
		//vo에 저장경로 추가
		vo.setSavepath(root_path+attach_path);
		return mypageService.getResultUpdate(vo);
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
	public ModelAndView picture() {
		return mypageService.getpicture();
	}
	
	@RequestMapping(value="/mypage_noticecontent.do", method=RequestMethod.GET)
	public String noticecontent() {
		return "/mypage/noticecontent";
	}
	
	@RequestMapping(value="/mypage_profile1.do", method=RequestMethod.GET)
	public ModelAndView profile1() {
		return mypageService.getphotolist();
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
