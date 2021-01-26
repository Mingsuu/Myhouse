package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myhouse.vo.MemberVO;
import com.spring.service1.MemberServiceImpl;

@Controller
public class JoinController {
	
	@Autowired
	private MemberServiceImpl memberService;
	
	/**
	 * 회원가입 처리
	 * @return
	 */
	@RequestMapping(value="/join_proc.do",method=RequestMethod.POST)
	public String join_proc(MemberVO vo) {
		return memberService.getResultJoin(vo);
	}
	/**
	 * 회원가입
	 * @return
	 */
	@RequestMapping(value="/join.do",method=RequestMethod.GET)
	public String login() {
		return "/join/join";
	}
	
	
}
