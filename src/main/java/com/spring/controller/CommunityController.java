package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CommunityController {
	@RequestMapping(value="/community_index.do", method=RequestMethod.GET)
	public String community_index() {
		return "/community/community_index";
	}
	@RequestMapping(value="/community_page.do", method=RequestMethod.GET)
	public String community_page() {
		return "/community/community_page";
	}
	@RequestMapping(value="/salesApplication.do", method=RequestMethod.GET)
	public String newpage() {
		return "salesApplication";
	}
}
