package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StoreController {
	
	@RequestMapping(value="/store_index.do", method=RequestMethod.GET)
	public String store_index() {
		return "/store/store_index"; 
	}
	
}
