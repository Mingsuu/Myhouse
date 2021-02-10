package com.myhouse.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.PhotoVO;
import com.myhouse.vo.StoreIndexVO;

public class H_UploadPhotoDAO extends DBConn{
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.uploadphoto";	
	
	/**
	 * Insert : ±Û¾²±â 
	 */
	public boolean getInsert(PhotoVO vo) {
		boolean result = false;
		int value = sqlSession.insert(namespace+".insert",vo);
		if(value != 0) result = true;
		return result;
	}
	
	// store_index - list
		public ArrayList<StoreIndexVO> getInteriorList(String value){
			List<StoreIndexVO> interior_list = sqlSession.selectList(namespace+".list1", value);
			return (ArrayList<StoreIndexVO>)interior_list;
		} 
	
	
}








