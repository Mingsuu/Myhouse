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
	 * ���� ��ȸ�� ������Ʈ
	 */
	public void getUpdatehits(String pno) {
		sqlSession.update(namespace+".updatehits",pno);
	}
	/**
	 * �����Խù� ����
	 */
	public PhotoVO content(String pno) {
		return sqlSession.selectOne(namespace+".content",pno);
	}
	/**
	 * ���� �ۼ��� ����
	 */
	public MemberVO getWriter(String pno) {
		return sqlSession.selectOne(namespace+".getwriter",pno);
	}
	/**
	 * �ۼ��� ���� ����Ʈ
	 */
	public ArrayList<PhotoVO> getPhoto(String pno) {
		List<PhotoVO> list = sqlSession.selectList(namespace+".getphotos",pno);
		return (ArrayList<PhotoVO>)list;
	}
	
}
