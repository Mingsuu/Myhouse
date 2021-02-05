package com.myhouse.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.goodsVO;

public class yk_goodsDAO extends DBConn {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.ykgoods";
	
	public boolean getInsert(goodsVO vo) {
		boolean result = false;
		int value = sqlSession.insert(namespace + ".insert", vo);
		if (value != 0)
			result = true;
		return result;
	} 
}
