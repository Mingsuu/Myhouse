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
.orderbox,
.orderstatus {
	border:1px solid lightgray;
	border-radius:9px;
	display:inline-block;
	width:1000px;
	height:140px;
	margin-top:70px;
	box-shadow: 0 1px 4px 0 rgba(17,17,17,0.1);
}
.orderbox a {
	color:#424242;
}
.orderbox a:hover {
	color:black;
}
.orderbox1 {
	display:inline-block;
	font-size:20px;
	width:300px;
	height:80px;
	margin-top:35px;
}
.icon {
	width:20px;
	height:40px;
	opacity:0.5;
	display:inline-block;
	margin-bottom:5px;
}
.orderstatus {
	height:200px;
}
.orderstatus img {
	width:11px;
	height:8px;
}
.gigan {
	width:58px;
	height:30px;
	background-color:#f5f5f5;
	border:1px solid #f5f5f5;
	color:#757575;
	font-weight:bold;
	margin-right:6px;
	margin-left:30px;
	float:left;
}
.jumun {
	width:85px;
	height:30px;
	background-color:#f5f5f5;
	border:1px solid #f5f5f5;
	color:#757575;
	font-weight:bold;
	float:left;
}
.status {
	height:40px;
	margin-top:30px;
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
			<a href="#"><li class="nav1-1">프로필</li></a>
		</ul>
	</div>
	<div class="nav2">
		<ul class="nav2-1">
			<a href="#"><li class="nav2-2"   style="color:#35c5f0; border-bottom:5px solid #35c5f0;">주문배송내역</li></a>
			<a href="#"><li class="nav2-2">상품문의내역</li></a>
			<a href="#"><li class="nav2-2">공지사항</li></a>
			<a href="#"><li class="nav2-2">고객센터</li></a>
		</ul>
	</div>
</div>
<div class="profile">
<div class="mid">
	
		<div class="orderbox">
			<a href="#"><div class="orderbox1">
				<div class="orderlist">입금대기</div>
				<div class="orderlist1" style="color:#35c5f0;">0</div>
			</div></a>
			
		<img src="http://localhost:9000/myhouse/images/mypage/order.png" class="icon">
			
			<a href="#"><div class="orderbox1">
				<div class="orderlist">결재완료</div>
				<div class="orderlist1" style="color:#35c5f0;">0</div>
			</div></a>
			
		<img src="http://localhost:9000/myhouse/images/mypage/order.png" class="icon">
			
			<a href="#"><div class="orderbox1">
				<div class="orderlist">구매확정</div>
				<div class="orderlist1" style="color:#35c5f0;">0</div>
			</div></a>
		</div>
	<div class="orderstatus">
		<div class="status">
			<button class="gigan">기간 <img src="http://localhost:9000/myhouse/images/mypage/order1.png"></button>
			<button class="jumun">주문상태 <img src="http://localhost:9000/myhouse/images/mypage/order1.png"></button>
		</div>
	</div>
</div>
</div>
</body>
</html>