package com.spring.service1;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.myhouse.vo.MemberVO;


public interface MemberService {
	ModelAndView getMemberContent(String id);
	ModelAndView getMemberList(String rpage);
	String getResultJoin(MemberVO vo);
	String stateUpdate(String[] inos);
	String stateUpdate2(String[] inos);
	String getResultLoginCheck(MemberVO vo,HttpSession session);
}
