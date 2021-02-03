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
	 * ���� ����Ʈ ��������
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
	 * ���� ����Ʈ �ҷ�����(��κ���)
	 */
	public ArrayList<PhotoVO> getphotolist(){
		List<PhotoVO> list = sqlSession.selectList(namespace+".photolist");
		return (ArrayList<PhotoVO>)list;
		
	}
	
	
}
