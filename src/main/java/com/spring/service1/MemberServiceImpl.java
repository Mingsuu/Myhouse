package com.spring.service1;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.myhouse.dao.MemberDAO;
import com.myhouse.vo.MemberVO;
import com.myhouse.vo.SessionVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	/**
	 * 아이디 중복체크
	 */
	public String getResultIdCheck(String email) {
		int result= memberDAO.getIdCheck(email);
		return String.valueOf(result);
	}
	@Override
	public ModelAndView getMemberContent(String id) {
		ModelAndView mv=new ModelAndView();
		
		return mv;
	};
	@Override
	public ModelAndView getMemberList(String rpage) {
		ModelAndView mv=new ModelAndView();
		
		return mv;
	};
	@Override
	public String getResultJoin(MemberVO vo) {
		String result="";
		if(memberDAO.getInsert(vo)) {
			result="/login/login";
		}else{
			result="/errorPage";
		};
		return result;
	};
	/*
	 * @Override public String getResultLogin(MemberVO vo,HttpSession session) {
	 * 
	 * SessionVO svo= memberDAO.getLogin(vo); String result="/errorPage";
	 * if(svo!=null) { if(svo.getResult()!=0) { session.setAttribute("svo", svo);
	 * result="/index"; } } return result; };
	 */
	@Override
	public String getResultLoginCheck(MemberVO vo,HttpSession session) {
		String result="";
		SessionVO svo= memberDAO.getLogin(vo); 
		 if(svo==null) {result="0";
		 }else { 
			 session.setAttribute("svo", svo); 
			 result=Integer.toString(svo.getResult());
		 }
		return result;
	};
}
