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
	 * LIKE ���ƿ�
	 */
	public int getlikeinsert(String pno, String email) {
		Map<String,String> param = new HashMap<String,String>();
		param.put("email", email);
		param.put("pno", pno);
		return  sqlSession.insert(namespace+".plike",param);
	}
	
	
	/**
	 * �г��� �ٲٱ�
	 */
	public String getnickname(String nickname) {
		return sqlSession.selectOne(namespace+".nickname",nickname);
	}
	
	
	
	/**
	 * �����ۼ� ������(���� ������ ��ǰ ����Ʈ)
	 */
	public ArrayList<goodsVO> getreviewpage(){
		List<goodsVO> list = sqlSession.selectList(namespace+".reviewpage");
		
		return (ArrayList<goodsVO>)list;
	}
	
	
	/**
	 * ���Ǵ亯(����Ȱ�� ����ǰ�� �����Ѱ� �亯����Ʈ)
	 */
	public ArrayList<questionVO> getqna(){
		List<questionVO> list = sqlSession.selectList(namespace+".qna");
		
		return (ArrayList<questionVO>)list;
		
	}
	
	
	/**
	 * ���ǹ��� ����Ʈ(�ƹ� ��ǰ�̳� ���� ������ ����Ʈ)
	 */
	public ArrayList<questionVO> getquestlist(){
		List<questionVO> list = sqlSession.selectList(namespace+".questlist");
		
		return (ArrayList<questionVO>)list;
	}
	
	
	/**
	 * ��й�ȣ �����ϱ�
	 */
	public boolean getpasschange(MemberVO vo) {
		boolean result = false;
		int value = sqlSession.update(namespace+".passchange",vo);
		if(value != 0) result = true;
		return result;
	}
	
	
	
	/**
	 * ���� ����Ʈ �������� (�ֽż�)
	 */
	public ArrayList<reviewVO> getreview1(){
		List<reviewVO> list = sqlSession.selectList(namespace+".review1");
		return (ArrayList<reviewVO>)list;
	}
	
	
	/**
	 * ���� ����Ʈ ��������(����Ʈ��)
	 */
	public ArrayList<reviewVO> getreview(){
		List<reviewVO> list = sqlSession.selectList(namespace+".review");
		return (ArrayList<reviewVO>)list;
	}
	
	
	/**
	 * ȸ������ ����ó���ϱ�
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
	 * ȸ���������� ��������
	 */
	public MemberVO getoption() {
		MemberVO ovo = sqlSession.selectOne(namespace+".option");
		return ovo;
	}
	
	
	/**
	 * ���ƿ��� ���� ��������
	 */
	public ArrayList<PhotoVO> getlike(){
		List<PhotoVO> list = sqlSession.selectList(namespace+".likelist");
		return (ArrayList<PhotoVO>)list;
	}
	
	
	/**
	 *  �ֹ����� ����Ʈ ��������
	 */
	public ArrayList<interiorVO> getorder(){
		List<interiorVO> list = sqlSession.selectList(namespace+".orderlist");
		return (ArrayList<interiorVO>)list;
	}
	
	
	/**
	 * ������ �г���,�ȷο�,�ȷ��� ��������
	 */
	public MemberVO getprofile() {
		MemberVO prof = sqlSession.selectOne(namespace+".profile");
		return prof;
	}
	
	
	/**
	 * ���� �ҷ�����(����)
	 */
	public ArrayList<PhotoVO> getpicture() {
		List<PhotoVO> list = sqlSession.selectList(namespace+".picture");
		return (ArrayList<PhotoVO>)list;
	}
	
	/**
	 * ���� �Ѱ��� ��������(��κ���)
	 */
	public int getphotocount() {
		return sqlSession.selectOne(namespace+".photocount");
	}
	
	/**
	 * ���ƿ� ���� ������� (��κ���)
	 */
	public int getlikecount() {
		return sqlSession.selectOne(namespace+".likecount");
	}
	
	
	
	/**
	 * ���� ����Ʈ �ҷ�����(��κ���)
	 */
	public ArrayList<PhotoVO> getphotolist(){
		List<PhotoVO> list = sqlSession.selectList(namespace+".photolist");
		return (ArrayList<PhotoVO>)list;
		
	}
	
	
}
