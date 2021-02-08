<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.one_day_class.dao.*, com.one_day_class.vo.*, java.util.*"%>
<%
	String cid = request.getParameter("cid"); 
	
	sh_ClassDAO dao_class = new sh_ClassDAO();
	sh_ClassVO vo_class = dao_class.getClassContent(cid);
	
	String[] pic_array = vo_class.getSpicture().split(",");
	String[] schedule_array = vo_class.getSchedule().split(",");
	String[] videos_array = null;
	if(vo_class.getVideos() != null){
		videos_array = vo_class.getVideos().split(",");		
	}

	sh_TutorDAO dao_tutor = new sh_TutorDAO();
	sh_TutorVO vo_tutor = dao_tutor.getTutorInfo(cid);
	
	sh_ReviewDAO dao_review = new sh_ReviewDAO();
	double score = dao_review.getReviewScore(cid);
	int cnt = dao_review.getReviewCnt(cid);
	ArrayList<sh_ReviewVO> list_review = dao_review.getReviewContent(cid);
	
	sh_TuteeDAO dao_tutee = new sh_TuteeDAO();
	ArrayList<sh_TuteeVO> list_tutee = dao_tutee.getReviewContent(cid);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>class</title>
<script src="http://localhost:9000/One_day_class/js_sh/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/One_day_class/js_sh/js_sh.js"></script>
<script src="http://localhost:9000/One_day_class/js_sh/swiper-bundle.min.js"></script>
<link rel="stylesheet" href="http://localhost:9000/One_day_class/js_sh/swiper-bundle.min.css">
</head>
<body>
	<div class="dance">
		<aside class="d-side">
			<h1>수업일정</h1>
			<div class="scroll-box">
				<% for(String schedule : schedule_array){ %>
				<div class="d-side-box">
					<span class="d-side-box1"><%= schedule %></span>
					<span class="d-side-box2"><%=vo_class.getRegionmain() %></span><br>
					<span class="d-side-box3">상세장소: <%=vo_class.getRegionsub() %></span>
				</div>
				<% } %>
			</div>
			<div class="d-side-box4">
				<span class="d-span1"><%=vo_class.getPrice() %>원 / 총 1회 <%= vo_class.getTime() %>시간</span>
			</div>
			<div class="d-side-box5">
				<button type="button" name="add" id="wish_btn"></button>
				<a href="class_apply.jsp?cid=<%= cid%>">
					<img src="http://localhost:9000/One_day_class/images/dance-btn.png">
				</a>
			</div>
		</aside>
		<div class="dance-box">
			<span class="dance-b1"><%=vo_class.getCtype() %> · <%=vo_class.getRegionmain() %> · <%=vo_class.getPerson() %>명</span><br>
			<span class="dance-b2"><%=vo_class.getTitle() %></span>
		</div>
		<div class="dance-box1">
			<img src="http://localhost:9000/One_day_class/upload/<%= vo_tutor.getSprofile_img()%>">
			<span><%= vo_tutor.getName() %> 튜터</span><br>
			<span class="dance-b3">★</span>
			<span> <%= score %>(<%= cnt %>)</span>
		</div>
		<div class="dance-box2">
			<div class="swiper-container gallery-top">
				<div class="swiper-wrapper">
					<% for(String pic : pic_array){ %>
					<div class="swiper-slide" style="background-image:url(http://localhost:9000/One_day_class/upload/<%= pic %>)"></div>
					<% } %>
				</div>
				<div class="swiper-button-next swiper-button-white"></div>
				<div class="swiper-button-prev swiper-button-white"></div>
			</div>
			<div class="swiper-container gallery-thumbs">
				<div class="swiper-wrapper">
					<% for(String pic : pic_array){ %>
					<div class="swiper-slide" style="background-image:url(http://localhost:9000/One_day_class/upload/<%= pic %>)"></div>
					<% } %>
				</div>
			</div>
		</div>
		<div class="dance-box3">
			<span class="dance-b4">수업 전<br> 숙지해주세요!</span>
			<div class="dance-b5">
				<img src="http://localhost:9000/One_day_class/images/dance3.png">
				<p class="text_area"><%=vo_class.getTutornotice().replaceAll("\r\n", "<br>") %></p>
			</div>
		</div>
		<div class="idx dance-box3-1">
			<span class="dance-b4">튜터님을<br> 소개합니다.</span>
			<div class="dance-b6">
				<p class="text_area"><%=vo_class.getTutorinfo().replaceAll("\r\n", "<br>") %></p>
			</div>
		</div>
		<div class="idx dance-box3-1">
			<span class="dance-b4">어떤<br> 수업인가요?</span>
			<div class="dance-b6">
				<p class="text_area"><%=vo_class.getIntroduction().replaceAll("\r\n", "<br>") %></p>
			</div>
		</div>
		<div class="dance-box3-1">
			<span class="dance-b4">이런 분들이<br>들으면<br>좋아요.</span>
			<div class="dance-b6">
				<p class="text_area"><%=vo_class.getTarget().replaceAll("\r\n", "<br>") %></p>
			</div>
		</div>
		<div class="idx dance-box3-1">
			<span class="dance-b4">수업은 이렇게<br>진행됩니다.</span>
			<div class="dance-b6">
				<p class="text_area"><%=vo_class.getCurriculum().replaceAll("\r\n", "<br>") %></p>
			</div>
		</div>
		<% if(vo_class.getVideos() != null){ %>
		<div class="dance-box3-1">
			<span class="dance-b4">관련 영상<br>보고가세요.</span>
			<div class="dance-b6" style="width: 615px; margin-left: 170px;">
				<% for(String video : videos_array){ %>
					<iframe width="614" height="358" src="https://www.youtube.com/embed/<%= video %>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				<% } %>
			</div>
		</div>
		<% } %>
	</div>
	<div class="space" >
	</div>
</body>
</html>