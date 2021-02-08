<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.one_day_class.dao.*"%>


<%
	String bid = request.getParameter("bid");
	ms_Admin_noticeDAO dao = new ms_Admin_noticeDAO();
	boolean result  = dao.getDelete(bid);
	
	if(result){
		response.sendRedirect("notice_list_admin.jsp");
	}else{
		response.sendRedirect("../errorPage.jsp");
	}
%>