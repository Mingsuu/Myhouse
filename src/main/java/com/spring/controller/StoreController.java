package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StoreController {

	/*
	 * store_pay_cancel 화면
	 */
	@RequestMapping(value="/store_pay_cancel.do",method=RequestMethod.GET) 
	public String store_pay_cancel() {
		
		return "/store/store_pay_cancel";
	}
	
	/*
	 * store_pay_fin_card 화면
	 */
	@RequestMapping(value="/store_pay_fin_card.do",method=RequestMethod.GET) 
	public String store_pay_fin_card() {
		
		return "/store/store_pay_fin_card";
	}
	/*
	 * store_pay_finish 화면
	 */
	@RequestMapping(value="/store_pay_finish.do",method=RequestMethod.GET) 
	public String store_pay_finish() {
		
		return "/store/store_pay_finish";
	}
	
	/*
	 * store_payment 화면
	 */
	@RequestMapping(value="/store_payment.do",method=RequestMethod.GET) 
		public String store_payment() {
			
			return "/store/store_payment";
		}
	
	/*
	 * store_page 화면
	 */
	@RequestMapping(value="/store_page.do",method=RequestMethod.GET) 
	public String store_page() {
		
		return "/store/store_page";
	}
		
	/*
	 * store_index 화면
	 */
	@RequestMapping(value="/store_index.do", method=RequestMethod.GET)
	public ModelAndView store_index(String category) {
		ModelAndView mv = new ModelAndView();
		
		if(category != null) {
				if(!category.equals("0")) {
					mv.addObject("category", category);
					mv.setViewName("/store/store_index");
				} else {
					mv.setViewName("/store/store_index");
				}
		} else {
			mv.setViewName("/store/store_index");
			//mv.setViewName("/store/store_index");
		}
		
		return mv; 
	}
	
	
}
