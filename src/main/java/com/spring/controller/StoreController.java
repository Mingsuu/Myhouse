package com.spring.controller;

import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.myhouse.vo.StoreIndexVO;
import com.spring.service.InteriorServiceImpl;

@Controller
public class StoreController {
	
	@Autowired
	private InteriorServiceImpl interiorService; 
	

	/*
	 * store_pay_cancel ȭ��
	 */
	@RequestMapping(value="/store_pay_cancel.do",method=RequestMethod.GET) 
	public String store_pay_cancel() {
		
		return "/store/store_pay_cancel";
	}
	
	/*
	 * store_pay_fin_card ȭ��
	 */
	@RequestMapping(value="/store_pay_fin_card.do",method=RequestMethod.GET) 
	public String store_pay_fin_card() {
		
		return "/store/store_pay_fin_card";
	}
	/*
	 * store_pay_finish ȭ��
	 */
	@RequestMapping(value="/store_pay_finish.do",method=RequestMethod.GET) 
	public String store_pay_finish() {
		
		return "/store/store_pay_finish";
	}
	
	/*
	 * store_payment ȭ��
	 */
	@RequestMapping(value="/store_payment.do",method=RequestMethod.GET) 
		public String store_payment() {
			
			return "/store/store_payment";
		}
	
	/*
	 * store_page :: question - delete
	 */
	@ResponseBody
	@RequestMapping(value="/interior_question_answer_delete.do", method=RequestMethod.GET)
	public String interior_question_answer_delete(String qno, String ino) {
		System.out.println("store_index qno!!!!!!!!!!!!---------->"+qno);
		System.out.println("store_index ino!!!!!!!!!!!!!!---------->"+ino);
		return interiorService.getInteriorQuestionAnswerDelete(qno, ino);
	}
	
	/*
	 * store_page :: question - answer :: ȭ��
	 */
	@ResponseBody
	@RequestMapping(value="/interior_question_answer_proc.do", method=RequestMethod.GET,
					produces="text/plain;charset=UTF-8")
	public String interior_question_answer_proc(String qno, String ino) {
		System.out.println("store_index qno!!!---------->"+qno);
		System.out.println("store_index ino!!!---------->"+ino);
		return interiorService.getInteriorQuestionAnswerProc(qno, ino);
	}
	
	/*
	 * store_page :: question - answer
	 */
	@RequestMapping(value="/interior_question_answer.do", method=RequestMethod.GET)
	public ModelAndView interior_question_answer(String qno, String qreply, String ino) {
		System.out.println("store_index qno---------->"+qno);
		System.out.println("store_index ino---------->"+ino);
		System.out.println("store_index qreply---------->"+qreply);
		return interiorService.getInteriorQuestionAnswer(qno, qreply, ino);
	}
	
	/*
	 * store_page :: question - write
	 */
	@RequestMapping(value="/interior_question_insert.do", method=RequestMethod.POST)
	public String interior_question_insert(StoreIndexVO vo) {
		vo.setEmail("test0@naver.com");
		return interiorService.getInteriorQuestionInsert(vo);
	}
	
	/*
	 * store_page :: review - write
	 */
	@RequestMapping(value="/interior_review_insert.do", method=RequestMethod.POST)
	public String interior_review_insert(StoreIndexVO vo, HttpServletRequest request) {
		
		String path1 = request.getSession().getServletContext().getRealPath("/");
		String path2 = "\\resources\\upload\\";
		vo.setEmail("test0@naver.com");
		vo.setSavepath(path1+path2);
		
		return interiorService.getInteriorReviewInsert(vo);
	}
	
	/*
	 * store_page :: review - ��ǰ����Ʈ ����
	 */
	@ResponseBody
	@RequestMapping(value="/interior_review_goods_list.do", method=RequestMethod.GET,
					produces="text/plain;charset=UTF-8")
	public String interior_review_goods_list(String gno) {
		return interiorService.getInteriorReviewGoodsList(gno);
	}
	
	/*
	 * store_page :: review - ���丮�丸
	 */
	@ResponseBody
	@RequestMapping(value="/interior_review_photo.do", method=RequestMethod.GET,
					produces="text/plain;charset=UTF-8") 
	public String interior_review_photo(String ino, String rpage) {
		
		System.out.println("photo~~"+rpage);
		return interiorService.getInteriorReviewPhoto(ino, rpage);
	}
	
	/*
	 * store_page :: review - �ֽż�
	 */
	@ResponseBody
	@RequestMapping(value="/interior_review_recently.do", method=RequestMethod.GET,
				produces="text/plain;charset=UTF-8") 
	public String interior_review_recently(String ino, String rpage) {
		System.out.println("recently~~"+rpage);
		return interiorService.getInteriorReviewRecently(ino, rpage);
	}
	
