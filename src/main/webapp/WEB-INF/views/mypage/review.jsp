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
.nav11,
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
.review-my-home__search__title {
	margin-top:100px;
}
.gum {
	border:1px solid white;
	border-radius:5px;
	width:100px;
	height:55px;
	background-color:#35c5f0;
	color:white;
	font-size:17px;
	font-weight:bold;
	margin-left:10px;
}
.review-title {
	padding-right:800px;
	color:#424242;
	font-size:18px;
	font-weight:bold;
	margin-top:100px;
	margin-bottom:10px;
}
.review-box1 {
	width:900px;
	height:50px;
	font-size:18px;
	padding-left:10px;
	border-radius:4px;
	border:1px solid lightgray;
}
</style>
</head>
<body>

<div class="navigation">
	<div class="nav">
		<ul class="nav11">
			<a href="mypage_profile.do"><li class="nav1-1">프로필</li></a>
			<a href="mypage_orderlist.do"><li class="nav1-1">나의 쇼핑</li></a>
			<a href="mypage_review.do"><li class="nav1-1" style="color:#35c5f0;">나의 리뷰</li></a>
			<a href="mypage_option.do"><li class="nav1-1">설정</li></a>
		</ul>
	</div>
	<div class="nav2">
		<ul class="nav2-1">
			<a href="mypage_review.do"><li class="nav2-2"  style="color:#35c5f0; border-bottom:5px solid #35c5f0;">리뷰쓰기</li></a>
			<a href="mypage_review1.do"><li class="nav2-2">내가 작성한 리뷰</li></a>
		</ul>
	</div>
</div>
<div class="profile">
<div class="mid">

	<div class="review-title">내가 사용하는 상품 리뷰쓰기</div>
		<form class="review-form">
			<div class="review-box">
				<input placeholder="브랜드명 혹은 상품명을 입력하세요." value="" class="review-box1"/>
				<button class="gum" type="submit">검색</button>
			</div>
		</form>

</div>	
</div>
</body>
</html>