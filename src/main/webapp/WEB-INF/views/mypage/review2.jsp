<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="http://localhost:9000/myhouse/css/mypage.css"> -->
<!-- <script src="http://localhost:9000/myhouse/js/myhouse.js"></script> -->
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script>
	$(document).ready(function(){
		
		
		
		
	});//ready


</script>

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
.review {
	display:inline-block;
	width:1000px;
	height:auto;
	margin-top:50px;
	padding-bottom:20px;
}
.review1 {
	display:inline-block;
	width:900px;
	margin-bottom:50px;
}
.review2 {
	margin-bottom:30px;
}
.review1 span {
	float:left;
	font-size:15px;
	margin-right:40px;
}
.review1 a {
	color:black;
}
.simsa,
.simsa1,
.simsa2,
.simsatext {
	display:inline-block;
	width:900px;
}
.simsa span {
	float:left;
	border-radius:3px;
	font-size:15px;
	font-weight:bold;
	background-color:#35c5f0;
	color:white;
	padding-left:5px;
	padding-right:5px;
}
.simsa a {
	float:right;
	font-size:15px;
	color:#757575;
	text-decoration:none;
}
.simsa1 a {
	font-size:18px;
	font-weight:bold;
	float:left;
	color:black;
	text-decoration:none;
}
.simsa2 img {
	float:left;
	margin-right:10px;
}
.simsa2 span {
	float:left;
	font-size:14px;
	color:#9e9e9e;
	margin-bottom:3px;
}
.simsatext span {
	float:left;
	font-size:15px;
}
</style>
</head>
<body>

<div class="navigation">
	<div class="nav">
		<ul class="nav1">
			<a href="mypage_profile.do"><li class="nav1-1">프로필</li></a>
			<a href="mypage_orderlist.do"><li class="nav1-1">나의 쇼핑</li></a>
			<a href="mypage_review.do"><li class="nav1-1"  style="color:#35c5f0;">나의 리뷰</li></a>
			<a href="mypage_option.do"><li class="nav1-1">설정</li></a>
		</ul>
	</div>
	<div class="nav2">
		<ul class="nav2-1">
			<a href="mypage_review.do"><li class="nav2-2">리뷰 쓰기</li></a>
			<a href="mypage_review1.do"><li class="nav2-2" style="color:#35c5f0; border-bottom:5px solid #35c5f0;">내가 작성한 리뷰</li></a>
		</ul>
	</div>
</div>
<div class="profile">
<div class="mid">
	<div class="review">
		<div class="review1">
			<span style="color:#35c5f0;">베스트순</span>
			<a href="mypage_review1.do"><span>최신순</span></a>
		</div>
		<div class="review2">
			<div class="simsa"><span>리뷰심사중</span><a href="#">수정</a></div>
			<div class="simsa1"><a href="#">[시디즈] T20 TAB+ TNA200HF 메쉬의자 2types</a></div>
			<div class="simsa2"><img src="http://localhost:9000/myhouse/images/mypage/review.png"><span>귤먹고갈래 | 2021.01.15 | 다른 쇼핑몰 리뷰</span></div>
			<div class="simsatext"><span>그냥 한번 사봤는데 너무 좋더라구요</span></div>
		</div>
		<div class="review2">
			<div class="simsa"><span>리뷰심사중</span><a href="#">수정</a></div>
			<div class="simsa1"><a href="#">[시디즈] T20 TAB+ TNA200HF 메쉬의자 2types</a></div>
			<div class="simsa2"><img src="http://localhost:9000/myhouse/images/mypage/review.png"><span>귤먹고갈래 | 2021.01.15 | 다른 쇼핑몰 리뷰</span></div>
			<div class="simsatext"><span>그냥 한번 사봤는데 너무 좋더라구요</span></div>
		</div>
		<div class="review2">
			<div class="simsa"><span>리뷰심사중</span><a href="#">수정</a></div>
			<div class="simsa1"><a href="#">[시디즈] T20 TAB+ TNA200HF 메쉬의자 2types</a></div>
			<div class="simsa2"><img src="http://localhost:9000/myhouse/images/mypage/review.png"><span>귤먹고갈래 | 2021.01.15 | 다른 쇼핑몰 리뷰</span></div>
			<div class="simsatext"><span>그냥 한번 사봤는데 너무 좋더라구요</span></div>
		</div>
	</div>
</div>
</div>
</body>
</html>