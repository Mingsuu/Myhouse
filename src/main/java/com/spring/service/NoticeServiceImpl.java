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
	
	
	/** 업데이트 처리 **/
	@Override
	public String noticeUpdate(noticeVO vo) {
		String result="";
		//DB연동
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
		
		 //1페이지(1~10), 2페이지(11~20) ...
	     int start =0;
	     int end = 0;
	     int pageSize = 10; // 한페이지당 출력되는 row
	     int pageCount = 1; // 전체 페이지 수 : 전체 리스트 row / 한 페이지당 출력되는 row
	     int dbCount = noticeDAO.getListCount(); //DB연동 후 전체로우수 출력
	     int reqPage = 1; //요청페이지
	      
	     //2-2. 전체페이지 수 구하기 - 화면출력
	     if(dbCount % pageSize == 0) {
	        pageCount = dbCount/pageSize;
	     }else {
	        pageCount = dbCount/pageSize +1;
	     }
	      
	     //2-3. start, end 값 구하기
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
