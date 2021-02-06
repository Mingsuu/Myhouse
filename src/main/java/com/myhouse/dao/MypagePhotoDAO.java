package com.myhouse.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.MemberVO;
import com.myhouse.vo.PhotoVO;
import com.myhouse.vo.goodsVO;
import com.myhouse.vo.interiorVO;
import com.myhouse.vo.questionVO;
import com.myhouse.vo.reviewVO;

public class MypagePhotoDAO extends DBConn{

	@Autowired
	private SqlSessionTemplate sqlSession;
	private static String namespace="mapper.photo2";

	
	/**
	 * LIKE 좋아요
	 */
	public int getlikeinsert(String pno, String email) {
		Map<String,String> param = new HashMap<String,String>();
		param.put("email", email);
		param.put("pno", pno);
		return  sqlSession.insert(namespace+".plike",param);
	}
	
	
	/**
	 * 닉네임 바꾸기
	 */
	public String getnickname(String nickname) {
		return sqlSession.selectOne(namespace+".nickname",nickname);
	}
	
	
	
	/**
	 * 리뷰작성 페이지(내가 구매한 상품 리스트)
	 */
	public ArrayList<goodsVO> getreviewpage(){
		List<goodsVO> list = sqlSession.selectList(namespace+".reviewpage");
		
		return (ArrayList<goodsVO>)list;
	}
	
	
	/**
	 * 문의답변(나의활동 내물품에 문의한거 답변리스트)
	 */
	public ArrayList<questionVO> getqna(){
		List<questionVO> list = sqlSession.selectList(namespace+".qna");
		
		return (ArrayList<questionVO>)list;
		
	}
	
	
	/**
	 * 나의문의 리스트(아무 상품이나 내가 문의한 리스트)
	 */
	public ArrayList<questionVO> getquestlist(){
		List<questionVO> list = sqlSession.selectList(namespace+".questlist");
		
		return (ArrayList<questionVO>)list;
	}
	
	
	/**
	 * 비밀번호 변경하기
	 */
	public boolean getpasschange(MemberVO vo) {
		boolean result = false;
		int value = sqlSession.update(namespace+".passchange",vo);
		if(value != 0) result = true;
		return result;
	}
	
	
	
	/**
	 * 리뷰 리스트 가져오기 (최신순)
	 */
	public ArrayList<reviewVO> getreview1(){
		List<reviewVO> list = sqlSession.selectList(namespace+".review1");
		return (ArrayList<reviewVO>)list;
	}
	
	
	/**
	 * 리뷰 리스트 가져오기(베스트순)
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
		System.out.println(vo.getNickname());
		System.out.println(vo.getGender());
		System.out.println(vo.getHomepage());
		System.out.println(vo.getIntro());
		System.out.println(vo.getBirth());
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
	 * 좋아요 갯수 가져요기 (모두보기)
	 */
	public int getlikecount() {
		return sqlSession.selectOne(namespace+".likecount");
	}
	
	
	
	/**
	 * 사진 리스트 불러오기(모두보기)
	 */
	public ArrayList<PhotoVO> getphotolist(){
		List<PhotoVO> list = sqlSession.selectList(namespace+".photolist");
		return (ArrayList<PhotoVO>)list;
		
	}
	
	
}
