package com.spring.service1;

import org.springframework.web.servlet.ModelAndView;

public interface MypageService {
	
	ModelAndView getphotolist(); //��������Ʈ(��κ���)
	ModelAndView getpicture(); //�����ø� ���� (����)
	ModelAndView getlike(); //���ƿ��ѻ��� (���ƿ�)
	ModelAndView getorder(); // �ֹ�����
	ModelAndView getoption(); // ȸ����������
	ModelAndView getResultUpdate(Object vo); //ȸ����������ó��
	ModelAndView getreview(); // ���� ����Ʈ �ҷ�����(����Ʈ��)
	ModelAndView getreview1(); // ���� ����Ʈ �ҷ����� (�ֽż�)
	ModelAndView getpasschange(Object vo); // �佺���庯��
	ModelAndView getquestlist();//���ǹ���
	ModelAndView getqna();//���Ǵ亯
	ModelAndView getreviewpage();//�����ۼ�
	String getpictureproc(String pno, String nickname);
	
}
