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
.content {
	display:inline-block;
	width:900px;
	height:auto;
	margin-top:40px;
	padding-bottom:30px;
}
.content a {
	text-decoration:none;
}
.content h1 {
	padding-right:600px;
	font-size:24px;
	margin-bottom:10px;
	width:580px;
}
.date {
	width:580px;
	padding-right:600px;
	font-size:16px;
	font-weight:bold;
	color:#828c94;
}
.conbar {
	width:800px;
	margin-left:102px;
	margin-top:30px;
	margin-bottom:30px;
	opacity:0.5;
}
.con1 {
	width:750px;
	margin-left:60px;
	display:inline-block;
}
.con1 p {
	float:left;
	margin:0px;
	font-size:15px;
	margin-bottom:5px;
}
.con2 {
	width:750px;
	margin-left:60px;
	display:inline-block;
	margin-top:25px;
}
.con2 span {
	font-size:15px;
	float:left;
}
.con2-1 {
	color:black;
	font-weight:bold;
}
.con2-2 {
	color:blue;
}
.con3 {
	width:750px;
	margin-left:60px;
	display:inline-block;
	margin-top:25px;
}
.con3 span {
	float:left;
	font-size:15px;
}
.con4 {
	width:700px;
	margin-left:10px;
	display:inline-block;
	margin-top:25px;
}
.con4 span {
	float:left;
	font-size:15px;
}
.con2-3 {
	margin-top:20px;
}
.conbtn {
	font-size:16px;
	font-weight:bold;
	color:white;
	background-color:#35c5f0;
	width:180px;
	height:45px;
	border-radius:4px;
	border:1px solid #35c5f0;
	text-align:center;
	padding-top:4px;
}
.conbtn:hover {
	background-color:rgb(16,175,222);
}	
</style>
</head>
<body>

<div class="navigation">
	<div class="nav">
		<ul class="nav1">
			<a href="mypage_profile.do"><li class="nav1-1">프로필</li></a>
			<a href="mypage_orderlist.do"><li class="nav1-1"  style="color:#35c5f0;">나의 쇼핑</li></a>
			<a href="mypage_review.do"><li class="nav1-1">나의 리뷰</li></a>
			<a href="mypage_option.do"><li class="nav1-1">설정</li></a>
		</ul>
	</div>
	<div class="nav2">
		<ul class="nav2-1">
			<a href="mypage_orderlist.do"><li class="nav2-2">주문배송내역</li></a>
			<a href="mypage_notice.do"><li class="nav2-2" style="color:#35c5f0; border-bottom:5px solid #35c5f0;">공지사항</li></a>
			<a href="mypage_clientcenter.do"><li class="nav2-2">고객센터</li></a>
		</ul>
	</div>
</div>
<div class="profile">
<div class="mid">
	<div class="content">
		<h1>오늘의집 개인정보처리방침 변경 안내</h1>
		<span class="date">2020. 12. 31</span>
		<hr class="conbar">
		<div class="con1">
			<p class="con1-1">안녕하세요.</p>
			<p>버킷플레이스는 고객님들의 개인정보를 더욱 투명하고 안전하게 관리하고자 개인정보처리방침을 공개하고 있으며,</p>
			<p>변경사항 발생 시 공지사항을 통해 오늘의집 고객분들에게 안내하고 있습니다.</p>
 			<p>새롭게 바뀌는 개인정보처리방침 내용을 확인하시고 서비스 이용에 참고하시기 바랍니다.</p>
		</div>
		<div class="con2">
			<span class="con2-1">1. 변경내용</span><br>
			<span class="con2-2">개인정보 국외이전 업체 추가</span><br>
			<span>&nbsp;&nbsp;&nbsp; - 마케팅 솔루션 브레이즈를 통하여 미국에 있는 서버에 저장 (이메일, 휴대폰번호, 휴대폰 ID)</span><br>
 			<span class="con2-2">개인정보 수탁업체 변경 및 추가</span><br>
 			<span>&nbsp;&nbsp;&nbsp;- 트랜스 코스모스(고객센터 확장)</span><br>
 			<span>&nbsp;&nbsp;&nbsp;- 더화이트커뮤니케이션 (고객 채팅상담 운영)</span><br>
 			<span>&nbsp;&nbsp;&nbsp;- 아임포트 (주문 연동 전자결제)</span><br>
 			<span>&nbsp;&nbsp;&nbsp;- 애니트랙 (일부 상품 직접 배송 서비스 제공을 위한 시스템 위탁)</span><br>
 			<span class="con2-2">이용자의 의무사항 추가</span><br>
 			<span>&nbsp;&nbsp;&nbsp;- ID/비밀번호 관리 의무</span><br>
 			<span>&nbsp;&nbsp;&nbsp;- 타인의 개인정보 도용 금지 등</span>
		</div>
		<div class="con3">
			<span class="con2-1">2. 개정시기</span><br>
			<span>변경된 개인정보처리방침은 2021년 1월 10일에 개정되어 효력이 발생됩니다.</span>
		</div>
		<div class="con4">
			<span class="con2-1">3. 이의 및 문의제기</span>
			<span>개정된 개인정보처리방침 내용에 대한 문의와 이의제기는 개인정보 고충처리부서로 문의 주시기 바랍니다.</span>
			<span>&nbsp;&nbsp;&nbsp;(대표전화 : 1670-0876, 상담시간 월~금 09:00~18:00 (주말, 공휴일 제외))</span>
			<span>개정된 개인정보처리방침 내용에 동의하지 않으시는 경우, 회원탈퇴를 요청할 수 있습니다.</span>
			<span class="con2-3">앞으로도 보다 나은 서비스를 제공할 수 있도록 최선의 노력을 다하는 버킷플레이스가 되도록 하겠습니다.</span>
			<span>감사합니다.</span>
		</div>
			<hr class="conbar">
			<a href="mypage_notice.do"><button type="button" class="conbtn">목록으로 돌아가기</button></a>
	</div>
		
</div>
</div>
</body>
</html>