package com.spring.service;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.myhouse.dao.yh_InteriorDAO;
import com.myhouse.vo.StoreIndexVO;


@Service("interiorService")
public class InteriorServiceImpl implements InteriorService{
	@Autowired
	private yh_InteriorDAO interiorDAO;
	
		// 문의 답변하기 - 삭제
		public String getInteriorQuestionAnswerDelete(String qno, String ino) {
			boolean result = interiorDAO.getInteriorQuestionAnswerDelete(qno);
			JsonObject jdata = new JsonObject();
			Gson gson = new Gson();
			
			jdata.addProperty("result", result);
			jdata.addProperty("ino", ino);
			jdata.addProperty("qno", qno);
			
			return gson.toJson(jdata);
		}
		// 문의 답변하기
		public ModelAndView getInteriorQuestionAnswer(String qno, String qreply, String ino) {
			ModelAndView mv = new ModelAndView();
			boolean result = false;
			
			
			result = interiorDAO.getInteriorQuestionAnswer(qno, qreply);
			
			mv.addObject("result", result); 
			mv.addObject("qno", qno);
			mv.addObject("qreply", qreply);
			mv.addObject("ino", ino);
			
			if(result) {
				
				mv.setViewName("redirect:/store_page.do");
			} 
			
			System.out.println("service-- qno ----->"+qno);
			System.out.println("service-- qreply ----->"+qreply);
			System.out.println("service-- ino ----->"+ino);
			return mv;
		}
	
	// 문의 답변하기 - 화면
		public String getInteriorQuestionAnswerProc(String qno, String ino) {
			ArrayList<StoreIndexVO> interior_answer = interiorDAO.getInteriorQuestionAnswerProc(qno);
			JsonArray jarry = new JsonArray();
			JsonObject jdata = new JsonObject();
			Gson gson = new Gson();
			for(StoreIndexVO vo : interior_answer) {
				JsonObject jobj = new JsonObject();
				jobj.addProperty("qreply", vo.getQreply());
				jobj.addProperty("qdate_r", vo.getQdate_r());
				jobj.addProperty("qstatus", vo.getQstatus());
				jobj.addProperty("ostatus", vo.getOstatus());
				jobj.addProperty("qtype", vo.getQtype());
				jobj.addProperty("qno", vo.getQno());
				
				jarry.add(jobj);
			}
			
			jdata.add("interior_answer", jarry);
			jdata.addProperty("ino", ino);
			jdata.addProperty("qno", qno);
			
			return gson.toJson(jdata);
		}
		
		// 문의 답변하기 - 화면
		public String getInteriorQuestionProc(String ino) {
			
			ArrayList<StoreIndexVO> interior_question = interiorDAO.getInteriorQeustion(ino);
			JsonArray jarry = new JsonArray();
			JsonObject jdata = new JsonObject();
			Gson gson = new Gson();
			for(StoreIndexVO vo : interior_question) {
				JsonObject jobj = new JsonObject();
				jobj.addProperty("rno", vo.getRno());
				jobj.addProperty("gno", vo.getGno());
				jobj.addProperty("goods_name", vo.getGoods_name());
				jobj.addProperty("qno", vo.getQno());
				jobj.addProperty("email", vo.getEmail());
				jobj.addProperty("qtype", vo.getQtype());
				jobj.addProperty("qcontent", vo.getQcontent());
				jobj.addProperty("qreply", vo.getQreply());
				jobj.addProperty("qstatus", vo.getQstatus());
				jobj.addProperty("qdate", vo.getQdate());
				jobj.addProperty("qdate_r", vo.getQdate_r());
				jobj.addProperty("ono", vo.getOno());
				jobj.addProperty("ostatus", vo.getOstatus());
				jobj.addProperty("nickname", vo.getNickname());
				jobj.addProperty("company", vo.getCompany());
				
				jarry.add(jobj);
			}
			
			jdata.add("interior_question", jarry);
			jdata.addProperty("ino", ino);
			
			return gson.toJson(jdata);
		}
		
		
		
	// 문의 작성하기
	public String getInteriorQuestionInsert(StoreIndexVO vo) {
		String result = "";
		String ino = vo.getIno();
		boolean dao_result = interiorDAO.getInteriorQuestionInsert(vo);
		
		if(dao_result) {
			result = "redirect:/store_page.do?ino="+ino;
		}else {
			System.out.println("error");
		}
		
		return result;
	}

