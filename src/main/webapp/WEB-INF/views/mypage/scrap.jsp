<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	font-family: "Noto Sans KR";
}
.total {
	margin:auto;
	width:1200px;
}
.book {
	text-align:center;
	font-size:28px;
	margin-top:20px;
}
.book1 {
	text-align:center;
	height:50px;
}
.pro1 {
	width:25px;
	height:25px;
	border-radius:100%;
	margin-top:10px;
}
.book1 p {
	display:inline;
	font-weight:bold;
	color:#757575;
}
.book1 p:hover {
	text-decoration:underline;
}
.book2 {
	border-bottom:1px solid lightgray;
	text-align:center;
}
.book2-1 {
 	height:59px;
 	margin:0px;
}
.book2-1 a {
	list-style:none;
	display:inline-block;
	font-size:15px;
	font-weight:bold;
	margin-right:20px;
	margin-top:20px;
	padding-bottom:14px;
	padding-left:5px;
	padding-right:5px;
}
.book2-1 a:hover {
	color: #35c5f0;
}
.modu {
	border-bottom:5px solid #35c5f0;
	color:#35c5f0;
}
.upbtn {
	float:right;
	margin-top:10px;
	background-color:white;
	border:1px solid white;
	font-size:15px;
	color: #35c5f0;
}
.upbtn:hover {
	color:rgb(16,175,222);
}
.grim img {
	margin-top:70px;
	width:237px;
	height:237px;
	padding-right:10px;
}
.bookshare {
	display:inline-block;
	float:right;
	z-index:5;
}
</style>
</head>
<body>
	<div class="total">
		<img src="http://localhost:9000/myhouse/images/mypage/share.PNG" class="bookshare"><br>
		<h1 class="book">스크랩북</h1>
		<div class="book1">
			<img src="http://localhost:9000/myhouse/images/mypage/myprofile.jpg" class="pro1">
			<p>귤먹고갈래</p>
		</div>
		<div class="book2">
			<ul class="book2-1">
				<a class="modu"><li>모두 (2)</li></a>
				<a><li>상품 (1)</li></a>
				<a><li>사진 (1)</li></a>
			</ul>
		</div>
		<div calss="updatebtn">
			<button type="button" class="upbtn">편집</button>
		</div>
		<div class="grim">
			<a href="#"><img src="http://localhost:9000/myhouse/images/mypage/pic1.jpg"></a>
			<a href="#"><img src="http://localhost:9000/myhouse/images/mypage/pic2.jpg"></a>
		</div>
	</div>

</body>
</html>