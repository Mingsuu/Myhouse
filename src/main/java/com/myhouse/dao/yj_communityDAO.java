package com.myhouse.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.CommunityVO;

public class yj_communityDAO  extends DBConn{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.community2";
	
	/**
	 * 전체사진 리스트 (최신인기순)
	 */
	public ArrayList<CommunityVO> getList(String value){
		List<CommunityVO> list = sqlSession.selectList(namespace+".list22",value);
		return (ArrayList<CommunityVO>) list;
	}
	
	
}
