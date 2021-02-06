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
import com.myhouse.vo.SessionVO;
import com.myhouse.vo.goodsVO;
import com.myhouse.vo.interiorVO;
import com.myhouse.vo.questionVO;
import com.myhouse.vo.reviewVO;

@Service ("mypageService")
public class MypageServiceImpl implements MypageService{

	@Autowired
	private MypagePhotoDAO mypagephotoDAO;
	
	
	
	@Override
	public String getpictureproc(String pno,String nickname) {
		String email = mypagephotoDAO.getnickname(nickname);
		return String.valueOf(mypagephotoDAO.getlikeinsert(pno,email));
	}
	
	
	
	
	@Override
	public ModelAndView getreviewpage() {
		ModelAndView mv = new ModelAndView();
		ArrayList<goodsVO> list = mypagephotoDAO.getreviewpage();
		
		mv.addObject("list", list);
		mv.setViewName("mypage/review");
		
		return mv;
	}
	
	
	
	
	@Override
	public ModelAndView getqna() {
		ModelAndView mv = new ModelAndView();
		ArrayList<questionVO> list = mypagephotoDAO.getqna();
		
		mv.addObject("list", list);
		mv.setViewName("mypage/activity3");
		return mv;
	}
	
	
	
	@Override
	public ModelAndView getquestlist() {
		ModelAndView mv = new ModelAndView();
		ArrayList<questionVO> list = mypagephotoDAO.getquestlist();
		
		mv.addObject("list", list);
		mv.setViewName("mypage/question");
		return mv;
	}
	
	
	
	@Override
	public ModelAndView getpasschange(Object vo) {
		ModelAndView mv = new ModelAndView();
		boolean result =false;
		MemberVO passvo = (MemberVO)vo;
		result = mypagephotoDAO.getpasschange(passvo);
		
		if(result) {
			mv.setViewName("redirect:/mypage_profile1.do");
		}else {
			mv.setViewName("redirect:/mypage_profile1.do");
			System.out.println("비밀번호변경실패");
		}
	
		return mv;
	}
	
	
	
	
	
	
	@Override
	public ModelAndView getreview1() {
		ModelAndView mv = new ModelAndView();
		ArrayList<reviewVO> list = mypagephotoDAO.getreview1();
		
		mv.addObject("list", list);
		mv.setViewName("/mypage/review1");
		
		return mv;
	}
	
	
	
	
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
			System.out.println("선택파일이 없습니다.");
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
		int lcount = mypagephotoDAO.getlikecount();
		MemberVO prof = mypagephotoDAO.getprofile();
		
		mv.addObject("lcount", lcount);
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
		int lcount = mypagephotoDAO.getlikecount();
		
		mv.addObject("lcount", lcount);
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
		int lcount = mypagephotoDAO.getlikecount();
		
		mv.addObject("lcount", lcount);
		mv.addObject("prof", prof);
		mv.addObject("list", list);
		mv.setViewName("/mypage/like");
		return mv;
	}
	
}
