<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body.scrap_product {
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

div#navbar ul li.product a {
	color: #35c5f0;
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

div#navbar div button {
	background-color: #f5f5f5;
	border-color: #f5f5f5;
	color: #757575;
	font-size: 16px;
	font-weight: 900;
	line-height: 19px;
	padding: 10px 10px 10px;
	border-radius: 4px;
	border: 0;
	outline: 0;
}

div#navbar div a {
	float: right;
	color: #35c5f0;
}
/*   session.scrap_listAll{
		margin: auto;
}  */
div session.scrap_listProduct ul{
	list-style: none;
	/* margin:0 0;
    padding:0 0;  */
}
div session.scrap_listProduct ul li {
    margin: auto;
    padding: 0 0 0 0;
    border : 0;
	/* float: left; */
	width: 280px;
}

div session.scrap_listProduct a {
	display: inline-block;
}

div session.scrap_listProduct img {
	width: 280px;
	height: 280px;
}

div session.scrap_listProduct div.list_info p {
	border: 2px solid blue;
	line-height: 20px;
}
</style>
</head>
<body class="scrap_product">
	<h1>스크랩북</h1>
	<div class="username">
		<p>
			<a href="#"><img
				src="http://localhost:9000/myhouse/images/11.webp">username</a>
		</p>

	</div>
	<div id="navbar">
		<ul>
			<li class="all"><a
				href="http://localhost:9000/myhouse/scrap_all.do">모두()</a></li>
			<li class="product"><a
				href="http://localhost:9000/myhouse/scrap_product.do">상품()</a></li>
			<li class="houses"><a
				href="http://localhost:9000/myhouse/scrap_houses.do">집들이()</a></li>
		</ul>
		<div>
			<button type="button" class="kategoli">카테고리</button>
			<a href="#">편집</a>
		</div>
	</div>

	<div>
		<session class="scrap_listProduct">
		<ul>
			<li><a href="#"><img
					src="http://localhost:9000/myhouse/images/1.webp">
					<div class="list_info">
						<span>앨빈디자인(제조회사)</span></br> <span>스칸디아모스 인테리어 액자(제품명)</span></br>
						<spna>14,500(가격)</span>
						</br>
						<span>리뷰 갯수4</span>
					</div></a></li>
			<li><a href="#"><img
					src="http://localhost:9000/myhouse/images/2.webp">
					<div class="list_info">
						<span>앨빈디자인(제조회사)</span></br> <span>스칸디아모스 인테리어 액자(제품명)</span></br>
						<spna>14,500(가격)</span>
						</br>
						<span>리뷰 갯수4</span>
					</div></a></li>
			<li><a href="#"><img
					src="http://localhost:9000/myhouse/images/3.webp">
				<div class="list_info">
						<span>앨빈디자인(제조회사)</span></br> <span>스칸디아모스 인테리어 액자(제품명)</span></br>
						<spna>14,500(가격)</span>
						</br>
						<span>리뷰 갯수4</span>
					</div></a></li>
			<li><a href="#"><img
					src="http://localhost:9000/myhouse/images/4.webp">
				<div class="list_info">
						<span>앨빈디자인(제조회사)</span></br> <span>스칸디아모스 인테리어 액자(제품명)</span></br>
						<spna>14,500(가격)</span>
						</br>
						<span>리뷰 갯수4</span>
					</div></a></li>
			<li><a href="#"><img
					src="http://localhost:9000/myhouse/images/5.webp">
				<div class="list_info">
						<span>앨빈디자인(제조회사)</span></br> <span>스칸디아모스 인테리어 액자(제품명)</span></br>
						<spna>14,500(가격)</span>
						</br>
						<span>리뷰 갯수4</span>
					</div></a></li>
			<li><a href="#"><img
					src="http://localhost:9000/myhouse/images/6.webp">
				<div class="list_info">
						<span>앨빈디자인(제조회사)</span></br> <span>스칸디아모스 인테리어 액자(제품명)</span></br>
						<spna>14,500(가격)</span>
						</br>
						<span>리뷰 갯수4</span>
					</div></a></li>
			<li><a href="#"><img
					src="http://localhost:9000/myhouse/images/7.webp">
				<div class="list_info">
						<span>앨빈디자인(제조회사)</span></br> <span>스칸디아모스 인테리어 액자(제품명)</span></br>
						<spna>14,500(가격)</span>
						</br>
						<span>리뷰 갯수4</span>
					</div></a></li>
			<li><a href="#"><img
					src="http://localhost:9000/myhouse/images/8.webp">
				<div class="list_info">
						<span>앨빈디자인(제조회사)</span></br> <span>스칸디아모스 인테리어 액자(제품명)</span></br>
						<spna>14,500(가격)</span>
						</br>
						<span>리뷰 갯수4</span>
					</div></a></li>
			<li><a href="#"><img
					src="http://localhost:9000/myhouse/images/9.webp">
				<div class="list_info">
						<span>앨빈디자인(제조회사)</span></br> <span>스칸디아모스 인테리어 액자(제품명)</span></br>
						<spna>14,500(가격)</span>
						</br>
						<span>리뷰 갯수4</span>
					</div></a></li>
			<li><a href="#"><img
					src="http://localhost:9000/myhouse/images/10.webp">
				<div class="list_info">
						<span>앨빈디자인(제조회사)</span></br> <span>스칸디아모스 인테리어 액자(제품명)</span></br>
						<spna>14,500(가격)</span>
						</br>
						<span>리뷰 갯수4</span>
					</div></a></li>
			<li><a href="#"><img
					src="http://localhost:9000/myhouse/images/10.webp">
				<div class="list_info">
						<span>앨빈디자인(제조회사)</span></br> <span>스칸디아모스 인테리어 액자(제품명)</span></br>
						<spna>14,500(가격)</span>
						</br>
						<span>리뷰 갯수4</span>
					</div></a></li>
			<li><a href="#"><img
					src="http://localhost:9000/myhouse/images/10.webp">
				<div class="list_info">
						<span>앨빈디자인(제조회사)</span></br> <span>스칸디아모스 인테리어 액자(제품명)</span></br>
						<spna>14,500(가격)</span>
						</br>
						<span>리뷰 갯수4</span>
					</div></a></li>
			<li><a href="#"><img
					src="http://localhost:9000/myhouse/images/10.webp">
				<div class="list_info">
						<span>앨빈디자인(제조회사)</span></br> <span>스칸디아모스 인테리어 액자(제품명)</span></br>
						<spna>14,500(가격)</span>
						</br>
						<span>리뷰 갯수4</span>
					</div></a></li>
			<li><a href="#"><img
					src="http://localhost:9000/myhouse/images/10.webp">
				<div class="list_info">
						<span>앨빈디자인(제조회사)</span></br> <span>스칸디아모스 인테리어 액자(제품명)</span></br>
						<spna>14,500(가격)</span>
						</br>
						<span>리뷰 갯수4</span>
					</div></a></li>
			<li><a href="#"><img
					src="http://localhost:9000/myhouse/images/10.webp">
				<div class="list_info">
						<span>앨빈디자인(제조회사)</span></br> <span>스칸디아모스 인테리어 액자(제품명)</span></br>
						<spna>14,500(가격)</span>
						</br>
						<span>리뷰 갯수4</span>
					</div></a></li>

		</ul>
		</session>
	</div>
	<div>
		<< 1 2 3 4 5 6 7 8 9 10 페이징 처리예정 >>
	</div>
</body>
</html>