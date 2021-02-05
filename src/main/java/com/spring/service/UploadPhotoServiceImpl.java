package com.spring.service;

import java.io.File;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myhouse.dao.H_UploadPhotoDAO;
import com.myhouse.vo.PhotoVO;


@Service("uploadService")
public class UploadPhotoServiceImpl implements UploadPhotoService{
	@Autowired	
	private H_UploadPhotoDAO uploadDAO; 
	
	
	/**�۾��� ó��**/
	@Override
	public String getResultWrite(Object vo){
		String result ="";
		
		//bfile,bsfile �̸��� �����ͼ� --> vo���� request��ü
		PhotoVO pvo = (PhotoVO)vo;
		if(pvo.getFile1().getSize() != 0) {
			UUID uuid = UUID.randomUUID();	//�ߺ������� ���� ��� -->bsfile
			pvo.setPhoto_image(pvo.getFile1().getOriginalFilename());
			pvo.setPhoto_simage(uuid +"_"+pvo.getFile1().getOriginalFilename());
		}
		//DB����
		boolean dao_result = uploadDAO.getInsert(pvo);//objectŸ���̴ϱ� ĳ�����ؼ� ��������
				
		if(dao_result){
			//���� ����-->upload���� ����(������ġ)

			// String root_path = request.getSession().getServletContext().getRealPath("/");
			 //String attach_path = "\\resources\\upload\\";
			System.out.println("���");
			File file = new File(pvo.getSavepath()+pvo.getPhoto_simage());
			
			try {
				pvo.getFile1().transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
			result = "redirect://index.do";	
		}else{
			result = "errorPage";
		}
		
		return result;
	}
	
}
