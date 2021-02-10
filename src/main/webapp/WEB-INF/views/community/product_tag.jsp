<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script>
$(document).ready(function(){
 	$('.product_name').change(function(){
 		name = $(this).val();
 		if(name!=""){
 		$.ajax({
 			url:"find_goods.do?gname="+name,
 			success:function(result){
 				var jdata = JSON.parse(result);
 				var output = "<table border='1'>";
 				for(var i in jdata.jlist){
 					output += "<tr><td rowspan='2' class='imgtd'><img src='http://localhost:9000/myhouse/resources/upload/"+jdata.jlist[i].goods_simage+"'>";
 					output += "</td><td class='gname'>"+jdata.jlist[i].goods_name+"</td>";
 					output += "<td rowspan='2' class='button'><button type='button' id='btn_select'>선택</button></td></tr>";
 					output += "<tr><td class='gprice'>"+jdata.jlist[i].goods_price+"원</td></tr>";
 				}
 				output +="</table>";
 				$('table').remove();
 				$('#search').after(output);
 			}
 		});
 		}else{
 			$('table').remove();
 		}
 	});
 	
 	$(document).on("click","button#btn_select",function(){
 		var gname = $(this).parent().parent().children('.gname').text();
 		var output = "<li><button id='gname' class='filter_bar_tag' type='button'>"+gname;
		output += "<svg class='tagIcon' width='12' height='12' viewBox='0 0 12 12' fill='currentColor' preserveAspectRatio='xMidYMid meet'>"
		output += "<path d='M6 4.94L3.879 2.817l-1.061 1.06L4.939 6 2.818 8.121l1.06 1.061L6 7.061l2.121 2.121 1.061-1.06L7.061 6l2.121-2.121-1.06-1.061L6 4.939zM6 12A6 6 0 1 1 6 0a6 6 0 0 1 0 12z'></path>"
		output +="</svg></button></li>";
 		$(opener.document).find('#goods_list').append(output);
 	});
 	
});
</script>
<style>
	img{
		width:80px;
		height:80px;
		padding:10px;
	}
	div#search{
		width:350px;
		padding:15px;
	}
	input {
		width:80%;
		height:40px;
		border:1px solid white;
		border-bottom:1px solid black;
		padding-right:3px;
	}
	
	button.btn_style{
		height:40px;
	}
	table{
		width:350px;
		padding:15px;
		margin-left:10px;
	}
	
	table, table.td {
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		border:1px solid white;
      	border-collapse:collapse;
      	font-size:13px;
      	padding:5px;
	}
	
	td.imgtd{
		width:100px;
	}
	
	td.gname, td.gprice{
		width:150px;
	}
	td.gname{
		padding-top:30px;
		font-weight:bold;
	}
	
	td.gprice{
		padding-bottom:30px;
	}
	td.button{
		text-align:center;
	}
	
	button#btn_select{
		--swiper-theme-color: #007aff;
		--swiper-navigation-size: 44px;
		-webkit-font-smoothing: antialiased;
		-webkit-tap-highlight-color: transparent;
		cursor: pointer;
		touch-action: manipulation;
		display: inline-block;
		margin: 0;
		border: none;
		background: none;
		font: inherit;
		box-sizing: border-box;
		font-weight: 700;
		text-align: center;
		color: #fff;
		background-color: #35c5f0;
		border-radius: 4px;
		transition: background-color .1s;
		width: 50px;
		padding:5px 8px;
		font-size: 14px;
		outline: 0;
	}
</style>
</head>
<body>
	<div id="search">
	<input type="text" class="product_name" placeholder="제품명을 입력하세요">
	<button type="button" id="btnSearch" class="btn_style">검색</button>
	</div>
	
	
</body>
</html>