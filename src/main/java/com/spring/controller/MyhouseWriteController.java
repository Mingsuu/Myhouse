package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyhouseWriteController {
	/**
	 * �۾��� �����ø���
	 * @return
	 */
	@RequestMapping(value="/upload_photo.do",method=RequestMethod.GET)
	public String upload_photo() {
		return "/myhouseWrite/upload_photo";
	}
	
	/**
	 * �۾��� ����ø���
	 * @return
	 */
	@RequestMapping(value="/product_review.do",method=RequestMethod.GET)
	public String product_review() {
		return "/myhouseWrite/product_review";
	}
	
	/**
	 * �۾��� ������
	 * @return
	 */
	@RequestMapping(value="/service_center.do",method=RequestMethod.GET)
	public String service_center() {
		return "/myhouseWrite/service_center";
	}
}
