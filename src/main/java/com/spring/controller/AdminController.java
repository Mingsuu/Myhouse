package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.myhouse.vo.noticeVO;
import com.spring.service.NoticeServiceImpl;

@Controller
public class AdminController {

	@Autowired
	private NoticeServiceImpl noticeService;
	
	/**
	 *  �������� ���� proc
	 */
	@RequestMapping(value="/admin_notice_detail_sProc.do",method=RequestMethod.POST)
	public String admin_notice_detail_sProc(noticeVO vo) {
		return noticeService.noticeUpdate(vo);
	}
	/**
	 *  �������� ����
	 */
	@RequestMapping(value="/admin_notice_detail_s.do",method=RequestMethod.GET)
	public ModelAndView admin_notice_detail_s(String nno) {
		return noticeService.getDetail2(nno);
	}	
	/**
	 *  �������� �ۼ� proc
	 */
	@RequestMapping(value="/noticeWriteProc.do",method=RequestMethod.POST)
	public String noticeWriteProc(noticeVO vo) {
		return noticeService.noticeInsert(vo);
	}	
	/**
	 *  �������� �ۼ�
	 */
	@RequestMapping(value="/admin_notice_write.do",method=RequestMethod.GET)
	public String admin_notice_write(noticeVO vo) {
		return "/admin/admin_notice_write";
	}
	/**
	 *  �������� ����2
	 */
	@RequestMapping(value="/noticeDeleteProc2.do",method=RequestMethod.GET,
			produces="text/plain;charset=UTF-8")
	public String noticeDeleteProc2(String[] nno) {
		String result="";
		if(noticeService.noticeDelete(nno).equals("0")) {
			result="errorPage";
		}else {
			result="redirect:/notice_list_admin.do?rpage=1";
		}
		return result;
	}
	/**
	 *  �������� ����
	 */
	@ResponseBody
	@RequestMapping(value="/noticeDeleteProc.do",method=RequestMethod.GET,
			produces="text/plain;charset=UTF-8")
	public String noticeDeleteProc(String[] nno) {
		return noticeService.noticeDelete(nno);
	}
	/**
	 *  �������� ��
	 */
	@RequestMapping(value="/admin_notice_detail.do",method=RequestMethod.GET)
	public ModelAndView admin_notice_detail(String nno) {
		return noticeService.getDetail(nno);
	}
	/**
	 *  �������� ����Ʈ
	 */
	@RequestMapping(value="/notice_list_admin.do",method=RequestMethod.GET)
	public ModelAndView notice_list_admin(String rpage) {
		return noticeService.getList(rpage);
	}
	/**
	 *  ����� ����Ʈ
	 */
	@RequestMapping(value="/member_list.do",method=RequestMethod.GET)
	public String member_list() {
		return "/admin/member_list";
	}
	
	/**
	 *  ȸ�� ����Ʈ
	 */
	@RequestMapping(value="/store_list.do",method=RequestMethod.GET)
	public String class_list() {
		return "/admin/store_list";
	}
}
