package com.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myhouse.vo.SessionVO;

@Controller
public class LoginController {
	
	/**
	 * 비밀번호 찾기 화면
	 */
	@RequestMapping(value="/pass_update.do",method=RequestMethod.GET)
	public String pass_update() {
		return "/login/pass_update";
	}
	
	/**
	 * 로그아웃 처리
	 */
	@RequestMapping(value="/logout.do",method=RequestMethod.GET)
	public String logout(HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		String result="";
		if(svo != null ) {
			session.invalidate();
			result ="index";
		}else {
			result="errorPage";
		}
		
		return result;
	}
	
	/**
	 * 로그인 처리
	 */
	/*
	 * @RequestMapping(value="/login_proc.do", method=RequestMethod.POST) public
	 * String login_proc(MemberVO vo,HttpSession session) { //JSP의 빌트인 객체(session)는
	 * 컨트롤러의 파라미터로 넘어올 수 있음. //단, 원래 클래스 타입으로 사용
	 * 
	 * MemberDAO dao= new MemberDAO(); SessionVO svo= dao.getLogin(vo); String
	 * result="";
	 * 
	 * if(svo.getResult()!=0) { session.setAttribute("svo", svo); result="index";
	 * }else { result="/login/loginFail"; }
	 * 
	 * return result; }
	 */
	
	/**
	 * 로그인 사용자 화면
	 * @return
	 */
	@RequestMapping(value="/login.do",method=RequestMethod.GET)
	public String login() {
		return "/login/login";
	}
	
	
}
