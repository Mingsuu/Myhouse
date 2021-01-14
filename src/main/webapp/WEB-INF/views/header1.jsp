<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My House</title>
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
				$(location).attr('href',"http://localhost:9000/myhouse/index.do"); 
				
			}
		}); 
	});
</script>
</head>
<body>
	<header class="header">
		<div class="container">
				<div class="logo">
						<a href="http://localhost:9000/myhouse/index.do"><img src="http://localhost:9000/myhouse/images/logo.png"></a>
				</div>
				<nav class="layout-navigation-primary__menu">
					<a class="layout-navigation-primary__menu__item" href="http://localhost:9000/myhouse/index.do">커뮤니티</a>
					<a class="layout-navigation-primary__menu__item" href="http://localhost:9000/myhouse/index.do">스토어</a>
				</nav>
				<div class="layout-navigation-primary__right">
					<div class="layout-navigation-bar-search">
						<div class="layout-navigation-search" id="id-1">
							<div class="layout-navigation-search__header">
								<div id="id-1-combobox"
									class="layout-navigation-search__combobox" role="combobox"
									aria-haspopup="listbox" aria-expanded="false">
									<div class="layout-navigation-search__input">
										<input type="text"
											class="layout-navigation-search__input__text" value=""
											autocomplete="off" size="1" id="id-1-input"
											aria-autocomplete="list" placeholder="오늘의집 통합검색"
											aria-label="오늘의집 통합검색">
										<svg class="layout-navigation-search__input__icon" width="24"
											height="24" viewBox="0 0 24 24" fill="none"
											stroke="currentColor" stroke-width="2"
											preserveAspectRatio="xMidYMid meet">
											<path d="M22 22l-5-5"></path>
											<circle cx="11" cy="11" r="8"></circle></svg>
									</div>
								</div>
							</div>
						</div>
					</div>
					<a class="layout-navigation-bar-icon" title="장바구니" aria-label="장바구니"
						href="http://localhost:9000/myhouse/index.do"><svg class="icon" width="24" height="24"
							viewBox="0 0 24 24" stroke="currentColor" fill="none"
							stroke-linejoin="round" stroke-width="2"
							preserveAspectRatio="xMidYMid meet">
							<path stroke-linecap="round"
								d="M4 5h18l-2.6 10.5a2 2 0 0 1-2 1.5H8.6a2 2 0 0 1-2-1.5L4 5zm4 15.5a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0zm7 0a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0z"></path>
							<path d="M1 2h3v3"></path></svg></a>
					<div class="layout-navigation-bar-login">
						<a class="layout-navigation-bar-login__item"
							href="http://localhost:9000/myhouse/login.do">로그인</a><a
							class="layout-navigation-bar-login__item" href="http://localhost:9000/myhouse/join.do">회원가입</a>
					</div>
					<div class="drop-down layout-navigation-bar-upload-button">
						<button class="layout-navigation-bar-upload-button__button"
							type="button">
							글쓰기
							<svg class="icon" width="1em" height="1em" viewBox="0 0 16 16"
								preserveAspectRatio="xMidYMid meet">
								<path fill="currentColor" fill-rule="evenodd"
									d="M2.87 4L1.33 5.5 8 12l6.67-6.5L13.13 4 8 9z"></path></svg>
						</button>
					</div>
				</div>
			</div>
	</header>
</body>
</html>