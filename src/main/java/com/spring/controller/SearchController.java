package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SearchController {
	/**
	 * 로그인 사용자 화면
	 * @return
	 */
	@RequestMapping(value="/search.do",method=RequestMethod.GET)
	public String login() {
		return "/search/search";
	}
}
