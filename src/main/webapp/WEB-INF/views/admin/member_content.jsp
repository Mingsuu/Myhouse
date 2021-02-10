<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
	String email = request.getParameter("email");

	sh_TutorDAO dao_tutor = new sh_TutorDAO();
	sh_TutorVO vo_tutor = dao_tutor.getTutorContent(email);

	sh_ClassDAO dao_class = new sh_ClassDAO();
	ArrayList<sh_ClassVO> list_class = dao_class.getMakeClass(email);
	ArrayList<sh_ClassVO> list_class_open = dao_class.getMakeClassOpen(email);
	ArrayList<sh_ClassVO> list_class_wait = dao_class.getMakeClassWait(email);
	
--%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스윗트홈 :: 회원관리</title>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/swiper-bundle.min.css">
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
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
	table.admin_member_content tr:nth-child(3) td {
		width:90px;
		height:50px;
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
	   	.footer{
	display:inline-block;
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
					<li><img src="http://localhost:9000/myhouse/images/admin_list.png"><a href="store_list.do?rpage=1">스토어관리</a></li>
		         <li><img src="http://localhost:9000/One_day_class/images/admin_list.png"><a href="member_list.jsp">회원관리</a></li>
		      </ul>
		   </nav>
		</aside>
		<section class="admin_section1">
			<div class="ad_title">회원상세정보</div>
			 <table class="admin_member_content">
				<tr>
					<th>아이디</th>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<th>성명</th>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<th>가입일</th>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<th>나이</th>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<th>거주지역</th>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				</tr>
				<tr>
					<th>커뮤니티</th>
					<c:choose>
						<c:when test="${photolist ne null}">
							<th>사진 게시물</th>
								<td colspan="5">
								<c:forEach var="vo" items="${photolist}" varStatus="status">
									<img  src="http://localhost:9000/One_day_class/images/admin_list.png" style="width:15px; height:15px; margin:0 5px;">
										<span style="color:#ff0045; font-weight:bold; ">${vo.pcontent}</span> 
										<br> <span style="margin:0 10px;">- </span> ${vo.pcontent}<br>
								</c:forEach>
							</td>
						</c:when>
						<c:otherwise>
							<td colspan="5">&nbsp;&nbsp;&nbsp;&nbsp; 사진 게시물이 없습니다.</td>
						</c:otherwise>
					</c:choose>
				</tr>
				<tr>
					<th>스토어 게시물</th>
					
					<c:choose>
						<c:when test="${interiorlist ne null}">
							<td colspan="5">
								<c:forEach var="vo" items="${interiorlist}" varStatus="status">
									<img  src="http://localhost:9000/One_day_class/images/admin_list.png" style="width:15px; height:15px; margin:0 5px;">
										<span style="color:#ff0045; font-weight:bold;">${vo.ititle}</span> 
										<br> <span style="margin:0 10px;">- </span> ${vo.ititle}<br>
								</c:forEach>
							</td>
						</c:when>
						<c:otherwise>
							<td colspan="5">&nbsp;&nbsp;&nbsp;&nbsp; 스토어 게시물이 없습니다.</td>
						</c:otherwise>
					</c:choose>
					
				</tr>
				<tr>
					<td colspan="6">
						<a href="member_list.jsp"><button type="button" class="btn_style" >목록으로</button></a>
					</td> 
				</tr> 
			</table>
		</section>
	</div>
	<div class="footer">
		<!-- footer -->
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
</body>
</html>