	// 리뷰 작성하기
	public String getInteriorReviewInsert(StoreIndexVO vo) {
		String result="";
		String ino = vo.getIno();
		
		if(vo.getFile1().getSize()!=0) {
			UUID uuid = UUID.randomUUID();
			vo.setReview_image(vo.getFile1().getOriginalFilename());
			vo.setReview_simage(uuid+"_"+vo.getFile1().getOriginalFilename());
		}
		
		boolean dao_result = interiorDAO.getInteriorReviewInsert(vo);
		
		if(dao_result) {
			System.out.println("savepath===>"+vo.getSavepath());
			File file = new File(vo.getSavepath()+vo.getReview_simage());
			
			try {
				vo.getFile1().transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			result = "redirect:/store_page.do?ino="+ino;
		} else {
			System.out.println("error");
		}
		
		return result;
	}
	
	// 리뷰 - 상품 리스트 선택
	public String getInteriorReviewGoodsList(String gno) {
		ArrayList<StoreIndexVO> interior_review_goods_list = interiorDAO.getInteriorReviewGoodsList(gno);
		
		JsonArray jarry = new JsonArray();
		JsonObject jdata = new JsonObject();
		Gson gson = new Gson();
		for(StoreIndexVO vo : interior_review_goods_list) {
			JsonObject jobj = new JsonObject();
			jobj.addProperty("company", vo.getCompany());
			jobj.addProperty("ititle", vo.getItitle());
			jobj.addProperty("goods_simage", vo.getGoods_simage());
			jobj.addProperty("goods_name", vo.getGoods_name());
			
			jarry.add(jobj);
		}
		jdata.add("interior_review_goods_list", jarry);
		jdata.addProperty("gno", gno);
		
		return gson.toJson(jdata);
		
	}

	// 리뷰 페이지 - 베스트순
	public String getInteriorReview(String ino, String status, String rpage) {
		
		int start = 0;
	      int end = 0;
	      int pageSize = 5; //한 페이지당 출력되는 row
	      int pageCount = 1; //전체 페이지 수  : 전체 리스트 row /한 페이지당 출력되는 row
	      int dbCount = interiorDAO.getListReviewCount(ino, status); //DB연동 후 전체로우수 출력
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
		
		
		ArrayList<StoreIndexVO> interior_review = interiorDAO.getInteriorReview(ino, status, start, end);
		
		JsonArray jarry = new JsonArray();
		JsonObject jdata = new JsonObject();
		Gson gson = new Gson();
		for(StoreIndexVO vo : interior_review) {
			JsonObject jobj = new JsonObject();
			jobj.addProperty("vno", vo.getVno());
			jobj.addProperty("email", vo.getEmail());
			jobj.addProperty("gno", vo.getGno());
			jobj.addProperty("goods_name", vo.getGoods_name());
			jobj.addProperty("star", vo.getStar());
			jobj.addProperty("vcontent", vo.getVcontent());
			jobj.addProperty("review_simage", vo.getReview_simage());
			jobj.addProperty("vdate", vo.getVdate());
			jobj.addProperty("nickname", vo.getNickname());
			jobj.addProperty("member_spimage", vo.getMember_spimage());
			
			jarry.add(jobj);
		}
		
		jdata.add("interior_review", jarry);
		jdata.addProperty("ino", ino);
		jdata.addProperty("status", status);
		
		jdata.addProperty("dbcount", dbCount);
	    jdata.addProperty("reqpage", reqPage);
	    jdata.addProperty("pagesize", pageSize);
	    jdata.addProperty("status", status);
		
		return gson.toJson(jdata);
	}
	
	// 스크랩 처리 :: 삭제
	public ModelAndView getInteriorScrapDelProc(String email, String ino) {
		ModelAndView mv = new ModelAndView();
		boolean result = false;
		
		// 스크랩 유무 확인
		int scrap_exist = interiorDAO.getInteriorScrapExist(email, ino);
		mv.addObject("scrap_exist",scrap_exist);

		if(scrap_exist == 1) {
		// 스크랩 등록
			result = interiorDAO.getInteriorScrapDelProc(email, ino);
		}
		
		mv.addObject("result", result); 
		mv.addObject("email", email);
		mv.addObject("ino", ino);
		
		if(result) {

			mv.setViewName("redirect:/store_page.do");
		} 
		
		System.out.println("service-- ino ----->"+ino);
		System.out.println("service-- email ----->"+email);
		return mv;
	}
	
	// 스크랩 처리
	public ModelAndView getInteriorScrapProc(String email, String ino) {
		ModelAndView mv = new ModelAndView();
		boolean result = false;
		
		// 스크랩 유무 확인
		int scrap_exist = interiorDAO.getInteriorScrapExist(email, ino);
		mv.addObject("scrap_exist",scrap_exist);
		
		if(scrap_exist == 0) {
			// 스크랩 등록
			result = interiorDAO.getInteriorScrapProc(email, ino);
		}
		
		mv.addObject("result", result); 
		mv.addObject("email", email);
		mv.addObject("ino", ino);
		
		if(result) {
			mv.setViewName("redirect:/store_page.do");
		} 
		
		System.out.println("service-- ino ----->"+ino);
		System.out.println("service-- email ----->"+email);
		return mv;
	}
	
	// 스크랩 처리 - index :: 삭제
	public String getStoreScrapDelProc(String email, String ino) {
		boolean dao_result = false;
		String result= "";
		
		// 스크랩 유무 확인
		int scrap_exist = interiorDAO.getInteriorScrapExist(email, ino);
		
		if(scrap_exist == 1) {
			// 스크랩 등록
			dao_result = interiorDAO.getStoreScrapDelProc(email, ino);
		}
		
		
		if(dao_result) {
			
			result = "redirect:/store_page.do";
		} 
		
		System.out.println("service-- ino ----->"+ino);
		System.out.println("service-- email ----->"+email);
		return result;
	}
	
	// 스크랩 처리 - index
	public String getStoreScrapProc(String email, String ino) {
		boolean dao_result = false;
		String result= "";
		
		// 스크랩 유무 확인
		int scrap_exist = interiorDAO.getInteriorScrapExist(email, ino);
		
		if(scrap_exist == 0) {
			// 스크랩 등록
			dao_result = interiorDAO.getStoreScrapProc(email, ino);
		}
		
		
		if(dao_result) {
			result = "redirect:/store_page.do";
		} 
		
		System.out.println("service-- ino ----->"+ino);
		System.out.println("service-- email ----->"+email);
		return result;
	}
	
	// 스크랩 처리 - index
	public String getScrapProc(String email, String ino) {
		
		// 스크랩 유무 확인
		int scrap_exist = interiorDAO.getInteriorScrapExist(email, ino);
		JsonObject jdata = new JsonObject();
		Gson gson = new Gson();
		
		jdata.addProperty("scrap_exist", scrap_exist);
		jdata.addProperty("email", email);
		jdata.addProperty("ino", ino);
		
		return  gson.toJson(jdata);
	}
	
	
	

	// store_page - top
	public ModelAndView getInteriorTop(String ino, String email) {
		ModelAndView mv = new ModelAndView();
		
		
		
		// 상세페이지 : 상단부분 ---> 데이터 가져오기
		ArrayList<StoreIndexVO> interior_top = interiorDAO.getInteriorTop(ino);   
		StoreIndexVO vo = interior_top.get(0);
		
		for(int i=0; i<interior_top.size(); i++ ) {
			vo = interior_top.get(i);
			System.out.println(vo);
		}
		
		
		int scrap_exist = interiorDAO.getInteriorScrapExist(email, ino);
		
		
		// 문의페이지
		ArrayList<StoreIndexVO> interior_question = interiorDAO.getInteriorQeustion(ino); 

		StoreIndexVO qvo = interior_question.get(0);
		
		for(int i=0; i<interior_question.size(); i++ ) {
			qvo = interior_question.get(i);
			System.out.println(qvo);
		}
		
		mv.addObject("interior_top", interior_top);
		mv.addObject("vo", vo); 
		mv.addObject("ino", ino);
		mv.addObject("email", email);
		mv.addObject("scrap_exist", scrap_exist);
		mv.addObject("interior_question", interior_question);
		mv.addObject("qvo", qvo);
		mv.setViewName("/store/store_page");
		
		//System.out.println("service-- ino ----->"+interior_top);
		
		return mv;
	}
	
	
	// store_index - category
	public String getListCategory(String category, String[] tonelist,  String[] colorlist,  String[] seasonlist, String rpage) {
		
		  int start = 0;
	      int end = 0;
	      int pageSize = 9; //한 페이지당 출력되는 row
	      int pageCount = 1; //전체 페이지 수  : 전체 리스트 row /한 페이지당 출력되는 row
	      int dbCount = interiorDAO.getIndexListCount(category, tonelist, colorlist, seasonlist); //DB연동 후 전체로우수 출력
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
		
		ArrayList<StoreIndexVO> category_list = interiorDAO.getListCategory(category, tonelist, colorlist, seasonlist, start, end);
		JsonArray jarry = new JsonArray();
		JsonObject jdata = new JsonObject();
		Gson gson = new Gson();
		for(StoreIndexVO vo : category_list) {
			JsonObject jobj = new JsonObject();
			jobj.addProperty("ino", vo.getIno());
			jobj.addProperty("company", vo.getCompany());
			jobj.addProperty("ititle", vo.getItitle());
			jobj.addProperty("star", vo.getStar());
			jobj.addProperty("gno", vo.getGno());
			jobj.addProperty("goods_simage", vo.getGoods_simage());
			jobj.addProperty("goods_price", vo.getGoods_price());
			jobj.addProperty("star_avg", vo.getStar_avg());
			jobj.addProperty("star_count", vo.getStar_count());
			jobj.addProperty("rno", vo.getRno());
			
			jarry.add(jobj);
		}
		
		jdata.add("category_list", jarry);
		jdata.addProperty("category", category);
		
	    jdata.addProperty("dbcount", dbCount);
	    jdata.addProperty("reqpage", reqPage);
	    jdata.addProperty("pagesize", pageSize);
		
	    jdata.addProperty("tonelist", String.valueOf(tonelist));
		jdata.addProperty("colorlist", String.valueOf(colorlist));
		jdata.addProperty("seasonlist", String.valueOf(seasonlist));
		
		return gson.toJson(jdata);
	}

	
	// store_index - list
	public ModelAndView getList(String category) {
		ModelAndView mv = new ModelAndView();
		//System.out.println("service-------->"+category);
		ArrayList<StoreIndexVO> interior_list = interiorDAO.getInteriorList(category); 
		int icount = interiorDAO.getInteriorListCount(category);
		mv.addObject("interior_list", interior_list);
		mv.addObject("category", category);
		mv.addObject("icount", icount);
	    mv.setViewName("/store/store_index");
		
		return mv;
	}
	
	
	 
}
