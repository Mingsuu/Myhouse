package com.spring.service1;

import org.springframework.web.servlet.ModelAndView;

public interface MypageService {
	
	ModelAndView getphotolist(); //��������Ʈ(��κ���)
	ModelAndView getpicture(); //�����ø� ���� (����)
	ModelAndView getlike(); //���ƿ��ѻ��� (���ƿ�)
	ModelAndView getorder(); // �ֹ�����
	ModelAndView getoption(); // ȸ����������
	ModelAndView getResultUpdate(Object vo); //ȸ����������ó��
	ModelAndView getreview(); // ���� ����Ʈ �ҷ�����
}
