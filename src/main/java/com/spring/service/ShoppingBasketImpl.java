package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myhouse.dao.H_basketDAO;
import com.myhouse.vo.basketVO;


@Service("ShoppingBasketService")
public class ShoppingBasketImpl {
	@Autowired	
	private H_basketDAO basketDAO; 
	
	// 1. ��ٱ��� �߰�
    public void insert(basketVO vo) {
    	basketDAO.insert(vo);
    }
    // 2. ��ٱ��� ���
    public List<basketVO> listCart(String email) {
        return basketDAO.listCart(email);
    }
    // 3. ��ٱ��� ����
    public void delete(String bno) {
    	basketDAO.delete(bno);
    }
    // 4. ��ٱ��� ����
    public void modifyCart(basketVO vo) {
    	basketDAO.modifyCart(vo);
    }
    // 5. ��ٱ��� �ݾ� �հ�
    public int sumMoney(String email) {
        return basketDAO.sumMoney(email);
    }
    // 6. ��ٱ��� ��ǰ Ȯ��
    public int countCart(String gno, String email) {
        return basketDAO.countCart(gno, email);
    }
    // 7. ��ٱ��� ��ǰ ���� ����
    public void updateCart(basketVO vo) {
    	basketDAO.updateCart(vo);
    }
	
}
