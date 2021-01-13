<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크랩</title>

<style>
body.scrap_all {
	width: 1200px;
	margin: 0 auto;
}

h1 {
	font-size: 30px;
	text-align: center;
}

div.username {
	margin: 0 auto;
	text-align: center;
}

div.username img {
	width: 30px;
	height: 30px;
	vertical-align: top;
}

div.username a {
	font-size: 20px;
	color: #757575;
	text-decoration: none;
}
div#navbar {
	width: 100%;
	overflow: hidden;
	border-bottom: 1px solid black;
	margin: 0;
	padding: 0 0 0 12px;
	position: -webkit-sticky;
	position: sticky;
	top: -1px;
	background-color: white;
}
div#navbar a {
	color: #424242;
	float: left;
	display: block;
	font-size: 18px;
	font-weight: 900;
	text-align: center;
	padding: 14px;
	text-decoration: none;
}

div#navbar ul {
	list-style: none;
	width: 300px;
	margin-left: auto;
	margin-right: auto;
}

div#navbar ul li {
	display: inline-block;
	text-align: center;
}
 div#navbar div a{
 	float:right;
	color:#35c5f0;
} 
div session.scrap_listAll{
		display: block;
		margin: auto;
		padding:0;
}
div session.scrap_listAll ul{
	list-style: none;
}
div session.scrap_listAll img{
	width: 280px;
	height: 280px;
	border:2px solid red;
}
</style>
</head>
<body class="scrap_all">
	<h1>스크랩북</h1>
	<div class="username">
		<p>
			<a href="#"><img
				src="http://localhost:9000/myhouse/images/11.webp">username</a>
		</p>
		
	</div>
	<div id="navbar">
		<ul>
			<li><a href="#">모두()</a></li>
			<li><a href="#">상품()</a></li> 
			<li><a href="#">집들이()</a></li>
		</ul>
	 	<div>
			<a href="#">편집</a>
		</div> 
	</div>
<div>
	<session class="scrap_listAll">
	<ul>
		<li><a href="#"><img
				src="http://localhost:9000/myhouse/images/1.webp"></a></li>
		<li><a href="#"><img
				src="http://localhost:9000/myhouse/images/2.webp"></a></li>
		<li><a href="#"><img
				src="http://localhost:9000/myhouse/images/3.webp"></a></li>
		<li><a href="#"><img
				src="http://localhost:9000/myhouse/images/4.webp"></a></li>
		<li><a href="#"><img
				src="http://localhost:9000/myhouse/images/5.webp"></a></li>
		<li><a href="#"><img
				src="http://localhost:9000/myhouse/images/6.webp"></a></li>
		<li><a href="#"><img
				src="http://localhost:9000/myhouse/images/7.webp"></a></li>
		<li><a href="#"><img
				src="http://localhost:9000/myhouse/images/8.webp"></a></li>
		<li><a href="#"><img
				src="http://localhost:9000/myhouse/images/9.webp"></a></li>
		<li><a href="#"><img
				src="http://localhost:9000/myhouse/images/10.webp"></a></li>
d
	</ul>
	</session>
</div>


</body>
</html>