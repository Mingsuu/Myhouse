package com.spring.service1;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.myhouse.dao.MemberDAO;
import com.myhouse.vo.MemberVO;
import com.myhouse.vo.SessionVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private JavaMailSender javaMailSender;
	
	/**
	 * 상태 1만들기
	 */
	@Override
	public String stateUpdate2(String[] inos) {
		return String.valueOf(memberDAO.stateUpdate2(inos));
	};
	/**
	 * 상태 0만들기
	 */
	@Override
	public String stateUpdate(String[] inos) {
		return String.valueOf(memberDAO.stateUpdate(inos));
	};
	/**
	 * 프로필 갖어오기
	 */
	
	public ModelAndView getProfile(HttpSession session) {
		ModelAndView mv=new ModelAndView();
		SessionVO svo=(SessionVO)session.getAttribute("svo");
		
		if(svo!=null) {
			String profile=memberDAO.getProfile(svo.getEmail());
			mv.addObject("profile",profile);
			mv.setViewName("index");
		}else {
			mv.setViewName("index");
		}
		return mv;
	}
	/**
	 * 패스워드 찾기 이메일 발송
	 */
	public String mailSendWithPassword(String email) {
		MimeMessage message = javaMailSender.createMimeMessage();
		try {
			// 메일 제목설정
			message.setSubject("[myhouse] 비밀번호 찾기 요청에 대한 이메일 발송입니다.", "UTF-8");
			// html 메일 내용
			String htmlStr ="<div style='padding:35px 18px 70px;background-color:#fafafa;text-align:center;font-size:15px;line-height:28px;letter-spacing:-0.3px;color:#424242'><div class='adM'>"
					   +"</div><img src='https://ci5.googleusercontent.com/proxy/NrNl-SB1khdndQ9Dl1KaLjNrwZVAxNdYokpIopghCCgCHZlvQDZMgHSyByoWAZtcvrJUAxVprIhqGCRstB2XgR5ich3zb09inJceh9o8TBKvtYKpg7lq7Pn7_k52wQ=s0-d-e1-ft#https://s3-ap-northeast-1.amazonaws.com/mailer-images/logo/email_logo_2.png' alt='오늘의집' height='60' width='60' class='CToWUd'>"
					    +"<div style='margin:53px auto 20px;width:335px'>"
					     +" 안녕하세요.<br>비밀번호 확인 안내 메일입니다"
					    +"</div>"
					    +"<div style='margin:20px auto 30px;width:335px'>"
					    +" *만약 본인이 비밀번호 재설정 신청을 한 것이 아니라면,"
					    +"  본 메일을 무시해 주세요. 비밀번호를 변경하기 전에는 계정의 비밀번호는 바뀌지 않습니다."
					  +"  </div>"
					   +" <a style='display:block;width:290px;height:40px;margin:0 auto;background:#35c5f0;border-radius:4px;text-decoration:none' href='http://localhost:9000/myhouse/login.do'>"
					   +"   <div style='line-height:40px;font-weight:700;color:white'> 비밀번호 : "+memberDAO.getPass(email)
					   +"   </div>"
					+"</a>"
					  +"  <div style='margin:30px auto 0;width:335px;font-size:13px;color:#757575;text-decoration:underline'>"
					  +"    * 비밀번호가 쓰여진 버튼을 클릭 시 로그인 화면으로 이동"
					  +"  </div>"
					 +" </div>";
					
			// 내용 설정
			message.setText(htmlStr, "UTF-8", "html");
			// To 설정
			message.addRecipient(RecipientType.TO, new InternetAddress(email, "myhouse회원", "UTF-8"));
			
			javaMailSender.send(message);
			
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "/login/login";
	}
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
