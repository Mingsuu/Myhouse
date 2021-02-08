package com.myhouse.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.MemberVO;
import com.myhouse.vo.SessionVO;

public class MemberDAO extends DBConn{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.member";
	
	
	/**
	 * Insert : ���̹� ù �α��� �� ���� ���� 
	 */
	public boolean getInsert2(MemberVO vo) {
		boolean result=false;
		int value= sqlSession.insert(namespace+".naverinsert", vo);
		if(value!=0) result=true;
		return result;
	}
	/**
	 *  select : naverId �Է� �� ȸ������ ������ 
	 */
	public SessionVO getInfo(String naverId) {
		return sqlSession.selectOne(namespace+".getinfo2", naverId);
	}
	/**
	 *  select : �̸��� �Է� �� ȸ���������� ������ 
	 */
	public String getProfile(String email) {
		return sqlSession.selectOne(namespace+".getprofile", email);
	}
	
	/**
	 *  select : �̸��� �Է� �� ȸ�� ���� ������ 
	 */
	public String getPass(String email) {
		return sqlSession.selectOne(namespace+".getinfo", email);
	}
	
	/**
	 *   ȸ������ - ���̵� �ߺ�üũl
	 */
	public int getIdCheck(String email) {
		return sqlSession.selectOne(namespace+".idcheck", email);
	}
		
	/**
	 * Select �α���
	 */
	public SessionVO getLogin(MemberVO vo) {
		 return sqlSession.selectOne(namespace +".login",vo);
	}
	 
	
	/**
	 * Insert : ȸ������ 
	 */
	public boolean getInsert(MemberVO vo) {
		boolean result=false;
		int value= sqlSession.insert(namespace+".insert", vo);
		if(value!=0) result=true;
		return result;
	}
	
	
}
