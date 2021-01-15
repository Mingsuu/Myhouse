package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StoreController {
	
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
