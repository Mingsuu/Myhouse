package com.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myhouse.vo.PhotoVO;


@Controller
public class MyhouseWriteController {
	@Autowired
	/* private UploadPhotoService uploadphotoservice; */
	
	/**
	 * �۾��� �����ø��� ó��
	 * @return
	 */
	@RequestMapping(value="/upload_photo_proc.do",method=RequestMethod.POST)
	public String upload_photo_proc(PhotoVO vo,HttpServletRequest request) {
		return "/myhouseWrite/upload_photo";
	}
	
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
