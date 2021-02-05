package com.spring.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.myhouse.dao.CommunityDAO;
import com.myhouse.dao.photo_commentDAO;
import com.myhouse.dao.yk_MemberDAO;
import com.myhouse.dao.yk_PhotoDAO;
import com.myhouse.dao.yk_likeDAO;
import com.myhouse.dao.yk_scrapDAO;
import com.myhouse.vo.CommunityVO;
import com.myhouse.vo.MemberVO;
import com.myhouse.vo.PhotoVO;
import com.myhouse.vo.photo_commentVO;

@Service("communityService")
public class CommunityServcieImpl implements CommunityService{
	
	@Autowired
	private CommunityDAO communityDAO;
	@Autowired
	private yk_PhotoDAO photoDAO;
	@Autowired
	private photo_commentDAO photo_commentDAO;
	@Autowired
	private yk_likeDAO likeDAO;
	@Autowired
	private yk_scrapDAO scrapDAO;
	@Autowired
	private yk_MemberDAO ykmemberDAO;
	
	/** 커뮤니티 리스트 카테고리(로그인X) **/
	public String getCommunityListAjax(String order, String type, String style, String rpage) {
		int start = 0;
		int end = 0;
		int pageSize = 9; //한 페이지당 출력되는 row
		int pageCount = 1; //전체 페이지 수  : 전체 리스트 row /한 페이지당 출력되는 row
		int dbCount = communityDAO.getListCount(order, type, style); //DB연동 후 전체로우수 출력
		int reqPage = 1; //요청페이지
		
		//2-2. 전체페이지 수 구하기 - 화면출력
		if(dbCount % pageSize == 0){
			pageCount = dbCount/pageSize;		
		}else{
			pageCount = dbCount/pageSize +1;
		}
		
		//2-3. start, end 값 구하기
		if(rpage != ""){
			reqPage = Integer.parseInt(rpage);
			start = (reqPage-1) * pageSize +1 ;
			end = reqPage*pageSize;	
		}else{
			start = reqPage;
			end = pageSize;
		}	
		
		
		ArrayList<CommunityVO> list = communityDAO.getSortList(order,type,style,start,end);

		//list객체의 데이터를 JSON 객체로 변환작업 필요 ---> JSON 라이브러리 설치(gson)
		JsonArray jarry = new JsonArray();
		JsonObject jdata = new JsonObject();
		Gson gson =new Gson();
		
		for(CommunityVO vo:list){
			JsonObject jobj = new JsonObject();
			jobj.addProperty("pno", vo.getPno());  
			jobj.addProperty("w_email", vo.getW_email());  
			jobj.addProperty("w_nickname", vo.getW_nickname());  
			jobj.addProperty("intro", vo.getIntro());  
			jobj.addProperty("w_member_image", vo.getW_member_image());  
			jobj.addProperty("w_member_simage", vo.getW_member_simage());  
			jobj.addProperty("pcontent", vo.getPcontent());  
			jobj.addProperty("pstyle", vo.getPstyle());  
			jobj.addProperty("ptype", vo.getPtype());  
			jobj.addProperty("photo_image", vo.getPhoto_image());  
			jobj.addProperty("photo_simage", vo.getPhoto_simage());  
			jobj.addProperty("pdate", vo.getPdate());  
			jobj.addProperty("c_nickname", vo.getC_nickname());  
			jobj.addProperty("c_member_image", vo.getC_member_image());  
			jobj.addProperty("c_member_simage", vo.getC_member_simage());  
			jobj.addProperty("c_content", vo.getC_content());  
			jobj.addProperty("phits", vo.getPhits());  
			jobj.addProperty("plike", vo.getPlike());  
			jobj.addProperty("scrap", vo.getScrap());  
			jobj.addProperty("comments", vo.getComments());  
			jobj.addProperty("islike", vo.getIslike());  
			jobj.addProperty("isscrap", vo.getIsscrap());  
			jobj.addProperty("isfollow", vo.getIsfollow());
			
			jarry.add(jobj);		
		}
		
		jdata.add("jlist", jarry);
		jdata.addProperty("dbcount", dbCount);
		jdata.addProperty("reqpage", reqPage);
		jdata.addProperty("pagesize", pageSize);
		
		return gson.toJson(jdata);
	}
	
