package com.myhouse.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.PhotoVO;
import com.myhouse.vo.StoreIndexVO;

public class H_basketDAO extends DBConn{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.basket";	
	
	/**
	 * Insert : 장바구니 등록
	 */
	public boolean getInsert(PhotoVO vo) {
		boolean result = false;
		int value = sqlSession.insert(namespace+".insert",vo);
		if(value != 0) result = true;
		return result;
	
	}

	
	
}








