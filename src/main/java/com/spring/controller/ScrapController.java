package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ScrapController {

	/**
	 * ½ºÅ©·¦ Ã¹È­¸é(¸ðµÎ)
	 * @return
	 */
	@RequestMapping(value="/scrap_all.do",method=RequestMethod.GET)
	public String scrap_all() {
		return "/scrap/scrap_all";
	}
	
	/**
	 * ½ºÅ©·¦ »óÇ°
	 * @return
	 */
	@RequestMapping(value="/scrap_product.do",method=RequestMethod.GET)
	public String scrap_prodouct() {
		return "/scrap/scrap_product";
	}
	
	/**
	 * ½ºÅ©·¦ ÁýµéÀÌ
	 * @return
	 */
	@RequestMapping(value="/scrap_houses.do",method=RequestMethod.GET)
	public String scrap_houses() {
		return "/scrap/scrap_houses";
	}
	
}
