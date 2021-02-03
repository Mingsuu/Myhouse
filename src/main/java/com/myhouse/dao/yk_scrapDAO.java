package com.myhouse.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class yk_scrapDAO extends DBConn{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.scrap";
	
	/**
	 * ½ºÅ©·¦ °¹¼ö
	 */
	public int getCount(String pno) {
		return sqlSession.selectOne(namespace+".countscrap",pno);
	}
	
}
