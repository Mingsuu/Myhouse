package com.myhouse.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.myhouse.vo.photo_commentVO;

public class photo_commentDAO extends DBConn {
	@Autowired
	private SqlSessionTemplate sqlSession;

	private static String namespace = "mapper.photocomment";

	/** ��� ���� **/
	public int getCount(String pno) {
		return sqlSession.selectOne(namespace + ".count", pno);
	}

	/** ��� ���� **/
	public int getRecount(String pno) {
		return sqlSession.selectOne(namespace + ".re_count", pno);
	}

	/** ��� **/
	public ArrayList<photo_commentVO> getList(String pno) {
		List<photo_commentVO> list = sqlSession.selectList(namespace + ".list", pno);
		return (ArrayList<photo_commentVO>) list;
	}
	
	/**��� �ۼ�**/
	public int getWrite(String pno,String content) {
		Map<String, String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("content", content);
		return sqlSession.insert(namespace+".getwrite", param);
	}
	/**��� �ۼ�**/
	public int getReplyWrite(String pno, String tag, String content, String cgroup) {
		Map<String, String> param = new HashMap<String,String>();
		param.put("pno", pno);
		param.put("tag", tag);
		param.put("content", content);
		param.put("cgroup", cgroup);
		
		System.out.println(content);
		return sqlSession.insert(namespace+".getreplywrite", param);
	}

}
