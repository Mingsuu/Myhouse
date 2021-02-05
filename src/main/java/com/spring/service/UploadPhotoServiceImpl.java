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
	
	
	/**글쓰기 처리**/
	@Override
	public String getResultWrite(Object vo){
		String result ="";
		
		//bfile,bsfile 이름을 가져와서 --> vo저장 request객체
		PhotoVO pvo = (PhotoVO)vo;
		if(pvo.getFile1().getSize() != 0) {
			UUID uuid = UUID.randomUUID();	//중복방지를 위해 사용 -->bsfile
			pvo.setPhoto_image(pvo.getFile1().getOriginalFilename());
			pvo.setPhoto_simage(uuid +"_"+pvo.getFile1().getOriginalFilename());
		}
		//DB저장
		boolean dao_result = uploadDAO.getInsert(pvo);//object타입이니까 캐스팅해서 보내야함
				
		if(dao_result){
			//서버 저장-->upload폴더 저장(폴더위치)

			// String root_path = request.getSession().getServletContext().getRealPath("/");
			 //String attach_path = "\\resources\\upload\\";
			System.out.println("통과");
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
