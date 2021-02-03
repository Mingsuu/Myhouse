package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.service.InteriorServiceImpl;

@Controller
public class StoreController {
	
	@Autowired
	private InteriorServiceImpl interiorService; 
	

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
	 * store_page :: review - 포토리뷰만
	 */
	@ResponseBody
	@RequestMapping(value="/interior_review_photo.do", method=RequestMethod.GET,
	produces="text/plain;charset=UTF-8") 
	public String interior_review_photo(String ino) {
		return interiorService.getInteriorReviewPhoto(ino);
	}
	
	/*
	 * store_page :: review - 최신순
	 */
	@ResponseBody
	@RequestMapping(value="/interior_review_recently.do", method=RequestMethod.GET,
				produces="text/plain;charset=UTF-8") 
	public String interior_review_recently(String ino) {
		return interiorService.getInteriorReviewRecently(ino);
	}
	
	/*
	 * store_page :: review - 베스트순
	 */
	@ResponseBody
	@RequestMapping(value="/interior_review.do", method=RequestMethod.GET,
	produces="text/plain;charset=UTF-8") 
	public String interior_review(String ino) {
		return interiorService.getInteriorReview(ino);
	}
	
	/*
	 * store_page :: 스크랩 처리 :: 삭제
	 */
	@RequestMapping(value="/interior_scrap_del_proc.do", method=RequestMethod.GET)
	public ModelAndView interior_scrap_del_proc(String email, String ino) {
		System.out.println("store_index---------->"+ino);
		System.out.println("store_index---------->"+email);
		return interiorService.getInteriorScrapDelProc("test0@naver.com", ino);
	}
	
	/*
	 * store_page :: 스크랩 처리
	 */
	@RequestMapping(value="/interior_scrap_proc.do", method=RequestMethod.GET)
	public ModelAndView interior_scrap_proc(String email, String ino) {
		System.out.println("store_index---------->"+ino);
		System.out.println("store_index---------->"+email);
		return interiorService.getInteriorScrapProc("test0@naver.com", ino);
	}
	
	/*
	 * store_page 화면
	 */
	@RequestMapping(value="/store_page.do",method=RequestMethod.GET) 
	public ModelAndView store_page(String ino, String email) {
		System.out.println("store_index page---------->"+ino);
		System.out.println("store_index page---------->"+email);
		return interiorService.getInteriorTop(ino, "test0@naver.com");
	}
		
	/*
	 * store_index 화면
	 */
	@RequestMapping(value="/store_index.do", method=RequestMethod.GET)
	public ModelAndView store_index(String category) {
		
		return interiorService.getList(category); 
	}
	
	
}
