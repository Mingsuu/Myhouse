<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<%--
	String email = request.getParameter("email");

	sh_TuteeDAO dao_tutee = new sh_TuteeDAO();
	sh_TuteeVO vo_tutee = dao_tutee.getTuteeContent(email);
	
	sh_ClassDAO dao_class = new sh_ClassDAO();
	ArrayList<sh_ClassVO> list_apply_class = dao_class.getApplyClass(email);
	ArrayList<sh_ClassVO> list_ing_class = dao_class.getIngClass(email);
	ArrayList<sh_ClassVO> list_wish_class = dao_class.getMywishList(email);
--%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>탈멍 :: 회원관리 - 튜티</title>
<link rel="stylesheet" href="http://localhost:9000/One_day_class/js_sh/swiper-bundle.min.css">
<script src="http://localhost:9000/One_day_class/js_sh/jquery-3.5.1.min.js"></script>
<style>
	*{
		box-sizing: border-box;
	}
	div, main, section {
		display: block;
	}
	body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, form, fieldset, p, button, pre {
	    margin: 0;
	    padding: 0;
	    font-size: 14px;
	    color: #111;
	    font-family: 'Noto Sans KR';
	    font-weight: 400;
	}
	.admin_content{
		width: 1040px;
    	margin: 0 auto;
    	padding: 50px 0 120px 0;
	}
	/* aside */
   .admin_main {
      float:left;
      width:220px; 
      height:762px;
      background-color:#eee;
      padding:20px 0 0 15px;
   }
   
   .admin_main ul {
      width:195px;
      height:200px;
      margin-top:20px;
   }
   .admin_main ul li {
      list-style-type:none;
      padding: 4px 0;
      margin:25px 0 5px 15px;
   }   
   .admin_main ul li img {
      width:15px;
      height:15px;
   }
   .admin_main ul li a {
      color:black;
      font-size:17px;
      font-weight:bold;
      text-align:center;
      text-decoration:none;
      margin-left:10px;
   }   
   
   .admin_main ul li a:hover {
      text-decoration:underline;
   }
   .admin_main div {
      background-color: #fff;
      padding-top:7px;
      width:195px;
      height:145px;
   }
   .admin_main div img{
      margin:10px 0 0 62px;
      width:80px; 
      height:80px;
   }
   .admin_main .admin_icon2 {
      display:inline-block;
      font-size:20px;
      margin:7px 0 0 27px;
      color: #333;
      text-align:center;
      font-weight:bold;
   }
	.ad_title{
		width: 1040px;
		height: 35px;
		font-size: 16px;
		font-weight: bold; 
		text-align: center;
		color: #333;
		border: 1px solid lightgray;
	}
	.admin_member_content { 
		width: 820px;
		height: 473px;
	}
	.admin_member_content, .admin_member_content th, .admin_member_content td { 
		border: 1px solid #333;	
		border-collapse: collapse;
	}
	table.admin_member_content th, table.admin_member_content td{
		color: #333;
	}
	table.admin_member_content th {
		background-color: #eee;
		font-size: 16px;
		width: 100px;
		height: 115px;
	}
	table.admin_member_content tr:nth-child(1) th,
	table.admin_member_content tr:nth-child(2) th {
		height: 40px;
	}
	table.admin_member_content tr:last-child td{
		padding: 0;
	}
	table.admin_member_content tr:last-child td a > button{
		font-size: 14px;
		width: 80px;
		padding:4px 10px;
		border-radius: 5px;
		margin-right: 6px;
		cursor: pointer;
		font-weight:bold;
		border:none;
	}
	table.admin_member_content tr:last-child td a > button:hover {
		background-color:#333;
		color:white;
	}
	table.admin_member_content tr:last-child td a > button:focus {
		outline:none;
	}
	table.admin_member_content tr:last-child td {
		text-align: right;
	}
	.admin_section1 table.admin_member_content tr:last-child td{
		border: 1px solid white;
		border-top: 1px solid #333;
		padding-top: 15px;
	}
