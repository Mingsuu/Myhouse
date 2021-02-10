package com.myhouse.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.tagVO;

public class yk_tagDAO extends DBConn{
	@Autowired
	private SqlSessionTemplate sqlSession;

	private static String namespace = "mapper.yktag";
	
	public int tagCount(String pno) {
		return sqlSession.selectOne(namespace+".tagcount",pno);
	}
	
	public ArrayList<tagVO> tagList(String pno){
		List<tagVO> list = sqlSession.selectList(namespace+".taglist",pno);
		return (ArrayList<tagVO>) list;
	}
		
}
