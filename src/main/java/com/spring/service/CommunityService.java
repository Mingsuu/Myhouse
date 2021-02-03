package com.spring.service;

import org.springframework.web.servlet.ModelAndView;

public interface CommunityService {
	ModelAndView getList(String rpage); 
	ModelAndView getContent(String pno);
	String getCommentWrite(String pno, String content);
	String getReplyWrite(String pno, String tag, String content, String cgroup);
	String getCommunityListAjax(String order, String type, String style, String rpage);
}
