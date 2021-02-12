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
	
	// 1. 장바구니 추가
    public void insert(basketVO vo) {
    	basketDAO.insert(vo);
    }
    // 2. 장바구니 목록
    public List<basketVO> listCart(String email) {
        return basketDAO.listCart(email);
    }
    // 3. 장바구니 삭제
    public void delete(String bno) {
    	basketDAO.delete(bno);
    }
    // 4. 장바구니 수정
    public void modifyCart(basketVO vo) {
    	basketDAO.modifyCart(vo);
    }
    // 5. 장바구니 금액 합계
    public int sumMoney(String email) {
        return basketDAO.sumMoney(email);
    }
    // 6. 장바구니 상품 확인
    public int countCart(String gno, String email) {
        return basketDAO.countCart(gno, email);
    }
    // 7. 장바구니 상품 수량 변경
    public void updateCart(basketVO vo) {
    	basketDAO.updateCart(vo);
    }
	
}
