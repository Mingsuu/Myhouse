package com.spring.service1;

import org.springframework.web.servlet.ModelAndView;

public interface MypageService {
	
	ModelAndView getphotolist(); //사진리스트(모두보기)
	ModelAndView getpicture(); //내가올린 사진 (사진)
	ModelAndView getlike(); //좋아요한사진 (좋아요)
	ModelAndView getorder(); // 주문내역
	ModelAndView getoption(); // 회원정보수정
	ModelAndView getResultUpdate(Object vo); //회원정보수정처리
	ModelAndView getreview(); // 리뷰 리스트 불러오기
}
