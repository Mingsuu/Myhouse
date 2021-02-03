package com.spring.service1;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.myhouse.dao.CommunityDAO;
import com.myhouse.dao.photo_commentDAO;
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
	
	public String getCommunityListAjax(String order, String type, String style, String rpage) {
		int start = 0;
		int end = 0;
		int pageSize = 9; //�� �������� ��µǴ� row
		int pageCount = 1; //��ü ������ ��  : ��ü ����Ʈ row /�� �������� ��µǴ� row
		int dbCount = communityDAO.getListCount(order, type, style); //DB���� �� ��ü�ο�� ���
		int reqPage = 1; //��û������
		
		//2-2. ��ü������ �� ���ϱ� - ȭ�����
		if(dbCount % pageSize == 0){
			pageCount = dbCount/pageSize;		
		}else{
			pageCount = dbCount/pageSize +1;
		}
		
		//2-3. start, end �� ���ϱ�
		if(rpage != ""){
			reqPage = Integer.parseInt(rpage);
			start = (reqPage-1) * pageSize +1 ;
			end = reqPage*pageSize;	
		}else{
			start = reqPage;
			end = pageSize;
		}	
		
		
		ArrayList<CommunityVO> list = communityDAO.getSortList(order,type,style,start,end);

		//list��ü�� �����͸� JSON ��ü�� ��ȯ�۾� �ʿ� ---> JSON ���̺귯�� ��ġ(gson)
		JsonArray jarry = new JsonArray();
		JsonObject jdata = new JsonObject();
		Gson gson =new Gson();
		
		for(CommunityVO vo:list){
			JsonObject jobj = new JsonObject();
			jobj.addProperty("pno", vo.getPno());  
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
			
			jarry.add(jobj);		
		}
		
		jdata.add("jlist", jarry);
		jdata.addProperty("dbcount", dbCount);
		jdata.addProperty("reqpage", reqPage);
		jdata.addProperty("pagesize", pageSize);
		
		return gson.toJson(jdata);
	}
	
	@Override
	public ModelAndView getList(String rpage) {
		ModelAndView mv = new ModelAndView();
		
		 //1������(1~10), 2������(11~20) ...
	     int start =0;
	     int end = 0;
	     int pageSize = 5; // ���������� ��µǴ� row
	     int pageCount = 1; // ��ü ������ �� : ��ü ����Ʈ row / �� �������� ��µǴ� row
	     int dbCount = communityDAO.getListCount(); //DB���� �� ��ü�ο�� ���
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
	      
	    ArrayList<CommunityVO> list = communityDAO.getList(start, end);
	     
	    mv.addObject("list", list);
	    mv.addObject("dbCount", dbCount);
	    mv.addObject("pageSize", pageSize);
	    mv.addObject("reqPage", reqPage);
	    mv.setViewName("/community/community_index");
	    
	    return mv;
	}

	@Override
	public ModelAndView getContent(String pno) {
		ModelAndView mv = new ModelAndView();
		photoDAO.getUpdatehits(pno);
		PhotoVO pvo = photoDAO.content(pno);
		int c_like = likeDAO.getCount(pno);
		int scrap = scrapDAO.getCount(pno);
		int c_count =photo_commentDAO.getCount(pno);
		ArrayList<photo_commentVO> comment = photo_commentDAO.getList(pno);
		int re_count = photo_commentDAO.getRecount(pno);
		MemberVO member =photoDAO.getWriter(pno);
		ArrayList<PhotoVO> photo = photoDAO.getPhoto(pno);
		
		mv.addObject("pvo", pvo);
		mv.addObject("comment", comment);
		mv.addObject("re_count", re_count);
		mv.addObject("clike", c_like);
		mv.addObject("scrap", scrap);
		mv.addObject("c_count", c_count);
		mv.addObject("member", member);
		mv.addObject("photo", photo);
		mv.setViewName("/community/community_page");
		return mv;
	}
	
	@Override
	public String getCommentWrite(String pno, String content) {
		int result = photo_commentDAO.getWrite(pno, content);
		return String.valueOf(result);
	}
	
	@Override
	public String getReplyWrite(String pno, String tag, String content, String cgroup) {
		int result = photo_commentDAO.getReplyWrite(pno, tag, content, cgroup);
		return String.valueOf(result);
	}
	
}
