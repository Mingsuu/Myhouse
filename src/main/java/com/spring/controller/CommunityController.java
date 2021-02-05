package com.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.myhouse.vo.SessionVO;
import com.spring.service.CommunityService;

@Controller
public class CommunityController {
	@Autowired
	private CommunityService communityService;
	
	@RequestMapping(value="/community_index.do", method=RequestMethod.GET)
	public ModelAndView community_index(String rpage, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		if(svo != null) {
			return communityService.getListMember(rpage, svo.getNickname());
		}else {
			return communityService.getList(rpage);
		}
	}
	
	@RequestMapping(value="/community_page.do", method=RequestMethod.GET)
	public ModelAndView community_page(String pno, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		String nickname ="";
		if(svo != null) {
			nickname=svo.getNickname();
		}
		return communityService.getContent(pno,nickname);
	}
	
	/** �ȷο� **/
	@ResponseBody
	@RequestMapping(value="/follow_proc.do", method=RequestMethod.GET)
	public String follow_proc(String w_email, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		return communityService.getFollow(w_email, svo.getNickname());
		
	}
	
	/** �ȷο� ��� **/
	@ResponseBody
	@RequestMapping(value="/follow_cancel_proc.do", method=RequestMethod.GET)
	public String follow_cancel_proc(String w_email, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		return communityService.deleteFollow(w_email, svo.getNickname());
	}
	
	/** ���ƿ� **/
	@ResponseBody
	@RequestMapping(value="/like_proc.do", method=RequestMethod.GET)
	public String like_proc(String pno, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		return communityService.getLike(pno, svo.getNickname());
		
	}
	
	/** ���ƿ� ��� **/
	@ResponseBody
	@RequestMapping(value="/like_cancel_proc.do", method=RequestMethod.GET)
	public String like_cancel_proc(String pno, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		return communityService.deleteLike(pno, svo.getNickname());
	}
	
	/** ��ũ�� **/
	@ResponseBody
	@RequestMapping(value="/scrap_proc.do", method=RequestMethod.GET)
	public String scrap_proc(String pno, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		return communityService.getScrap(pno, svo.getNickname());
	}
	
	/** ��ũ�� ��� **/
	@ResponseBody
	@RequestMapping(value="/scrap_cancel_proc.do", method=RequestMethod.GET)
	public String scrap_cancel_proc(String pno, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		return communityService.deleteScrap(pno, svo.getNickname());
	}
	
	/**��� �ޱ�**/
	@ResponseBody
	@RequestMapping(value="/comment_write_proc.do", method=RequestMethod.GET,
			produces="text/plain;charset=UTF-8")
	public String comment_write_proc(String pno, String content, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		return communityService.getCommentWrite(pno, content, svo.getNickname());
	}
	
	/**��� �ޱ�**/
	@ResponseBody
	@RequestMapping(value="/comment_reply_write_proc.do", method=RequestMethod.GET,
	produces="text/plain;charset=UTF-8")
	public String comment_reply_write_proc(String pno, String tag, String content, String cgroup,HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		return communityService.getReplyWrite(pno, tag, content, cgroup, svo.getNickname());
	}
	
	/** �ڽ� ����� �ִ� ��� ����**/
	@ResponseBody
	@RequestMapping(value="/comment_update_proc.do", method=RequestMethod.GET)
	public String comment_update_proc(String cno) {
		return communityService.getCommentUpdate(cno);
	}
	
	/**��� ����**/
	@ResponseBody
	@RequestMapping(value="/comment_delete_proc.do", method=RequestMethod.GET)
	public String comment_delete_proc(String cno) {
		return communityService.getCommentDelete(cno);
	}
	
	/** ��� ���ƿ� **/
	@ResponseBody
	@RequestMapping(value="/comment_like_proc.do", method=RequestMethod.GET)
	public String commnet_like_proc(String cno, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		return communityService.getCommentLike(cno, svo.getNickname());
		
	}
	
	/** ��� ���ƿ� ��� **/
	@ResponseBody
	@RequestMapping(value="/comment_like_cancel_proc.do", method=RequestMethod.GET)
	public String commnet_like_cancel_proc(String cno, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		return communityService.deleteCommentLike(cno, svo.getNickname());
	}
	
	/** Ŀ�´�Ƽ ����Ʈ **/
	@ResponseBody
	@RequestMapping(value="community_index_proc.do", method=RequestMethod.GET,
			produces="text/plain;charset=UTF-8")
	public String community_index_proc(String order, String type, String style, String rpage, HttpSession session) {
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		if(svo != null) {
			return communityService.getCommunityListAjaxMember(order, type, style, rpage, svo.getNickname());
		}else {
			return communityService.getCommunityListAjax(order, type, style, rpage);
		}
	}
}
