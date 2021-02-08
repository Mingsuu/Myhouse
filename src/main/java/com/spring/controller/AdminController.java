package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {

	
	
	/**
	 *  �������� ����Ʈ
	 */
	@RequestMapping(value="/notice_list_admin.do",method=RequestMethod.GET)
	public String notice_list_admin() {
		return "/admin/notice_list_admin";
	}
	/**
	 *  ����� ����Ʈ
	 */
	@RequestMapping(value="/member_list.do",method=RequestMethod.GET)
	public String member_list() {
		return "/admin/member_list";
	}
	
	/**
	 *  ȸ�� ����Ʈ
	 */
	@RequestMapping(value="/store_list.do",method=RequestMethod.GET)
	public String class_list() {
		return "/admin/store_list";
	}
}