</style>

</head>
<body>
	<!-- header -->
	<jsp:include page="../header1.jsp"></jsp:include>

	<!-- content -->
	<div class="admin_content">
		<aside class="admin_main">
		   <nav>
		      <div>
		         <img src="http://localhost:9000/One_day_class/images/admin_profile.png"><br>
		         <span class="admin_icon2">[ 관리자 시스템 ]</span>
		      </div>
		      <ul>
		         <li><img src="http://localhost:9000/One_day_class/images/admin_list.png"><a href="notice_list_admin.jsp">공지사항/이벤트</a></li>
		         <li><img src="http://localhost:9000/One_day_class/images/admin_list.png"><a href="class_list.jsp">수업관리</a></li>
		         <li><img src="http://localhost:9000/One_day_class/images/admin_list.png"><a href="member_list.jsp">회원관리</a></li>
		      </ul>
		   </nav>
		</aside>
		<section class="admin_section1">
			<div class="ad_title">회원상세정보</div>
			<%-- <table class="admin_member_content">
				<tr>
					<th>아이디</th>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<%= vo_tutee.getEmail() %></td>
					<th>성명</th>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<%= vo_tutee.getName() %></td>
					<th>가입일</th>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<%= vo_tutee.getRdate() %></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<%= vo_tutee.getPhone() %></td>
					<th>나이</th>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<%= vo_tutee.getAge() %></td>
					<th>거주지역</th>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<%= vo_tutee.getArea() %></td>
				</tr>
				<tr>
					<th>신청한 수업</th>
					<% if(list_apply_class.size() != 0){ %>
					<td colspan="5">
					<% for(sh_ClassVO vo : list_apply_class){ %>
						<img  src="http://localhost:9000/One_day_class/images/admin_list.png" style="width:15px; height:15px; margin:0 5px;">
							<span style="color:#ff0045; font-weight:bold;">|<%= vo.getCatemain() %>|</span> 
							<br> <span style="margin:0 10px;">- </span> <%= vo.getTitle() %><br>
					<%} %>
					</td>
					<%} else { %>
					<td colspan="5">&nbsp;&nbsp;&nbsp;&nbsp;신청한 수업이 없습니다.</td>
					<%} %>
				</tr>
				<tr>
					<th>수강중인 수업</th>
					<% if(list_ing_class.size() != 0){ %>
					<td colspan="5">
					<% for(sh_ClassVO vo : list_ing_class){ %>
						<img  src="http://localhost:9000/One_day_class/images/admin_list.png" style="width:15px; height:15px; margin:0 5px;">
							<span style="color:#ff0045; font-weight:bold;">|<%= vo.getCatemain() %>|</span> 
							<br> <span style="margin:0 10px;">- </span> <%= vo.getTitle() %><br>
					<%} %>
					</td>
					<%} else { %>
					<td colspan="5">&nbsp;&nbsp;&nbsp;&nbsp;수강중인 수업이 없습니다.</td>
					<%} %>
				</tr>
				<tr>
					<th>위시리스트</th>
					<% if(list_wish_class.size() != 0) {  %>
						<td colspan="5">
						<% for(sh_ClassVO vo : list_wish_class){ %>
						<img  src="http://localhost:9000/One_day_class/images/admin_list.png" style="width:15px; height:15px; margin:0 5px;">
							<span style="color:#ff0045; font-weight:bold;">|<%= vo.getCatemain() %>|</span> 
							<br> <span style="margin:0 10px;">- </span> <%= vo.getTitle() %><br>
						<%} %>	
						</td>
					<% } else { %>
						<td colspan="5">&nbsp;&nbsp;&nbsp;&nbsp;추가된 위시리스트가 존재하지 않습니다.</td>
					<% } %>
				</tr>
				<tr>
					<td colspan="6">
						<a href="tutee_list.jsp"><button type="button" class="btn_style">목록으로</button></a>
					</td>
				</tr>
			</table> --%>
		</section>
	</div>

	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>