package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.service.CommunityService;

@Controller
public class CommunityController {
	@Autowired
	private CommunityService communityService;
	
	@RequestMapping(value="/community_index.do", method=RequestMethod.GET)
	public ModelAndView community_index(String rpage) {
		return communityService.getList(rpage);
	}
	
	@RequestMapping(value="/community_page.do", method=RequestMethod.GET)
	public ModelAndView community_page(String pno) {
		return communityService.getContent(pno);
	}
	
	/**댓글 달기**/
	@ResponseBody
	@RequestMapping(value="/comment_write_proc.do", method=RequestMethod.GET,
			produces="text/plain;charset=UTF-8")
	public String comment_write_proc(String pno, String content) {
		return communityService.getCommentWrite(pno, content);
	}
	
	/**답글 달기**/
	@ResponseBody
	@RequestMapping(value="/comment_reply_write_proc.do", method=RequestMethod.GET,
	produces="text/plain;charset=UTF-8")
	public String comment_reply_write_proc(String pno, String tag, String content, String cgroup) {
		System.out.println("content="+content);
		return communityService.getReplyWrite(pno, tag, content, cgroup);
	}
	
	/** 커뮤니티 리스트 **/
	@ResponseBody
	@RequestMapping(value="community_index_proc.do", method=RequestMethod.GET,
			produces="text/plain;charset=UTF-8")
	public String community_index_proc(String order, String type, String style, String rpage) {
		return communityService.getCommunityListAjax(order, type, style, rpage);
	}
}
