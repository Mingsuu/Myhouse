package com.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myhouse.vo.SessionVO;

@Controller
public class LoginController {
	
	/**
	 * ��й�ȣ ã�� ȭ��
	 */
	@RequestMapping(value="/pass_update.do",method=RequestMethod.GET)
	public String pass_update() {
		return "/login/pass_update";
	}
	
	/**
	 * �α׾ƿ� ó��
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
	 * �α��� ó��
	 */
	/*
	 * @RequestMapping(value="/login_proc.do", method=RequestMethod.POST) public
	 * String login_proc(MemberVO vo,HttpSession session) { //JSP�� ��Ʈ�� ��ü(session)��
	 * ��Ʈ�ѷ��� �Ķ���ͷ� �Ѿ�� �� ����. //��, ���� Ŭ���� Ÿ������ ���
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
	 * �α��� ����� ȭ��
	 * @return
	 */
	@RequestMapping(value="/login.do",method=RequestMethod.GET)
	public String login() {
		return "/login/login";
	}
	
	
}
