package com.spring.service;

import java.io.File;
import java.util.ArrayList;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.myhouse.dao.NoticeDAO;
import com.myhouse.vo.noticeVO;

@Service("communityService")
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private NoticeDAO noticeDAO;
	
	
	/** ������Ʈ ó�� **/
	@Override
	public String noticeUpdate(noticeVO vo) {
		String result="";
		//DB����
		if(noticeDAO.getUpdate(vo)) {
			result="redirect:/admin_notice_detail.do?nno="+vo.getNno();
		}else {
			result="errorPage";
		}
		return result;
	}
	@Override
	public String noticeInsert(noticeVO vo) {
		String result="";
		if(noticeDAO.noticeInsert(vo)) {
			result="redirect:/notice_list_admin.do?rpage=1";
		}else {
			result="errorPage";
		}
		return result;
		
	}; 
	@Override
	public String noticeDelete(String[] nno) {
		return String.valueOf(noticeDAO.noticeDelete(nno));
	}; 
	@Override
	public ModelAndView getDetail2(String nno) {
		ModelAndView mv = new ModelAndView();
		noticeVO noticeVO =noticeDAO.getDetail(nno);
		mv.addObject("noticeVO", noticeVO);
		mv.setViewName("/admin/admin_notice_detail_s");
		    
		return mv;
	}; 
	@Override
	public ModelAndView getDetail(String nno) {
		ModelAndView mv = new ModelAndView();
		noticeVO noticeVO =noticeDAO.getDetail(nno);
		noticeVO.setNcontent(noticeVO.getNcontent().replaceAll("\n", "<br/>"));
		mv.addObject("noticeVO", noticeVO);
		mv.setViewName("/admin/admin_notice_detail");
		    
		return mv;
	}; 
	@Override
	public ModelAndView getList(String rpage) {
		ModelAndView mv = new ModelAndView();
		
		 //1������(1~10), 2������(11~20) ...
	     int start =0;
	     int end = 0;
	     int pageSize = 10; // ���������� ��µǴ� row
	     int pageCount = 1; // ��ü ������ �� : ��ü ����Ʈ row / �� �������� ��µǴ� row
	     int dbCount = noticeDAO.getListCount(); //DB���� �� ��ü�ο�� ���
	     int reqPage = 1; //��û������
	      
	     //2-2. ��ü������ �� ���ϱ� - ȭ�����
	     if(dbCount % pageSize == 0) {
	        pageCount = dbCount/pageSize;
	     }else {
	        pageCount = dbCount/pageSize +1;
	     }
	      
	     //2-3. start, end �� ���ϱ�
	     if(rpage != null) {
	        reqPage = Integer.parseInt(rpage);
	        start = (reqPage -1) * pageSize +1;
	        end = reqPage*pageSize;
	     } else {
	        start = reqPage;
	        end = pageSize;
	     }
	    ArrayList<noticeVO> noticeList = noticeDAO.getList(start, end);
	     
	    mv.addObject("noticeList", noticeList);
	    mv.addObject("dbCount", dbCount);
	    mv.addObject("pageSize", pageSize);
	    mv.addObject("reqPage", reqPage);
	    mv.setViewName("/admin/notice_list_admin");
	    
	    return mv;
	}; 
}
