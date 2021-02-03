package com.myhouse.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.MemberVO;
import com.myhouse.vo.PhotoVO;
import com.myhouse.vo.interiorVO;
import com.myhouse.vo.reviewVO;

public class MypagePhotoDAO extends DBConn{

	@Autowired
	private SqlSessionTemplate sqlSession;
	private static String namespace="mapper.photo";

	
	/**
	 * 리뷰 리스트 가져오기
	 */
	public ArrayList<reviewVO> getreview(){
		List<reviewVO> list = sqlSession.selectList(namespace+".review");
		return (ArrayList<reviewVO>)list;
	}
	
	
	/**
	 * 회원정보 수정처리하기
	 */
	public boolean getOptionUpdate(MemberVO vo) {
		boolean result = false;
		int value = sqlSession.update(namespace+".update",vo);
		if(value != 0) result = true;
		return result;
	}
	
	
	
	/**
	 * 회원정보수정 가져오기
	 */
	public MemberVO getoption() {
		MemberVO ovo = sqlSession.selectOne(namespace+".option");
		return ovo;
	}
	
	
	/**
	 * 좋아요한 사진 가져오기
	 */
	public ArrayList<PhotoVO> getlike(){
		List<PhotoVO> list = sqlSession.selectList(namespace+".likelist");
		return (ArrayList<PhotoVO>)list;
	}
	
	
	/**
	 *  주문내역 리스트 가져오기
	 */
	public ArrayList<interiorVO> getorder(){
		List<interiorVO> list = sqlSession.selectList(namespace+".orderlist");
		return (ArrayList<interiorVO>)list;
	}
	
	
	/**
	 * 프로필 닉네임,팔로워,팔로잉 가져오기
	 */
	public MemberVO getprofile() {
		MemberVO prof = sqlSession.selectOne(namespace+".profile");
		return prof;
	}
	
	
	/**
	 * 사진 불러오기(사진)
	 */
	public ArrayList<PhotoVO> getpicture() {
		List<PhotoVO> list = sqlSession.selectList(namespace+".picture");
		return (ArrayList<PhotoVO>)list;
	}
	
	/**
	 * 사진 총갯수 가져오기(모두보기)
	 */
	public int getphotocount() {
		return sqlSession.selectOne(namespace+".photocount");
	}
	
	
	/**
	 * 사진 리스트 불러오기(모두보기)
	 */
	public ArrayList<PhotoVO> getphotolist(){
		List<PhotoVO> list = sqlSession.selectList(namespace+".photolist");
		return (ArrayList<PhotoVO>)list;
		
	}
	
	
}
