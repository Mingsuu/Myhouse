<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.one_day_class.dao.*"
    %>
<%
	//String bid = request.getParameter("bid");
	//String bpart = request.getParameter("bpart");

	/* BoardDAO dao = new BoardDAO(); 
	int result = dao.getDelete(bid);  */ 
	String[] bid_list =request.getParameterValues("bid");
	
	BoardDAO dao = new BoardDAO(); 
	int result = dao.getDelete(bid_list);   
	
	out.write(String.valueOf(result)); 
	/* out.write(bid_list[0]);  
	out.write(bid_list[1]); */  
	/* 
	if(bpart.equals("공지사항/일반")) {
		out.write(String.valueOf(result)); 
	} else if(bpart.equals("공지사항/약관")) {
		out.write(String.valueOf(result)); 

	} else {
		out.write(String.valueOf(result)); 
	} */
%>