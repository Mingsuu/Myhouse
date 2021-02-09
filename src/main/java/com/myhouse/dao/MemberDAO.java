package com.myhouse.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.MemberVO;
import com.myhouse.vo.SessionVO;
import com.myhouse.vo.interiorVO;
import com.myhouse.vo.noticeVO;

public class MemberDAO extends DBConn{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private static String namespace="mapper.member";
	
	/**
	 *  update : 공지사항 업데이트
	 */
	public boolean stateUpdate2(String[] inos) {
		boolean result=true;
		for(String ino:inos) {
			if(sqlSession.update(namespace+".stateUpdate1",ino)==0) {
				result=false;
			}
			
		}
		return result;
	}
	/**
	 *  update : 공지사항 업데이트
	 */
	public boolean stateUpdate(String[] inos) {
		boolean result=true;
		for(String ino:inos) {
			if(sqlSession.update(namespace+".stateUpdate0",ino)==0) {
				result=false;
			}
			
		}
		return result;
	}
	/**
	 *  select : nid 입력 시 회원정보 가져옴 
	 */
	public ArrayList<MemberVO> getInfo2(ArrayList<interiorVO> list) {
		ArrayList<MemberVO> mlist=new ArrayList<MemberVO>();
		for(interiorVO vo:list) {
			String email=vo.getEmail();
			mlist.add((MemberVO)sqlSession.selectOne(namespace+".getinfo3", email));
		}
		return mlist;
	}
	/**
	 * Insert : 네이버 첫 로그인 시 정보 저장 
	 */
	public boolean getInsert2(MemberVO vo) {
		boolean result=false;
		int value= sqlSession.insert(namespace+".naverinsert", vo);
		if(value!=0) result=true;
		return result;
	}
	/**
	 *  select : naverId 입력 시 회원정보 가져옴 
	 */
	public SessionVO getInfo(String naverId) {
		return sqlSession.selectOne(namespace+".getinfo2", naverId);
	}
	/**
	 *  select : 이메일 입력 시 회원사진정보 가져옴 
	 */
	public String getProfile(String email) {
		return sqlSession.selectOne(namespace+".getprofile", email);
	}
	
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
	}
	
	
}
