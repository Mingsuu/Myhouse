package com.myhouse.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.basketVO;

public class H_basketDAO extends DBConn{
	@Autowired
	private SqlSessionTemplate sqlSession;
	private static String namespace="mapper.basket";	
	
		  // 1. ��ٱ��� �߰�
	    public void insert(basketVO vo) {
	        sqlSession.insert(namespace+".insertCart", vo);
	    }
	    // 2. ��ٱ��� ���
	    public List<basketVO> listCart(String email) {
	        return sqlSession.selectList(namespace+".listCart", email);
	    }
	    // 3. ��ٱ��� ����
	    public void delete(String bno) {
	        sqlSession.delete(namespace+".deleteCart", bno);
	    }
	    // 4. ��ٱ��� ����
	    public void modifyCart(basketVO vo) {
	        sqlSession.update("basket.modifyCart", vo);
	    }
	    // 5. ��ٱ��� �ݾ� �հ�
	    public int sumMoney(String email) {
	        return sqlSession.selectOne(namespace+".sumMoney", email);
	    }
	    // 6. ��ٱ��� ������ ��ǰ ���ڵ� Ȯ��
	    public int countCart(String gno, String email) {
	        Map<String, String> map = new HashMap<String, String>();
	        System.out.println("dao:gno,email��:"+gno+","+email);
	        map.put("gno", gno);
	        map.put("email",email);
	        return sqlSession.selectOne(namespace+".countCart",map);
	    }
	    // 7. ��ٱ��� ��ǰ���� ����
	    public void updateCart(basketVO vo) {
	        sqlSession.update(namespace+".updateCart", vo);
	    }
	}

	








