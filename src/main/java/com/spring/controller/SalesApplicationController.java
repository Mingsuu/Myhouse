package com.spring.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class SalesApplicationController {
	@RequestMapping(value="/salesApplication.do", method=RequestMethod.GET)
	public String salesApplication() {
		return "/salesApplication/salesApplication";
	}
}
