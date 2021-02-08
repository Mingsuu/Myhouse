package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {

	
	
	/**
	 *  공지사항 리스트
	 */
	@RequestMapping(value="/notice_list_admin.do",method=RequestMethod.GET)
	public String notice_list_admin() {
		return "/admin/notice_list_admin";
	}
	/**
	 *  스토어 리스트
	 */
	@RequestMapping(value="/member_list.do",method=RequestMethod.GET)
	public String member_list() {
		return "/admin/member_list";
	}
	
	/**
	 *  회원 리스트
	 */
	@RequestMapping(value="/store_list.do",method=RequestMethod.GET)
	public String class_list() {
		return "/admin/store_list";
	}
}
