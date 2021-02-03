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
	
	// ���� ������
	public ArrayList<StoreIndexVO> getInteriorQeustion(String ino) {
		List<StoreIndexVO> interior_question = sqlSession.selectList(namespace+".interior-question", ino);
		return (ArrayList<StoreIndexVO>)interior_question;
	}
	
	// ���� �ۼ��ϱ�
	/*
	 * public boolean getInteriorReviewInsert(StoreIndexVO vo) { boolean result =
	 * false; int value = sqlSession.insert(namespace+".interior-review-insert",
	 * vo); if(value != 0) result = true; return result; }
	 */
	
	// ���� ������ - ����
	public ArrayList<StoreIndexVO> getInteriorReviewPhoto(String ino) {
		List<StoreIndexVO> interior_review = sqlSession.selectList(namespace+".interior-review-photo", ino);
		return (ArrayList<StoreIndexVO>)interior_review;
	}
	
	// ���� ������ - �ֽż�
	public ArrayList<StoreIndexVO> getInteriorReviewRecently(String ino) {
		List<StoreIndexVO> interior_review = sqlSession.selectList(namespace+".interior-review-recently", ino);
		return (ArrayList<StoreIndexVO>)interior_review;
	}
	
	// ���� ������ - ����Ʈ��
	public ArrayList<StoreIndexVO> getInteriorReview(String ino) {
		List<StoreIndexVO> interior_review = sqlSession.selectList(namespace+".interior-review", ino);
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
	
	// store_page - interiorTop
	public ArrayList<StoreIndexVO> getInteriorTop(String ino) {
		//System.out.println("dao----------->"+ino);
		List<StoreIndexVO> interiror_top = sqlSession.selectList(namespace+".interior-top", ino);
		//System.out.println("dao----------->"+interiror_top);
		return (ArrayList<StoreIndexVO>) interiror_top;
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
