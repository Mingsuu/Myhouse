package com.spring.service;

import org.springframework.web.servlet.ModelAndView;

public interface CommunityService {
	ModelAndView getList(String rpage);
	ModelAndView getListMember(String rpage,String nickname); 
	ModelAndView getContent(String pno,String nickname);
	String getFollow(String email,String nickname);
	String deleteFollow(String email,String nickname);
	String getLike(String pno,String nickname);
	String deleteLike(String pno,String nickname);
	String getScrap(String pno,String nickname);
	String deleteScrap(String pno,String nickname);
	String getCommentWrite(String pno, String content ,String nickname);
	String getReplyWrite(String pno, String tag, String content, String cgroup ,String nickname);
	String getCommentDelete(String cno);
	String getCommentUpdate(String cno);
	String getCommentLike(String cno,String nickname);
	String deleteCommentLike(String cno,String nickname);
	String getCommunityListAjax(String order, String type, String style, String rpage);
	String getCommunityListAjaxMember(String order, String type, String style, String rpage,String nickname);
}
