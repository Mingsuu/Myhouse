package com.myhouse.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.MemberVO;
import com.myhouse.vo.PhotoVO;

public class yk_PhotoDAO extends DBConn {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.photo";
	
	/**
	 * 사진 조회수 업데이트
	 */
	public void getUpdatehits(String pno) {
		sqlSession.update(namespace+".updatehits",pno);
	}
	/**
	 * 사진게시물 내용
	 */
	public PhotoVO content(String pno) {
		return sqlSession.selectOne(namespace+".content",pno);
	}
	/**
	 * 사진 작성자 정보
	 */
	public MemberVO getWriter(String pno) {
		return sqlSession.selectOne(namespace+".getwriter",pno);
	}
	/**
	 * 작성자 사진 리스트
	 */
	public ArrayList<PhotoVO> getPhoto(String pno) {
		List<PhotoVO> list = sqlSession.selectList(namespace+".getphotos",pno);
		return (ArrayList<PhotoVO>)list;
	}
	
}
