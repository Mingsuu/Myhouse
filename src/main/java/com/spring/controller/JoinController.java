package com.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myhouse.vo.SessionVO;

@Controller
public class JoinController {
	
	
	/**
	 * 회원가입
	 * @return
	 */
	@RequestMapping(value="/join.do",method=RequestMethod.GET)
	public String login() {
		return "/join/join";
	}
	
	
}
