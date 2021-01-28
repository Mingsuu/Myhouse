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
	 *  select : 이메일 입력 시 회원 정보 가져옴 
	 */
	public String getPass(String email) {
		return sqlSession.selectOne(namespace+".getinfo", email);
	}
	
	/**
	 *   회원가입 - 아이디 중복체크l
	 */
	public int getIdCheck(String email) {
		return sqlSession.selectOne(namespace+".idcheck", email);
	}
		
	/**
	 * Select 로그인
	 */
	public SessionVO getLogin(MemberVO vo) {
		 return sqlSession.selectOne(namespace +".login",vo);
	}
	 
	
	/**
	 * Insert : 회원가입 
	 */
	public boolean getInsert(MemberVO vo) {
		boolean result=false;
		int value= sqlSession.insert(namespace+".insert", vo);
		if(value!=0) result=true;
		return result;
		/*
		boolean result=false;
		
		try {
			String sql="insert into h_member values(?,?,?,'','','','','','','','','','',sysdate,'','','','','')";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getEmail());
			pstmt.setString(2, vo.getPass());
			pstmt.setString(3, vo.getNickname());
			
			int val = pstmt.executeUpdate();
			if(val!=0) {result=true;}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
		*/
	}
	
	
}
