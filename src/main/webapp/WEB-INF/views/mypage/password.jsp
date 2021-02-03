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
			$('#p_picture').change(function (e) {
				var file = (e.target || window.event.srcElement).files[0];
		
				var reader = new FileReader();
				reader.onload = function() {
					$('#profile_image').css("background-image", "url('"+reader.result+"')");			
				}
				reader.readAsDataURL(file);
			});
		

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
.password {
	display:inline-block;
	border:1px solid lightgray;
	width:500px;
	height:auto;
	margin-left:50px;
	box-shadow: 0 1px 4px 0 rgba(14, 14, 14, 0.1);
	margin-bottom:50px;
}
.passtitle {
	display:inline-block;
	margin-top:60px;
	margin-bottom:10px;
	width:900px;
}
.passtitle span {
	font-size:24px;
	font-weight:bold;
	float:left;
	margin-left:50px;
}
.password1 {
	display:inline-block;
	width:900px;
	margin-bottom:40px;
}
.password1 span {
	float:left;
	margin-left:50px;
}
.pass1,
.pass2 {
	font-size:15px;
}
.pass1 {
	font-weight:bold;
}
.passwordbox {
	border:1px solid lightgray;
	border-radius:7px;
	float:left;
	display:inline-block;
	width:400px;
	height:40px;
	margin-left:50px;
	margin-bottom:20px;
	padding-left:10px;
}
.passwordbox {
	margin-top:-23px;
}
.gender {
	font-size:15px;
	display:inline-block;
	margin-left:5px;
}
.genderbox {
	display:inline-block;
	float:left;
	margin-left:80px;
}
.change {
	width:414px;
	height:50px;
	font-size:18px;
	font-weight:bold;
	color:white;
	background-color:#35c5f0;
	border-radius:4px;
	border:1px solid #35c5f0;
	margin-top:20px;
	float:left;
	margin-left:50px;
}
.change:hover {
	background:rgb(16,175,222);
}
</style>
</head>
<body>

<div class="navigation">
	<div class="nav">
		<ul class="nav1">
			<a href="mypage_profile.do"><li class="nav1-1">프로필</li></a>
			<a href="mypage_orderlist.do"><li class="nav1-1">나의 쇼핑</li></a>
			<a href="mypage_review.do"><li class="nav1-1">나의 리뷰</li></a>
			<a href="mypage_option.do"><li class="nav1-1" style="color:#35c5f0;">설정</li></a>
		</ul>
	</div>
	<div class="nav2">
		<ul class="nav2-1">
			<a href="mypage_option.do"><li class="nav2-2">회원정보수정</li></a>
			<a href="mypage_password.do"><li class="nav2-2"  style="color:#35c5f0; border-bottom:5px solid #35c5f0;">비밀번호변경</li></a>
			<a href="mypage_memberdelete.do"><li class="nav2-2">회원탈퇴</li></a>
		</ul>
	</div>
</div>
<div class="profile">
<div class="mid">
	<div class="review">
		<div class="password">
			<div class="passtitle"><span>비밀번호 변경</span></div>
			<div class="password1">
				<span class="pass1">새비밀번호</span><br>
				<span class="pass2">8자 이상 입력해주세요.</span>
			</div>
				<input type="text" class="passwordbox">
			<div class="password1">
				<span class="pass1">새비밀번호</span><br>
			</div>
				<input type="text" class="passwordbox" >
			<div class="password1">
				<button type="button" class="change">비밀번호 변경</button>
			</div>
		</div>
	</div>
</div>
</div>
</body>
</html>