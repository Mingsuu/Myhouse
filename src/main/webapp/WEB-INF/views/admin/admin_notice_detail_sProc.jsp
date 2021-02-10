<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import="com.one_day_class.vo.*, com.one_day_class.dao.*"%>

    
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>



<%


System.out.println("request getContentType : " + request.getContentType());
		String bpart = request.getParameter("bpart");
		System.out.println("proc");
		System.out.println(bpart);
		//1. 파일이 저장되는 경로 설정 : upload폴더 주소
		String save_path = request.getServletContext().getRealPath("/upload");
		System.out.println("path==> " + save_path);
		
		//2. 파일 업로드 사이즈 설정
		int max_size = 1024*1024*15;

		//3. MultipartRequest 객체 생성 -- 생성되는 동시에 파일이 자동업로드(서버에 저장)
		MultipartRequest multi = new MultipartRequest(request,save_path,max_size,"utf-8", new DefaultFileRenamePolicy()); 
		
		//4. VO 객체 생성
		//4-1. 선택된 파일이 있는 경우(새로운 파일 선택)
		ms_Admin_noticeVO vo = new ms_Admin_noticeVO();
		ms_Admin_noticeDAO dao = new ms_Admin_noticeDAO();
		boolean result = false;
		
		if(multi.getOriginalFileName("bfile") != null) {
			vo.setBid(multi.getParameter("bid"));
			vo.setBtitle(multi.getParameter("btitle"));
			vo.setBcontent(multi.getParameter("bcontent"));
			vo.setBfile(multi.getOriginalFileName("bfile"));
			vo.setBsfile(multi.getFilesystemName("bfile"));
			vo.setBpart(multi.getParameter("bpart"));
			
			//DB연동 --> 새로운 파일 있는 경우
			System.out.println("---------> 파일이 있는 경우(새로운 파일)");
			System.out.println(bpart);
			result = dao.getUpdate(vo);
		}else {
			vo.setBid(multi.getParameter("bid"));
			vo.setBtitle(multi.getParameter("btitle"));
			vo.setBcontent(multi.getParameter("bcontent"));
			vo.setBpart(multi.getParameter("bpart"));
			
			//DB연동 --> 새로운 파일 없음 : 기존 파일 유지!!
			System.out.println("---------> 파일선택 X, 기존파일 유지");
			System.out.println(bpart);
			result = dao.getUpdateNofile(vo);
		}
		
		if(bpart.equals("공지사항/일반")) {
			if(result) {
				response.sendRedirect("http://localhost:9000/One_day_class/admin/notice_list_admin.jsp");
			} else {
				response.sendRedirect("http://localhost:9000/One_day_class/errorPage.jsp");
			}
		} else if(bpart.equals("공지사항/약관")) {
			if(result) {
				response.sendRedirect("http://localhost:9000/One_day_class/admin/notice_list_admin.jsp");
			} else {
				response.sendRedirect("http://localhost:9000/One_day_class/errorPage.jsp");
			}

		} else {
			if(result) {
				response.sendRedirect("http://localhost:9000/One_day_class/admin/notice_list_admin2.jsp");
			} else {
				response.sendRedirect("http://localhost:9000/One_day_class/errorPage.jsp");
			}
		}
		
%>
