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
.option {
	display:inline-block;
	border:1px solid red;
	width:1000px;
	height:1000px;
	margin-left:50px;
}
.option1 {
	border:1px solid red;
	display:inline-block;
	margin-top:60px;
	margin-bottom:100px;
	width:900px;
}
.option1 span {
	font-size:24px;
	font-weight:bold;
	float:left;
}
.option2 {
	border:1px solid red;
	display:inline-block;
	width:900px;
}
.option2 span {
	float:left;
}
.op1 {
	font-size:15px;
}
.op2 {
	font-size:13px;
	color:#757575;
}
</style>
</head>
<body>

<div class="navigation">
	<div class="nav">
		<ul class="nav1">
			<a href="#"><li class="nav1-1">프로필</li></a>
			<a href="#"><li class="nav1-1">나의 쇼핑</li></a>
			<a href="#"><li class="nav1-1">나의 리뷰</li></a>
			<a href="#"><li class="nav1-1" style="color:#35c5f0;">설정</li></a>
		</ul>
	</div>
	<div class="nav2">
		<ul class="nav2-1">
			<a href="#"><li class="nav2-2" style="color:#35c5f0; border-bottom:5px solid #35c5f0;">회원정보수정</li></a>
			<a href="#"><li class="nav2-2">비밀번호변경</li></a>
			<a href="#"><li class="nav2-2">회원탈퇴</li></a>
		</ul>
	</div>
</div>
<div class="profile">
<div class="mid">
	<div class="review">
		<div class="option">
			<div class="option1"><span>회원정보수정</span></div>
			<div class="option2">
				<span class="op1">이메일</span><br>
				<span class="op2">* 필수항목</span>
			</div>
		</div>
	</div>
</div>
</div>
</body>
</html>