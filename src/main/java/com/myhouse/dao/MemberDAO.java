package com.myhouse.dao;

import java.sql.ResultSet;

import com.myhouse.vo.MemberVO;

public class MemberDAO extends DBConn{
	
	/**
	 * Select 로그인
	 */
	/*
	 * public SessionVO getLogin(CgvMemberVO vo) { SessionVO svo= new SessionVO();
	 * try { String
	 * sql="select count(*), name from cgvmember where id=? and pass=? group by name"
	 * ; getPreparedStatement(sql); pstmt.setString(1, vo.getId());
	 * pstmt.setString(2, vo.getPass());
	 * 
	 * ResultSet rs=pstmt.executeQuery(); if(rs.next()) {
	 * svo.setResult(rs.getInt(1)); svo.setName(rs.getString(2)); }
	 * 
	 * }catch(Exception e) { e.printStackTrace(); }
	 * 
	 * return svo; }
	 */
	
	/**
	 * Select 로그인
	 */
	
	 public int getLogin(MemberVO vo) { int result =0; try { String
	  sql="select count(*) from cgvmember where id=? and pass=?";
	  getPreparedStatement(sql); pstmt.setString(1, vo.getEmail()); pstmt.setString(2,
	  vo.getPass());
	  
	  ResultSet rs=pstmt.executeQuery(); if(rs.next())result=rs.getInt(1);
	  
	  }catch(Exception e) { e.printStackTrace(); }
	  
	 return result; }
	 
	
	/**
	 * Insert : 회원가입 
	 */
	public boolean getInsert(MemberVO vo) {
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
	}
	
	
}
