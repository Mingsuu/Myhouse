<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.one_day_class.dao.*"%>
<% 
	String wbutton=request.getParameter("wbutton");
	String cid=request.getParameter("cid");
	ClassDAO dao=new ClassDAO();
	
	if(wbutton.equals("accept")){
		System.out.println(wbutton);
		
		dao.updateStatus1(cid);
			
		response.sendRedirect("class_list.jsp"); 
	}else if(wbutton.equals("reject")){
		System.out.println(wbutton);
		
		dao.updateStatus2(cid);
			
		response.sendRedirect("class_list.jsp"); 
	} 
	
%>