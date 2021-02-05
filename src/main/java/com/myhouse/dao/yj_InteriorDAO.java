package com.myhouse.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.StoreIndexVO;

public class yj_InteriorDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.interior2";

	// store_index - list
	public ArrayList<StoreIndexVO> getInteriorList(String value){
		List<StoreIndexVO> interior_list = sqlSession.selectList(namespace+".list1", value);
		return (ArrayList<StoreIndexVO>)interior_list;
	} 
	
}
