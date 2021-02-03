package com.spring.service;

import java.util.ArrayList;

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
	
	// ���� �ۼ��ϱ�
	/*
	 * public ModelAndView getInteriorReviewInsert(StoreIndexVO vo) { ModelAndView
	 * mv = new ModelAndView(); boolean result = false; result =
	 * interiorDAO.getInteriorReviewInsert(vo);
	 * 
	 * mv.addObject("result", result);
	 * 
	 * if(result) { mv.setViewName("redirect:/store_page.do"); }
	 * 
	 * return mv; }
	 */
	
	// ���� ������ - �ֽż�
	public String getInteriorReviewPhoto(String ino) {
		ArrayList<StoreIndexVO> interior_review = interiorDAO.getInteriorReviewPhoto(ino);
		
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
		
		return gson.toJson(jdata);
	}
	
	// ���� ������ - �ֽż�
	public String getInteriorReviewRecently(String ino) {
		ArrayList<StoreIndexVO> interior_review = interiorDAO.getInteriorReviewRecently(ino);
		
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
		
		return gson.toJson(jdata);
	}
	
	// ���� ������ - ����Ʈ��
	public String getInteriorReview(String ino) {
		ArrayList<StoreIndexVO> interior_review = interiorDAO.getInteriorReview(ino);
		
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
		
		return gson.toJson(jdata);
	}
	
	// ��ũ�� ó�� :: ����
	public ModelAndView getInteriorScrapDelProc(String email, String ino) {
		ModelAndView mv = new ModelAndView();
		boolean result = false;
		
		// ��ũ�� ���� Ȯ��
		int scrap_exist = interiorDAO.getInteriorScrapExist(email, ino);
		mv.addObject("scrap_exist",scrap_exist);

		if(scrap_exist == 1) {
		// ��ũ�� ���
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
	
	// ��ũ�� ó��
	public ModelAndView getInteriorScrapProc(String email, String ino) {
		ModelAndView mv = new ModelAndView();
		boolean result = false;
		
		// ��ũ�� ���� Ȯ��
		int scrap_exist = interiorDAO.getInteriorScrapExist(email, ino);
		mv.addObject("scrap_exist",scrap_exist);
		
		if(scrap_exist == 0) {
			// ��ũ�� ���
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
	
	// store_page - top
	public ModelAndView getInteriorTop(String ino, String email) {
		ModelAndView mv = new ModelAndView();
		
		// �������� : ��ܺκ� ---> ������ ��������
		ArrayList<StoreIndexVO> interior_top = interiorDAO.getInteriorTop(ino);   
		StoreIndexVO vo = interior_top.get(0);
		
		for(int i=0; i<interior_top.size(); i++ ) {
			vo = interior_top.get(i);
			System.out.println(vo);
		}
		
		int scrap_exist = interiorDAO.getInteriorScrapExist(email, ino);
		
		// ����������
		ArrayList<StoreIndexVO> interior_review = interiorDAO.getInteriorReview(ino);
		
		// ����������
		ArrayList<StoreIndexVO> interior_question = interiorDAO.getInteriorQeustion(ino); 
		
		mv.addObject("interior_top", interior_top);
		mv.addObject("vo", vo); 
		mv.addObject("ino", ino);
		mv.addObject("email", email);
		mv.addObject("scrap_exist", scrap_exist);
		mv.addObject("interior_review", interior_review);
		mv.addObject("interior_question", interior_question);
		mv.setViewName("/store/store_page");
		
		//System.out.println("service-- ino ----->"+interior_top);
		
		return mv;
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
