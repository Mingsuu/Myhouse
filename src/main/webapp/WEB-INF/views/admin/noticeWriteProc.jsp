<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.one_day_class.vo.*, com.one_day_class.dao.*"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %> 
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	//1. 파일이 저장되는 경로 설정 : upload폴더 주소
	String save_path = request.getServletContext().getRealPath("/upload");
	System.out.println("path==>" + save_path);
	
	//2. 파일 업로드 사이즈 설정
	int max_size = 1024*1024*500;
	
	//3. MultipartRequest 객체 생성 -- 생성되는 동시에 파일이 자동업로드(서버에 저장)
	// 객체 생성 시 자동으로 upload 폴더에 파일이 업로드 됨
	MultipartRequest multi
		= new MultipartRequest(request, save_path, max_size, "utf-8",
				new DefaultFileRenamePolicy());

	//4. VO 객체 생성
	BoardVO vo = new BoardVO();
	vo.setBtitle(multi.getParameter("btitle"));
	vo.setBcontent(multi.getParameter("bcontent"));
	vo.setBcharge(multi.getParameter("bcharge"));
	vo.setBpart(multi.getParameter("bpart"));
	vo.setBfile(multi.getOriginalFileName("bfile"));
	vo.setBsfile(multi.getFilesystemName("bfile")); 
	
	System.out.println(vo.getBtitle());
	System.out.println(vo.getBcontent());
	System.out.println(vo.getBpart());
	System.out.println(vo.getBfile());
	System.out.println(vo.getBsfile());
	
	//String bpart = request.getParameter("bpart");
	//System.out.println(bpart);

	BoardDAO dao = new BoardDAO();
	boolean result = dao.getInsert(vo);
	
	if(vo.getBpart().equals("공지사항/일반")) {
		if(result) {
			response.sendRedirect("http://localhost:9000/One_day_class/admin/notice_list_admin.jsp?bpart=notice");
		} else {
			response.sendRedirect("http://localhost:9000/One_day_class/errorPage.jsp");
		}
	} else if(vo.getBpart().equals("공지사항/약관")) {
		if(result) {
			response.sendRedirect("http://localhost:9000/One_day_class/admin/notice_list_admin.jsp?bpart=notice");
		} else {
			response.sendRedirect("http://localhost:9000/One_day_class/errorPage.jsp");
		}

	} else {
		if(result) {
			response.sendRedirect("http://localhost:9000/One_day_class/admin/notice_list_admin2.jsp?bpart=event");
		} else {
			response.sendRedirect("http://localhost:9000/One_day_class/errorPage.jsp");
		}
	}
	
	
%>