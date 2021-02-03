package com.myhouse.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class yk_likeDAO extends DBConn{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.like";
	
	/**
	 * ÁÁ¾Æ¿ä °¹¼ö
	 */
	public int getCount(String pno) {
		return sqlSession.selectOne(namespace+".countlike",pno);
	}
}
