package com.myhouse.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.myhouse.vo.SessionVO;

public class AuthHandlerInterceptor extends HandlerInterceptorAdapter{
	
	/**
	 * 컨트롤러가 실행되기 전에 호출됨 - 세션객체를 체크
	 */
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
		    throws Exception {
			//1. 세셩정보 가져오기
			HttpSession session =request.getSession();
			SessionVO svo = (SessionVO)session.getAttribute("svo");
			
			//2. svo 객체 체크 - null 체크
			if(svo == null) {
				response.sendRedirect("/MyCGV/login.do");
				return false;
			}else {
				if(!svo.getName().equals("관리자")) {
					response.sendRedirect("/MyCGV/index.do");
					return false;
				}
			}
		
			return true;//컨트롤러로 이동
		}//preHandel
	
}
