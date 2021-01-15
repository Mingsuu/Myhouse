package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class shopBasketController {

	@RequestMapping(value="/shoppingBasket_list.do",method=RequestMethod.GET)
	public String shoppingBasket_list() {
		return "/shoppingBasket/shoppingBasket_list";
	}
}
