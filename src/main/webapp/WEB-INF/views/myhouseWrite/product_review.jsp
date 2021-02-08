<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="http://localhost:9000/myhouse/css/mypage1.css"> -->
<!-- <script src="http://localhost:9000/myhouse/js/myhouse.js"></script> -->
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/yj.css">

 <script>
	$(document).ready(function(){
		
		//선택등록 버튼 
		$("#btnInsert").click(function(){
			var choice = confirm("등록하시겠습니까?");
			if(choice){
				var chk_list = new Array();		
				
				$("input[type=checkbox]:checked").each(function(i){

					chk_list += $(this).attr("id") + ","
				});	
				/* alert(chk_list); */
				$(opener.document).find("#ptag").val(chk_list);
				
				window.close();
			}			
		});
	});
 </script>
 <style>
 .search-page__title{
 	display:block;
 	background-color:#35c5f0;
 	text-align:center;
 }
 .ul{
 		display: block;
		padding: 0 30px;
 }
.list_item{
		margin-left:85px;
		float: left;
		padding: 35px 10px;
		list-style-type: none;	

}
.list_item>.image{
		height: 200px;
		width: 200px;
		border-radius:8px;
}
.search-page container{
	width: 750px;
	display: block;
	margin: auto;
	padding:50px 0 0 0 ;
}
.info{
	text-align:center;
	margin:auto;
}
.btn_style{
  	width:100px;
    background-color: #35c5f0;
    border: none;
    color:#fff;
    padding:20px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    margin: 4px;
    cursor: pointer;
    border-radius:4px;
}
 </style>
<body>
<article class="search-page container">
	<h1 class="search-page__title" style="color:white;,size:100px;">‘${value}’에 대한 스토어 검색 결과 
		<span class="search-page__number"style="color:white;">${interior_list.size()+community_list.size()}개</span>
	</h1>
	<section class="search-item">
		<div class="scroller-wrap search-store__scroller scroller-wrap--enabled">
			<div class="scroller">
				<div class="scroller__content-wrap" tabindex="-1">
						<ul>
							<c:forEach var="vo" items="${interior_list}">
							<li class="list_item">
							<input type="checkbox" id="${vo.gno}">
										<a href="http://localhost:9000/myhouse/store_page.do?gno=${vo.gno}"></a>
											<img class="image" src="http://localhost:9000/myhouse/images/${vo.goods_simage}">
											<div class="production-item-image__dark-overlay"></div>
										<div class="info">
											<h1 class="production-item__header">
												<span class="production-item__header__brand">${vo.company}</span>
												<span class="production-item__header__name">${vo.ititle}</span>
											</h1>
											<span class="production-item-price">
												<span class="production-item-price__price">${vo.goods_price}</span>
											</span>
										</div>
							</li>
								</c:forEach>
								</ul>
								<button type="button" class="btn_style" id="btnInsert">태그 등록</button>
					</div>
				</div>
		</div>
	</section>
</article>
</body>
</html>