	/** 커뮤니티 리스트 카테고리(로그인O) **/
	@Override
	public String getCommunityListAjaxMember(String order, String type, String style, String rpage,String nickname) {
		int start = 0;
		int end = 0;
		int pageSize = 9; //한 페이지당 출력되는 row
		int pageCount = 1; //전체 페이지 수  : 전체 리스트 row /한 페이지당 출력되는 row
		int dbCount = communityDAO.getListCount(order, type, style); //DB연동 후 전체로우수 출력
		int reqPage = 1; //요청페이지
		
		//2-2. 전체페이지 수 구하기 - 화면출력
		if(dbCount % pageSize == 0){
			pageCount = dbCount/pageSize;		
		}else{
			pageCount = dbCount/pageSize +1;
		}
		
		//2-3. start, end 값 구하기
		if(rpage != ""){
			reqPage = Integer.parseInt(rpage);
			start = (reqPage-1) * pageSize +1 ;
			end = reqPage*pageSize;	
		}else{
			start = reqPage;
			end = pageSize;
		}	
		
	
		String email = ykmemberDAO.getEmail(nickname);
		
		ArrayList<CommunityVO> list = communityDAO.getSortListMember(order,type,style,start,end,email);
		
		//list객체의 데이터를 JSON 객체로 변환작업 필요 ---> JSON 라이브러리 설치(gson)
		JsonArray jarry = new JsonArray();
		JsonObject jdata = new JsonObject();
		Gson gson =new Gson();
		
		for(CommunityVO vo:list){
			JsonObject jobj = new JsonObject();
			jobj.addProperty("pno", vo.getPno());  
			jobj.addProperty("w_email", vo.getW_email());  
			jobj.addProperty("w_nickname", vo.getW_nickname());  
			jobj.addProperty("intro", vo.getIntro());  
			jobj.addProperty("w_member_image", vo.getW_member_image());  
			jobj.addProperty("w_member_simage", vo.getW_member_simage());  
			jobj.addProperty("pcontent", vo.getPcontent());  
			jobj.addProperty("pstyle", vo.getPstyle());  
			jobj.addProperty("ptype", vo.getPtype());  
			jobj.addProperty("photo_image", vo.getPhoto_image());  
			jobj.addProperty("photo_simage", vo.getPhoto_simage());  
			jobj.addProperty("pdate", vo.getPdate());  
			jobj.addProperty("c_nickname", vo.getC_nickname());  
			jobj.addProperty("c_member_image", vo.getC_member_image());  
			jobj.addProperty("c_member_simage", vo.getC_member_simage());  
			jobj.addProperty("c_content", vo.getC_content());  
			jobj.addProperty("phits", vo.getPhits());  
			jobj.addProperty("plike", vo.getPlike());  
			jobj.addProperty("scrap", vo.getScrap());  
			jobj.addProperty("comments", vo.getComments());  
			jobj.addProperty("islike", vo.getIslike());  
			jobj.addProperty("isscrap", vo.getIsscrap());  
			jobj.addProperty("isfollow", vo.getIsfollow());  
			
			jarry.add(jobj);		
		}
		
		jdata.add("jlist", jarry);
		jdata.addProperty("dbcount", dbCount);
		jdata.addProperty("reqpage", reqPage);
		jdata.addProperty("pagesize", pageSize);
		
		return gson.toJson(jdata);
	}
	
	/** 커뮤니티 리스트 (로그인X) **/
	@Override
	public ModelAndView getList(String rpage) {
		ModelAndView mv = new ModelAndView();
		
		 //1페이지(1~10), 2페이지(11~20) ...
	     int start =0;
	     int end = 0;
	     int pageSize = 5; // 한페이지당 출력되는 row
	     int pageCount = 1; // 전체 페이지 수 : 전체 리스트 row / 한 페이지당 출력되는 row
	     int dbCount = communityDAO.getListCount(); //DB연동 후 전체로우수 출력
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
	      
	    ArrayList<CommunityVO> list = communityDAO.getList(start, end);
	     
	    mv.addObject("list", list);
	    mv.addObject("dbCount", dbCount);
	    mv.addObject("pageSize", pageSize);
	    mv.addObject("reqPage", reqPage);
	    mv.setViewName("/community/community_index");
	    
	    return mv;
	}
	
	/** 커뮤니티 리스트 (로그인O) **/
	public ModelAndView getListMember(String rpage, String nickname) {
		ModelAndView mv = new ModelAndView();
		
		//1페이지(1~10), 2페이지(11~20) ...
		int start =0;
		int end = 0;
		int pageSize = 5; // 한페이지당 출력되는 row
		int pageCount = 1; // 전체 페이지 수 : 전체 리스트 row / 한 페이지당 출력되는 row
		int dbCount = communityDAO.getListCount(); //DB연동 후 전체로우수 출력
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
		
		String email = ykmemberDAO.getEmail(nickname);
		ArrayList<CommunityVO> list = communityDAO.getListMember(start, end, email);
		
		mv.addObject("list", list);
		mv.addObject("dbCount", dbCount);
		mv.addObject("pageSize", pageSize);
		mv.addObject("reqPage", reqPage);
		mv.setViewName("/community/community_index");
		
		return mv;
	}

