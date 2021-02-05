package com.myhouse.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.PhotoVO;



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
	/*	
		try {
			String sql = "insert into cgvboard "
				+ " values('b_'||sequ_cgvboard.nextval,?,?,?,?,sysdate,0)";
			
			getPreparedStatement(sql);
			pstmt.setString(1,vo.getBtitle());
			pstmt.setString(2,vo.getBcontent());
			pstmt.setString(3,vo.getBfile());
			pstmt.setString(4,vo.getBsfile());
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	
	*/
	}
}








