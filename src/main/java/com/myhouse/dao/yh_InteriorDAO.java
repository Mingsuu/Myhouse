package com.myhouse.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.StoreIndexVO;

public class yh_InteriorDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.interior";
	
	// �ּ� �Է�
	public boolean getAddrInsert(String email) {
		boolean result = false;
		int value = sqlSession.update(namespace+".addr-insert", email);
		if(value !=0) result = true;
		
		return result;
	}
	
	// ���信�� �ٷα��� Ŭ����
	public boolean getPayment(String email, String[] gnolist, String[] ocountlist) {
		boolean result = false;
		
		Map<String, Object> order_param = new HashMap<String, Object>();
		
		
		
		order_param.put("email", email);           
		
		for(int i=0;i<gnolist.length;i++) {
			
			String gno = gnolist[i]; 
			String ocount =ocountlist[i]; 

			
			order_param.put("gno", gno);
			order_param.put("ocount", ocount);
			
		
			System.out.println("dao"+gno);
			System.out.println("dao"+ocount);
		}
		
		
		/*
		 * Map<String, Object> orderMap;
		 * 
		 * List<Map<String, Object>> orderList = new ArrayList<Map<String, Object>>();
		 * 
		 * 
		 * for(int i=0;i<gnolist.length;i++){ orderMap = new HashMap<String, Object>();
		 * String gno = gnolist[i]; orderMap.put("gno", gno);
		 * System.out.println("gno============>"+gno);
		 * 
		 * String ocount =ocountlist[i]; orderMap.put("ocount", ocount);
		 * System.out.println("ocount============>"+ocount); orderList.add(orderMap); }
		 * 
		 * 
		 * order_param.put("orderList", orderList);
		 * System.out.println("orderList============>"+orderList);
		 */
		int value  = sqlSession.insert(namespace+".order-insert", order_param);
		
		if(value != 0) result = true;
		
		return result;
	}
	
	
	
	
	/** ��ü ����Ʈ ī��Ʈ - ���� */
	public int getListQuestionCount(String ino) {
		return sqlSession.selectOne(namespace+".question-count", ino); 
	}
	/** ��ü ����Ʈ ī��Ʈ - ���� */
	public int getListReviewCount(String ino, String status) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("ino", ino);
		param.put("status", status);
		return sqlSession.selectOne(namespace+".review-count", param); 
	}
	//  ���� �亯�ϱ� - ����
	public boolean getInteriorQuestionAnswerDelete(String qno) {
		
		boolean result = false;
		
		System.out.println("insert-scrap====>eeee@qno:"+qno);
		
		int value = sqlSession.update(namespace+".interior-question-answer-delete", qno);
		if(value != 0) result = true;
		
		return result;
	} 
	//  ���� �亯�ϱ�
	public boolean getInteriorQuestionAnswer(String qno, String qreply) {
		Map<String, String> a_param = new HashMap<String, String>();
		a_param.put("qno", qno);
		a_param.put("qreply", qreply);
		
		boolean result = false;
		
		
		System.out.println("insert-scrap====>qno:"+qno);
		System.out.println("insert-scrap====>qreply:"+qreply);
		
		int value = sqlSession.update(namespace+".interior-question-answer", a_param);
		if(value != 0) result = true;
		
		return result;
	}
	// ���� �亯�ϱ� :: ȭ��
		public ArrayList<StoreIndexVO> getInteriorQuestionAnswerProc(String qno) {
			List<StoreIndexVO> interior_answer = sqlSession.selectList(namespace+".interior-question-answer-proc", qno);
			return (ArrayList<StoreIndexVO>)interior_answer;
		}
	
	
	// ���� �ۼ��ϱ�
	public boolean getInteriorQuestionInsert(StoreIndexVO vo) {
		boolean result = false;
		
		int value = sqlSession.insert(namespace+".interior-question-insert", vo);
		
		if(value != 0) result = true;
		return result;
	}
	
	// ���� ������
	public ArrayList<StoreIndexVO> getInteriorQeustion(String ino, int start, int end) {
		Map<String, String> param = new HashMap<String, String>();
		
		param.put("ino",ino);
		param.put("start", String.valueOf(start));
		param.put("end", String.valueOf(end)); 
		
		List<StoreIndexVO> interior_question = sqlSession.selectList(namespace+".interior-question", param);
		return (ArrayList<StoreIndexVO>)interior_question;
	}
	
	// ���� �ۼ��ϱ�
	public boolean getInteriorReviewInsert(StoreIndexVO vo) {
		boolean result = false;
		int value = sqlSession.insert(namespace+".interior-review-insert", vo);
		
		if(value != 0) result = true;
			System.out.print("insert");
		return result;	
	}
	
	// ���� - ��ǰ����Ʈ ����
	public ArrayList<StoreIndexVO> getInteriorReviewGoodsList(String gno) {
		List<StoreIndexVO> interior_review_goods_list = sqlSession.selectList(namespace+".interior-review-goods-list", gno);
		return (ArrayList<StoreIndexVO>)interior_review_goods_list;
	}

	// ���� ������ - ����Ʈ��
	public ArrayList<StoreIndexVO> getInteriorReview(String ino, String status, int start, int end) {
		Map<String, String> param = new HashMap<String, String>();
		
		param.put("ino",ino);
		param.put("status",status);
		param.put("start", String.valueOf(start));
		param.put("end", String.valueOf(end));
		
		List<StoreIndexVO> interior_review = sqlSession.selectList(namespace+".interior-review", param);
		return (ArrayList<StoreIndexVO>)interior_review;
	}
	
	// ��ũ�� ��Ͽ���
	public int getInteriorScrapExist(String email, String ino) {
		Map<String, String> s_insert_param = new HashMap<String, String>();
		s_insert_param.put("email", email);
		s_insert_param.put("ino", ino);
		
		System.out.println("insert-scrap-exist====>email:"+email);
		System.out.println("insert-scrap-exist====>ino:"+ino);
		
		return sqlSession.selectOne(namespace+".interior-scrap-exist", s_insert_param);
	}
	
	//  ��ũ�� ó��
	public boolean getInteriorScrapDelProc(String email, String ino) {
		boolean result = false;

		Map<String, String> s_insert_param = new HashMap<String, String>();
		s_insert_param.put("email", email);
		s_insert_param.put("ino", ino);
		
		System.out.println("insert-scrap====>email:"+email);
		System.out.println("insert-scrap====>ino:"+ino);
		
		int value = sqlSession.insert(namespace+".interior-scrap-delete", s_insert_param);
		if(value != 0) result = true;
		
		return result;
	}
	
	//  ��ũ�� ó��
	public boolean getInteriorScrapProc(String email, String ino) {
		boolean result = false;
		
		Map<String, String> s_insert_param = new HashMap<String, String>();
		s_insert_param.put("email", email);
		s_insert_param.put("ino", ino);
		
		System.out.println("insert-scrap====>email:"+email);
		System.out.println("insert-scrap====>ino:"+ino);
		
		int value = sqlSession.insert(namespace+".interior-scrap-insert", s_insert_param);
		if(value != 0) result = true;
		
		return result;
	}
	//  ��ũ�� ó��
	public boolean getStoreScrapDelProc(String email, String ino) {
		boolean result = false;
		
		Map<String, String> s_insert_param = new HashMap<String, String>();
		s_insert_param.put("email", email);
		s_insert_param.put("ino", ino);
		
		System.out.println("insert-scrap====>email:"+email);
		System.out.println("insert-scrap====>ino:"+ino);
		
		int value = sqlSession.insert(namespace+".interior-scrap-delete", s_insert_param);
		if(value != 0) result = true;
		
		return result;
	}
	
	//  ��ũ�� ó��
	public boolean getStoreScrapProc(String email, String ino) {
		boolean result = false;
		
		Map<String, String> s_insert_param = new HashMap<String, String>();
		s_insert_param.put("email", email);
		s_insert_param.put("ino", ino);
		
		System.out.println("insert-scrap====>email:"+email);
		System.out.println("insert-scrap====>ino:"+ino);
		
		int value = sqlSession.insert(namespace+".interior-scrap-insert", s_insert_param);
		if(value != 0) result = true;
		
		return result;
	}
	
	// store_page - interiorTop
	public ArrayList<StoreIndexVO> getStoreMainOrderProc(String gno) {
		List<StoreIndexVO> main_order = sqlSession.selectList(namespace+".main-order", gno);
		return (ArrayList<StoreIndexVO>) main_order;
	}
	
	// store_page - interiorTop
	public ArrayList<StoreIndexVO> getInteriorTop(String ino) {
		//System.out.println("dao----------->"+ino);
		List<StoreIndexVO> interiror_top = sqlSession.selectList(namespace+".interior-top", ino);
		//System.out.println("dao----------->"+interiror_top);
		return (ArrayList<StoreIndexVO>) interiror_top;
	}
	
	// store_index - list count
	public int getIndexListCount(String category, String[] tonelist,  String[] colorlist,  String[] seasonlist) {
		Map<String, String[]> category_param = new HashMap<String, String[]>();
		String[] category_ = new String[1] ;
		category_[0] = category;
		System.out.println(category_.length);
		category_param.put("category", category_);                                     
		category_param.put("tonelist", tonelist);
		category_param.put("colorlist", colorlist);
		category_param.put("seasonlist", seasonlist);
		
		System.out.println("tonelist !! "+tonelist.length);
		System.out.println("colorlist !!  "+colorlist.length);
		System.out.println("seasonlist  !! "+seasonlist.length);
		
		return sqlSession.selectOne(namespace+".category_list_count", category_param);
	}
	
	// store_index - list -category
	public ArrayList<StoreIndexVO> getListCategory(String category, String[] tonelist, String[] colorlist, String[] seasonlist,
													int start, int end){
		Map<String, String[]> category_param = new HashMap<String, String[]>();
		String[] category_ = new String[1] ;
		String[] start_ = new String[1] ;
		String[] end_ = new String[1] ;
		
		category_[0] = category;
		start_[0] = String.valueOf(start);
		end_[0] = String.valueOf(end);
		System.out.println(category_.length);
		category_param.put("category", category_);                                     
		category_param.put("tonelist", tonelist);
		category_param.put("colorlist", colorlist);
		category_param.put("seasonlist", seasonlist);
		
		category_param.put("start", start_);
		category_param.put("end", end_);
		
		//System.out.println("tonelist  "+tonelist.length);
		//System.out.println("colorlist   "+colorlist.length);
		//System.out.println("seasonlist  "+seasonlist.length);
		
		List<StoreIndexVO> category_list = sqlSession.selectList(namespace+".category_list", category_param);
		return (ArrayList<StoreIndexVO>)category_list;
	} 
	// store_index - list
	public ArrayList<StoreIndexVO> getInteriorList(String category){
		List<StoreIndexVO> interior_list = sqlSession.selectList(namespace+".interior-list", category);
		return (ArrayList<StoreIndexVO>)interior_list;
	} 
	
	// ī�װ��� ���׸���Խù� �� ����
	public int getInteriorListCount(String category) {
		//System.out.println("interior-list-count--->");
		//System.out.println("dao---------->"+category); 
		return sqlSession.selectOne(namespace + ".interior-list-count", category);
	}
	
}