	@Override
	public ModelAndView getContent(String pno, String nickname) {
		String email = "";
		if (nickname != "") {
			email = ykmemberDAO.getEmail(nickname);
		}
	
		ModelAndView mv = new ModelAndView();
		photoDAO.getUpdatehits(pno);
		PhotoVO pvo = photoDAO.content(pno);
		int c_like = likeDAO.getCount(pno);
		int scrap = scrapDAO.getCount(pno);
		int c_count =photo_commentDAO.getCount(pno);
		ArrayList<photo_commentVO> comment = photo_commentDAO.getList(pno,email);
		int re_count = photo_commentDAO.getRecount(pno);
		MemberVO member =photoDAO.getWriter(pno);
		ArrayList<PhotoVO> photo = photoDAO.getPhoto(pno);
		int islike = likeDAO.getLike(pno, email);
		int isscrap = scrapDAO.getScrap(pno, email);
		String isfollow = ykmemberDAO.getFollow(pno, email);
		
		mv.addObject("pvo", pvo);
		mv.addObject("comment", comment);
		mv.addObject("re_count", re_count);
		mv.addObject("clike", c_like);
		mv.addObject("scrap", scrap);
		mv.addObject("c_count", c_count);
		mv.addObject("member", member);
		mv.addObject("photo", photo);
		mv.addObject("islike", islike);
		mv.addObject("isscrap", isscrap);
		mv.addObject("isfollow", isfollow);
		mv.setViewName("/community/community_page");
		return mv;
	}
	
	/** 팔로우 **/
	@Override
	public String getFollow(String w_email,String nickname) {
		String email = ykmemberDAO.getEmail(nickname);
		String result = String.valueOf(ykmemberDAO.insertFollow(w_email,email));
		result = String.valueOf(ykmemberDAO.insertFollowing(w_email,email));
		return result;
	}
	
	/** 팔로우 취소 **/
	@Override
	public String deleteFollow(String w_email,String nickname) {
		String email = ykmemberDAO.getEmail(nickname);
		String result = String.valueOf(ykmemberDAO.delFollow(w_email,email));
		result = String.valueOf(ykmemberDAO.delFollowing(w_email,email));
		return result;
	}
	
	/** 좋아요 **/
	@Override
	public String getLike(String pno,String nickname) {
		String email = ykmemberDAO.getEmail(nickname);
		return String.valueOf(likeDAO.getInsert(pno,email));
	}
	
	/** 좋아요 취소 **/
	@Override
	public String deleteLike(String pno,String nickname) {
		String email = ykmemberDAO.getEmail(nickname);
		return String.valueOf(likeDAO.getDelete(pno,email));
	}
	
	/** 스크랩 **/
	@Override
	public String getScrap(String pno,String nickname) {
		String email = ykmemberDAO.getEmail(nickname);
		return String.valueOf(scrapDAO.getInsert(pno,email));
	}
	
	/** 스크랩 취소 **/
	@Override
	public String deleteScrap(String pno,String nickname) {
		String email = ykmemberDAO.getEmail(nickname);
		return String.valueOf(scrapDAO.getDelete(pno,email));
	}
	
	/** 댓글달기 **/
	@Override
	public String getCommentWrite(String pno, String content, String nickname) {
		String email = ykmemberDAO.getEmail(nickname);
		return String.valueOf(photo_commentDAO.getWrite(pno, content, email));
	}
	
	/** 답글달기 **/
	@Override
	public String getReplyWrite(String pno, String tag, String content, String cgroup, String nickname) {
		String email = ykmemberDAO.getEmail(nickname);
		return String.valueOf(photo_commentDAO.getReplyWrite(pno, tag, content, cgroup, email));
	}
	
	/** 자식 댓글이 있는 댓글삭제 **/
	@Override
	public String getCommentUpdate(String cno) {
		return String.valueOf(photo_commentDAO.getUpdate(cno));
	}
	
	/** 댓글삭제 **/
	@Override
	public String getCommentDelete(String cno) {
		return String.valueOf(photo_commentDAO.getDelete(cno));
	}
	
	/** 댓글 좋아요 **/
	@Override
	public String getCommentLike(String cno,String nickname) {
		String email = ykmemberDAO.getEmail(nickname);
		return String.valueOf(photo_commentDAO.getCommentLike(cno,email));
	}
	
	/** 댓글 좋아요취소 **/
	@Override
	public String deleteCommentLike(String cno,String nickname) {
		String email = ykmemberDAO.getEmail(nickname);
		return String.valueOf(photo_commentDAO.getDeleteCommentLike(cno,email));
	}
	
}
