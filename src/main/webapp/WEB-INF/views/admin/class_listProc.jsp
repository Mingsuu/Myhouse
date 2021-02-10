<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.one_day_class.dao.*"%>
<% 
	String wbutton=request.getParameter("wbutton");
	System.out.println(wbutton);
	String[ ] cids=request.getParameterValues("checkTerms");
	ClassDAO dao=new ClassDAO();
	if(cids!=null){
		if(wbutton.equals("accept")){
			for(String cid:cids){
				dao.updateStatus1(cid);
			}
			response.sendRedirect("class_list.jsp"); 
		}else if(wbutton.equals("reject")){
			for(String cid:cids){
				dao.updateStatus2(cid);
			}
			response.sendRedirect("class_list.jsp"); 
		}
	}else{
		response.sendRedirect("class_list.jsp"); 
	}
%>