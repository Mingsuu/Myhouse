<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My House</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		
		$("#btn_sch").click(function(){
			if($("#inp_sch").val() == "") {
				alert("검색할 데이터를 입력해주세요");
				$("#inp_sch").focus();
				return false;
			} else {
				var inp_sch = $("#inp_sch").val();
				var btn_sch = $("#btn_sch").val();
				$(location).attr('href',"http://localhost:9000/One_day_class/indexProc2.jsp?&inp_sch="+inp_sch); 
				
			}
		}); 
	});
</script>
</head>
<body>
	<header>
		<div class="container">
			<div class="container hd_wrap">
				<h1 class="logo">
					<a href="http://localhost:9000/myhouse/index.do"><img src="http://localhost:9000/One_day_class/images/logo.png"></a>
				</h1>
				<div class="hd_bar">
					<div class="hd_search_box">
							<fieldset>
								<input type="text" class="inp_sch" name="inp_sch" id="inp_sch" 
								placeholder="배우고 싶은 재능이나 튜터를 검색해보세요." autocomplete="off"><button class="btn_sch" id="btn_sch"></button>
							</fieldset>
					</div>
				</div>
				<nav class="hd_right">
					<ul class="gnb">
						<li>
							<a href="http://localhost:9000/myhouse/index.do">장바구니</a>
						</li>
						<li>
							<a href="http://localhost:9000/myhouse/index.do">로그인</a>
						</li>
						<li>
							<a href="http://localhost:9000/myhouse/index.do">회원가입</a>
						</li>
						<li>
							<a href="http://localhost:9000/myhouse/index.do">글쓰기</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
</body>
</html>