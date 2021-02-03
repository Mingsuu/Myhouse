package com.spring.service1;

import java.io.File;
import java.util.ArrayList;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.myhouse.dao.MypagePhotoDAO;
import com.myhouse.vo.MemberVO;
import com.myhouse.vo.PhotoVO;
import com.myhouse.vo.interiorVO;
import com.myhouse.vo.reviewVO;

@Service ("mypageService")
public class MypageServiceImpl implements MypageService{

	@Autowired
	private MypagePhotoDAO mypagephotoDAO;
	
	
	
	
	@Override
	public ModelAndView getreview() {
		ModelAndView mv = new ModelAndView();
		ArrayList<reviewVO> list = mypagephotoDAO.getreview();
		
		mv.addObject("list", list);
		mv.setViewName("/mypage/review2");
	
		return mv;
	}
	
	
	
	@Override
	public ModelAndView getResultUpdate(Object vo) {
		ModelAndView mv = new ModelAndView();
		
		//파일체크 유: 새로운 파일수정/무:기존파일 유지
		MemberVO uvo = (MemberVO)vo;
		boolean result =false;
		
		if(uvo.getFile1().getSize() != 0) {
			//새로운 파일 선택
			//bfile, bsfile --> bvo추가
			UUID uuid = UUID.randomUUID();
			uvo.setMember_image(uvo.getFile1().getOriginalFilename());
			uvo.setMember_spimage(uuid+"_"+uvo.getFile1().getOriginalFilename());
			
		}
		
		//DB연동
		result = mypagephotoDAO.getOptionUpdate(uvo);
		
		if(result) {
			File file = new File(uvo.getSavepath()+uvo.getMember_image());
			try {
				uvo.getFile1().transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			mv.setViewName("redirect:/mypage_profile1.do");
		}else {
			mv.setViewName("redirect:/mypage_profile1.do");
		}
		
		return mv;
	}
	
	
	@Override
	public ModelAndView getoption() {
		ModelAndView mv = new ModelAndView();
		MemberVO ovo = mypagephotoDAO.getoption();
		String str = ovo.getEmail();
		String[] str2 = str.split("@");
		
		mv.addObject("str2", str2);
		mv.addObject("ovo", ovo);
		mv.setViewName("/mypage/option");
		return mv;
	}
	
	
	
	@Override
	public ModelAndView getorder() {
		ModelAndView mv = new ModelAndView();
		ArrayList<interiorVO> list = mypagephotoDAO.getorder();
		mv.setViewName("/mypage/orderlist");
		mv.addObject("list", list);
		return mv;
		
	}
	
	
	@Override
	public ModelAndView getphotolist() {
		ModelAndView mv = new ModelAndView();
		ArrayList<PhotoVO> list = mypagephotoDAO.getphotolist();
		int count = mypagephotoDAO.getphotocount();
		MemberVO prof = mypagephotoDAO.getprofile();
		
		mv.addObject("prof", prof);
		mv.addObject("list", list);
		mv.addObject("count",count);
		mv.setViewName("/mypage/profile1");
		
	return mv;
	}
	
	
	@Override
	public ModelAndView getpicture() {
		ModelAndView mv = new ModelAndView();
		ArrayList<PhotoVO> list = mypagephotoDAO.getpicture();
		MemberVO prof = mypagephotoDAO.getprofile();
		mv.addObject("prof", prof);
		mv.addObject("list", list);
		mv.setViewName("/mypage/picture");
		return mv;
	}
	
	
	@Override
	public ModelAndView getlike() {
		ModelAndView mv = new ModelAndView();
		ArrayList<PhotoVO> list = mypagephotoDAO.getlike();
		MemberVO prof = mypagephotoDAO.getprofile();
		mv.addObject("prof", prof);
		mv.addObject("list", list);
		mv.setViewName("/mypage/like");
		return mv;
	}
	
}