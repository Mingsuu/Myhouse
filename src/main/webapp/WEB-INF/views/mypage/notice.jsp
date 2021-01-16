<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="http://localhost:9000/myhouse/css/mypage.css"> -->
<!-- <script src="http://localhost:9000/myhouse/js/myhouse.js"></script> -->
<style>

* {
	font-family: "Noto Sans KR";
}
.profile {
	margin:auto;
	width:1200px;
}
.navigation {
	margin:auto;
	width:100%
}
.nav1,
.nav2 {
	list-style:none;
	text-align:center;
	}
.nav2 {
	display:block;
	border-top:1px solid lightgray;
	border-bottom:1px solid lightgray;
	padding-bottom:-20px;
}
.nav1-1 {
	display:inline-block;
	font-size:18px;
	font-weight:bold;
	padding-left:20px;
	padding-right:20px;
	color:black;
}
.nav1-1:hover,
.nav2-2:hover {
	color:#35c5f0;
}
.nav2-1 {
	margin:0px;
}
.nav2-2{
	display:inline-block;
	font-size:15px;
	font-weight:bold;
	margin-left:20px;
	margin-right:20px;
	padding-left:5px;
	padding-right:5px;
	padding-bottom:15px;
	padding-top:15px;
	color:black;
}
.mid {
	display:inline-block;
	width:1136px;
	height:596px;
	text-align:center;
}
.notice {
	display:inline-block;
	width:900px;
	height:350px;
	margin-top:40px;
}
.notice a {
	text-decoration:none;
}
.notice h1 {
	padding-right:600px;
	font-size:24px;
	margin-bottom:0px;
}
.notlist {
	height:66px;
	margin-top:20px;
}
.notlist:hover {
	opacity:0.5;
}
.notlist:active {
	opacity:0.5;
}
.notlist span {
	margin-right:450px;
	font-size:15px;
	color:black;
}
.notlist p {
	margin-right:610px;
	margin-top:5px;
	font-size:14px;
	font-weight:bold;
	color:rgb(130, 140, 148);
}
.noticebar {
	width:750px;
	opacity:0.5;
	margin:0px;
	margin-left:107px;
	border:1px solid lightgray;
}
.no2 {
	margin-left:30px;
}
</style>
</head>
<body>

<div class="navigation">
	<div class="nav">
		<ul class="nav1">
			<a href="#"><li class="nav1-1">프로필</li></a>
			<a href="#"><li class="nav1-1"  style="color:#35c5f0;">나의 쇼핑</li></a>
			<a href="#"><li class="nav1-1">나의 리뷰</li></a>
			<a href="#"><li class="nav1-1">설정</li></a>
		</ul>
	</div>
	<div class="nav2">
		<ul class="nav2-1">
			<a href="#"><li class="nav2-2">주문배송내역</li></a>
			<a href="#"><li class="nav2-2">상품문의내역</li></a>
			<a href="#"><li class="nav2-2" style="color:#35c5f0; border-bottom:5px solid #35c5f0;">공지사항</li></a>
			<a href="#"><li class="nav2-2">고객센터</li></a>
		</ul>
	</div>
</div>
<div class="profile">
<div class="mid">
	<div class="notice">
		<h1>공지사항</h1>
		<a href="#"><div class="notlist">
			<span>오늘의집 개인정보처리방침 변경 안내</span>
			<p>2020.12.31</p>
		<hr class="noticebar">
		</div></a>
		<a href="#"><div class="notlist">
			<span class="no2">오늘의집 VIP 등급 정책 변경사항 사전안내</span>
			<p>2020.12.03</p>
		<hr class="noticebar">
		</div></a>
		<a href="#"><div class="notlist">
			<span>오늘의집 개인정보처리방침 변경 안내</span>
			<p>2020.10.28</p>
		<hr class="noticebar">
		</div></a>
	</div>
		
</div>
</div>
</body>
</html>