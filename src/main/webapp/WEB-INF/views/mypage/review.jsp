<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/19-edc534e5.chunk.css" />
<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/39-16e469a0.chunk.css" />
<link rel="stylesheet" media="screen" href="https://static.ohou.se/dist/css/templates-Review-MyHome-WriteReview-cd0b5f5f.chunk.css" />

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
.form-control {
	border:1px solid lightgray;
	border-radius:5px;
}
.review-my-home__search__title {
	padding-right:910px;
	color:#424242;
}
</style>
</head>
<body>

<div class="navigation">
	<div class="nav">
		<ul class="nav11">
			<a href="#"><li class="nav1-1">프로필</li></a>
			<a href="#"><li class="nav1-1">나의 쇼핑</li></a>
			<a href="#"><li class="nav1-1" style="color:#35c5f0;">나의 리뷰</li></a>
			<a href="#"><li class="nav1-1">설정</li></a>
		</ul>
	</div>
	<div class="nav2">
		<ul class="nav2-1">
			<a href="#"><li class="nav2-2"  style="color:#35c5f0; border-bottom:5px solid #35c5f0;">리뷰쓰기</li></a>
			<a href="#"><li class="nav2-2">내가 작성한 리뷰</li></a>
		</ul>
	</div>
</div>
<div class="profile">
<div class="mid">

	<div class="review-my-home__search__title">내가 사용하는 상품 리뷰쓰기</div>
		<form class="review-my-home__search__form">
			<div class="review-my-home__search__form__wrap">
				<input placeholder="브랜드명 혹은 상품명을 입력하세요." value="" class="form-control review-my-home__search__form__input"/>
				<button class="gum" type="submit">검색</button>
			</div>
		</form>
		<div class="virtualized-list review-my-home__review-list"></div>
	


</div>	
</div>
<script src="https://static.ohou.se/dist/js/templates-Review-MyHome-WriteReview-14734a09a8610d2edf30.chunk.js"></script>  <script src="https://static.ohou.se/dist/js/4-022d8473f8afb07c4522.chunk.js"></script>
</body>
</html>