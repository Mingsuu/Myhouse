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
			
			alert("이미지");
			$('#p_picture').on('change',function () {
				alert("이미지");
				if(input.files && input.files[0]) {
			        var reader = new FileReader();
			        reader.onload = function (e) {
			        	alert(e.target.result);
			            $("#profile_image").attr("url",e.target.result);
			        }
			        reader.readAsDataURL(input.files[0]);
			    }
			}
		
		
			
			
			
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
	border:1px solid lightgray;
	width:1000px;
	height:auto;
	margin-left:50px;
	box-shadow: 0 1px 4px 0 rgba(14, 14, 14, 0.1);
	margin-bottom:50px;
}
.option1 {
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
	display:inline-block;
	width:900px;
	margin-bottom:40px;
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
.op3 {
	font-size:15px;
	margin-top:12px;
}
.emailbox {
	border:1px solid lightgray;
	border-radius:7px;
	float:left;
	display:inline-block;
	width:190px;
	height:40px;
	margin-top:-23px;
	margin-left:50px;
	padding-left:10px;
}
.select {
	width:196px;
	height:44px;
	float:left;
	display:inline-block;
	margin-top:-23px;
}
.select select {
	border:1px solid lightgray;
	display:inline-block;
	padding-left:10px;
	border-radius:7px;
	width:100%;
	height:100%;
	-webkit-appearance: none;
    -moz-appearance: none;
}
.email1 {
	display:inline-block;
	float:left;
	margin:0px;
	margin-top:-15px;
	margin-left:3px;
	margin-right:3px;
	color:lightgray;
}
.emailbox2 {
	font-size:13px;
	font-weight:bold;
	color:#9e9e9e;
	margin-top:27px;
	padding-right:370px;
}
.emailbox-op3,
.emailbox-op2 {
	border:1px solid lightgray;
	border-radius:7px;
	float:left;
	display:inline-block;
	width:500px;
	height:40px;
	margin-left:50px;
	padding-left:10px;
}
.emailbox-op2 {
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
.click {
	width:290px;
	height:40px;
	font-size:18px;
	color:white;
	background-color:#35c5f0;
	border-radius:4px;
	border:1px solid #35c5f0;
	margin-top:20px;
	float:left;
	margin-left:110px;
}
.click:hover {
	background:rgb(16,175,222);
}
.p_image {
	width:198px;
	height:198px;
	float:left;
	margin-left:20px;
}
input[type="file"] {
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    width: 100%;
    z-index: 10;
    opacity: 0;
    cursor: pointer;
    z-index: 6;
}
::-webkit-file-upload-button {
    cursor: pointer;
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
			<a href="mypage_option.do"><li class="nav2-2" style="color:#35c5f0; border-bottom:5px solid #35c5f0;">회원정보수정</li></a>
			<a href="mypage_password.do"><li class="nav2-2">비밀번호변경</li></a>
			<a href="mypage_memberdelete.do"><li class="nav2-2">회원탈퇴</li></a>
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
				<input type="text" class="emailbox">
				<p class="email1">@</p>
				<div class="select">
					<select name="email" class="email" id="emailbox1">
						<option valuse="선택하세요">선택하세요</option>
						<option valuse="naver.com">naver.com</option>
						<option valuse="daum.net">daum.net</option>
						<option valuse="gmail.com">gmail.com</option>
					</select>
				</div>
				<div class="emailbox2">이메일을 변경하시려면 운영자에게 이메일을 보내주세요.</div>
			</div>
			<div class="option2">
				<span class="op1">별명</span><br>
				<span class="op2">* 필수항목</span>
				<input type="text" class="emailbox-op2" value="귤먹고갈래">
			</div>
			<div class="option2">
				<span class="op3">홈페이지</span>
				<input type="text" class="emailbox-op3" placeholder="https:ohou.se">
			</div>
			<div class="option2">
				<span class="op3">성별</span>
				<div class="genderbox">
					<input type="radio" name="gender" value="남성" style="width:20px;height:20px;border:1px;"><p class="gender" >남성</p>
					<input type="radio" name="gender" value="여성" style="width:20px;height:20px;border:1px;"><p class="gender" >여성</p>
				</div>
			</div>
			<div class="option2">
				<span class="op3">생년월일</span>
				<input type="text" class="emailbox-op3" placeholder="생년월일을 적어주세요">
			</div>
			<div class="option2">
				<span class="op3">프로필 이미지</span>
				<div class="p_image" style="background-image: url(http://localhost:9000/myhouse/images/mypage/pro.png)" id="profile_image">
					<input type="file" id="p_picture" name="profile_img" style="width:198px;height:198px;border:1px;">
				</div>
			</div>
			<div class="option2">
				<span class="op3">한줄 소개</span>
				<input type="text" class="emailbox-op3">
			</div>
			<div class="option2">
				<button type="button" class="click">회원 정보 수정</button>
			</div>
		</div>
	</div>
</div>
</div>
</body>
</html>