	/*
	 * store_page :: review - ����Ʈ��
	 */
	@ResponseBody
	@RequestMapping(value="/interior_review.do", method=RequestMethod.GET,
					produces="text/plain;charset=UTF-8") 
	public String interior_review(String ino, String rpage) {
		return interiorService.getInteriorReview(ino, rpage);
	}
	
	
	
	/*
	 * store_page :: ��ũ�� ó�� :: ����
	 */
	@RequestMapping(value="/interior_scrap_del_proc.do", method=RequestMethod.GET)
	public ModelAndView interior_scrap_del_proc(String email, String ino) {
		System.out.println("store_index---------->"+ino);
		System.out.println("store_index---------->"+email);
		return interiorService.getInteriorScrapDelProc("test0@naver.com", ino);
	}
	
	/*
	 * store_page :: ��ũ�� ó��
	 */
	@RequestMapping(value="/interior_scrap_proc.do", method=RequestMethod.GET)
	public ModelAndView interior_scrap_proc(String email, String ino) {
		System.out.println("store_index---------->"+ino);
		System.out.println("store_index---------->"+email);
		return interiorService.getInteriorScrapProc("test0@naver.com", ino);
	}
	/*
	 * store_index :: ��ũ�� ó�� :: ����
	 */
	@ResponseBody
	@RequestMapping(value="/store_scrap_del_proc.do", method=RequestMethod.GET)
	public String store_scrap_del_proc(String email, String ino) {
		System.out.println("store_index~!~!~---------->"+ino);
		System.out.println("store_index~!~!~!~!---------->"+email);
		return interiorService.getStoreScrapDelProc("test0@naver.com", ino);
	}
	
	/*
	 * store_index :: ��ũ�� ó��
	 */
	@ResponseBody
	@RequestMapping(value="/store_scrap_proc.do", method=RequestMethod.GET)
	public String store_scrap_proc(String email, String ino) {
		System.out.println("store_index~!~!~!~!---------->"+ino);
		System.out.println("store_index~!~!~!~!---------->"+email);
		return interiorService.getStoreScrapProc("test0@naver.com", ino);
	}
	
	
	
	/*
	 * store_page ȭ��
	 */
	@RequestMapping(value="/store_page.do",method=RequestMethod.GET) 
	public ModelAndView store_page(String ino, String email ) {
		System.out.println("store_index page---------->"+ino);
		System.out.println("store_index page---------->"+email);
		return interiorService.getInteriorTop(ino, "test0@naver.com");
	}
	
	/*
	 * store_index - ��ī�װ�
	 */
	@ResponseBody
	@RequestMapping(value="/category_list.do", method=RequestMethod.GET,
				produces="text/plain;charset=UTF-8")
	public String category_tone(String category, String tone, String color, String season, String rpage) {
		
		System.out.println(category);
		System.out.println("controller---->"+tone);
		System.out.println("controller---->"+color);
		System.out.println("controller---->"+season);
		System.out.println("controller + rpage---->"+rpage);
		
		StringTokenizer tone_ = new StringTokenizer(tone,",");
		StringTokenizer color_ = new StringTokenizer(color,",");
		StringTokenizer season_ = new StringTokenizer(season,",");
		
		String[] tonelist = new String[tone_.countTokens()];
		String[] colorlist = new String[color_.countTokens()];
		String[] seasonlist = new String[season_.countTokens()];
		
		for(int i=0; i<tonelist.length; i++) {
			tonelist[i] = tone_.nextToken();
		}
		for(int i=0; i<colorlist.length; i++) {
			colorlist[i] = color_.nextToken();
		}
		for(int i=0; i<seasonlist.length; i++) {
			seasonlist[i] = season_.nextToken();
		}
		
		
		return interiorService.getListCategory(category, tonelist, colorlist, seasonlist, rpage); 
	}
	/*
	 * store_index ȭ�� - ��ũ��
	 */
	@ResponseBody
	@RequestMapping(value="/scrap_exist_proc.do", method=RequestMethod.GET)
	public String scrap_exist_proc(String email, String ino) {
		System.out.println("inooooo"+ino);
		System.out.println("emailll"+email);
		return interiorService.getScrapProc("test0@naver.com",ino ); 
	}
	/*
	 * store_index ȭ��
	 */
	@RequestMapping(value="/store_index.do", method=RequestMethod.GET)
	public ModelAndView store_index(String category, String rpage) {
		System.out.println("rpage~~~~~~~~~~>"+rpage);
		return interiorService.getList(category); 
	}
	
	
}
