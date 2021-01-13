<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.total {
	margin:auto;
	width:1200px;
}
.book {
	border:1px solid red;
	text-align:center;
}
.book1 {
	text-align:center;
	border:1px solid red;
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
	border:1px solid red;
}
.book2 {
	border:1px solid blue;
	text-align:center;
}
.book2-1 a {
	list-style:none;
	display:inline-block;
}
</style>
</head>
<body>
	<div class="total">
		<h1 class="book">스크랩북</h1>
		<div class="book1">
			<img src="http://localhost:9000/myhouse/images/mypage/myprofile.jpg" class="pro1">
			<p>귤먹고갈래</p>
		</div>
		<div class="book2">
			<ul class="book2-1">
				<a><li>모두</li></a>
				<a><li>상품</li></a>
				<a><li>사진</li></a>
			</ul>
		</div>
	</div>

</body>
</html>