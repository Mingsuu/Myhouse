<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My House</title>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/yj.css">
<script>
	$(document)
			.ready(
					function() {

						$("#btn_sch")
								.click(
										function() {
											if ($("#inp_sch").val() == "") {
												alert("검색할 데이터를 입력해주세요");
												$("#inp_sch").focus();
												return false;
											} else {
												var inp_sch = $("#inp_sch")
														.val();
												var btn_sch = $("#btn_sch")
														.val();
												$(location)
														.attr('href',
																"http://localhost:9000/myhouse/index.do");

											}
										});
					});
</script>
</head>
<body>
	<header class="header">
		<div class="container">
			<div class="logo">
				<a href="http://localhost:9000/myhouse/index.do"><img
					src="http://localhost:9000/myhouse/images/logo.png"></a>
			</div>
			<nav class="layout-navigation-primary__menu">
				<a class="layout-navigation-primary__menu__item" id="marginpadding"
					href="http://localhost:9000/myhouse/index.do">커뮤니티</a> <a
					class="layout-navigation-primary__menu__item"
					href="http://localhost:9000/myhouse/index.do">스토어</a>
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
					href="http://localhost:9000/myhouse/index.do"><svg class="icon"
						width="24" height="24" viewBox="0 0 24 24" stroke="currentColor"
						fill="none" stroke-linejoin="round" stroke-width="2"
						preserveAspectRatio="xMidYMid meet">
							<path stroke-linecap="round"
							d="M4 5h18l-2.6 10.5a2 2 0 0 1-2 1.5H8.6a2 2 0 0 1-2-1.5L4 5zm4 15.5a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0zm7 0a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0z"></path>
							<path d="M1 2h3v3"></path></svg></a>
				<div class="layout-navigation-bar-login">
					<a class="layout-navigation-bar-login__item"
						href="http://localhost:9000/myhouse/login.do">로그인</a><a
						class="layout-navigation-bar-login__item"
						href="http://localhost:9000/myhouse/join.do">회원가입</a>
				</div>
				<div class="drop-down layout-navigation-bar-upload-button">
					<button class="layout-navigation-bar-upload-button__button"
						type="button" id="depth_my_page" >
						MENU
						<svg class="icon" width="1em" height="1em" viewBox="0 0 16 16"
							preserveAspectRatio="xMidYMid meet">
								<path fill="currentColor" fill-rule="evenodd"
								d="M2.87 4L1.33 5.5 8 12l6.67-6.5L13.13 4 8 9z"></path></svg>
					</button>
					<div id="write_box"class="popout popout--prepared popout--axis-1 popout--dir-2 popout--cross-dir-2"
			data-popout="true"
			style="position: absolute; z-index: 1000; right: 0px; top: 35px; display:none;">
			<div class="animated-popout drop-down__content open open-active">
				<div class="_2TAbe navigation-upload-dropdown-content">
					<a class="navigation-upload-dropdown-content-item"
						href="http://localhost:9000/myhouse/index.do"><div
							class="navigation-upload-dropdown-content-item__icon">
							<svg width="36" height="36" viewBox="0 0 36 36"
								preserveAspectRatio="xMidYMid meet">
								<g fill="none" fill-rule="evenodd">
								<path d="M0 0h36v36H0z"></path>
								<g transform="translate(2 1)">
								<rect width="27" height="29" x="3.5" y="3.5" fill="#DBDBDB"
									stroke="#000" rx="3" transform="rotate(4 17 18)"></rect>
								<rect width="27" height="29" x=".5" y=".5" fill="#FFF"
									stroke="#000" rx="3"></rect>
								<path
									d="M23 15l-5-.46v-3.5l5 .46V15zm-6-4.04v3.5L12 14v-3.5l5 .46zm1-4.42L23 7v3.5l-5-.46v-3.5zM12 6l5 .46v3.5l-5-.46V6z"
									fill="#FFF"></path>
								<path fill="#E6A87C" d="M3 18l22 2v7L3 25z"></path>
								<path fill="#F1C8A3" d="M8 2.45H3v20l5-4v-16z"></path></g></g></svg>
						</div>
						<div class="navigation-upload-dropdown-content-item__content">
							<div class="navigation-upload-dropdown-content-item__title">사진
								올리기</div>
							<div class="navigation-upload-dropdown-content-item__subtitle">우리집
								사진을 공유해보세요.</div>
						</div></a><a class="navigation-upload-dropdown-content-item"
						href="http://localhost:9000/myhouse/index.do"><div
							class="navigation-upload-dropdown-content-item__icon">
							<svg width="36" height="36" viewBox="0 0 36 36"
								preserveAspectRatio="xMidYMid meet">
								<g fill="none" fill-rule="evenodd">
								<path d="M0 0h36v36H0z"></path>
								<g stroke-linejoin="round" transform="translate(2 3)">
								<rect width="4" height="8" x="3" y="21" fill="#FFB787"
									stroke="#000" rx="2"></rect>
								<rect fill="#FFE2C7" width="24" height="25" rx="3"></rect>
								<rect fill="#ffe2c7" width="24" height="25" rx="3"></rect>
								<rect stroke="#000" width="24" height="25" rx="3"
									stroke-width="1.2"></rect>
								<rect width="6" height="3" x="9" y="5" fill="#DB9F77"
									stroke="#FFF" rx="1.5"></rect>
								<rect width="6" height="3" x="9" y="17" fill="#DB9F77"
									stroke="#FFF" rx="1.5"></rect>
								<path fill="#FFDB92" stroke="#EDC29B" d="M1.5 12.5h21"></path></g>
								<path fill="#35C5F0"
									d="M26.25 31.53l-3.7 1.32a1 1 0 01-1.34-.97l.1-3.93a.99.99 0 00-.2-.64l-2.4-3.11a1 1 0 01.51-1.57l3.77-1.12a1 1 0 00.55-.39l2.22-3.24a1 1 0 011.65 0l2.22 3.24a1 1 0 00.55.4l3.77 1.1a1 1 0 01.5 1.58l-2.4 3.11a1 1 0 00-.2.64l.11 3.93a1 1 0 01-1.33.97l-3.71-1.32a1 1 0 00-.67 0z"></path>
								<path fill="#9AE2F7"
									d="M27.15 17.61a1 1 0 01.26.26l2.22 3.25c.06.09.13.16.22.23l-8.59 8.58.06-1.98a.99.99 0 00-.21-.64l-2.4-3.11a1 1 0 01.51-1.57l3.77-1.12a1 1 0 00.55-.39l2.22-3.24a1 1 0 011.39-.26z"></path>
								<path stroke="#000"
									d="M26.29 30.85l-3.31 1.17a.9.9 0 01-1.2-.86l.1-3.51c0-.2-.06-.4-.18-.57l-2.14-2.78a.9.9 0 01.45-1.4l3.37-.99a.9.9 0 00.48-.35l1.99-2.9a.9.9 0 011.47 0l1.99 2.9c.11.17.28.3.48.35l3.37 1a.9.9 0 01.45 1.4l-2.14 2.77a.89.89 0 00-.18.57l.1 3.5a.9.9 0 01-1.2.87l-3.3-1.17a.9.9 0 00-.6 0z"
									stroke-width="1.2"></path></g></svg>
						</div>
						<div class="navigation-upload-dropdown-content-item__content">
							<div class="navigation-upload-dropdown-content-item__title">상품
								리뷰 쓰기</div>
							<div class="navigation-upload-dropdown-content-item__subtitle">상품
								리뷰를 작성하고 포인트도 받아보세요.</div>
						</div></a><a class="navigation-upload-dropdown-content-item"
						href="http://localhost:9000/myhouse/index.do"><div
							class="navigation-upload-dropdown-content-item__icon">
							<svg width="36" height="36" viewBox="0 0 36 36"
								preserveAspectRatio="xMidYMid meet">
								<g fill="none" fill-rule="evenodd">
								<g transform="translate(2 3)">
								<g fill-rule="nonzero" stroke-linecap="round"
									stroke-linejoin="round">
								<path fill="#cae5ec"
									d="M19 0a3 3 0 013 3v12a3 3 0 01-3 3H7.67L5.7 19.47 5 20v-2H3a3 3 0 01-3-3V3a3 3 0 013-3h16z"></path>
								<path stroke="#000"
									d="M19-.5A3.5 3.5 0 0122.5 3h0v12a3.5 3.5 0 01-3.5 3.5h0H7.83l-1.82 1.37L4.5 21v-2.5H3A3.5 3.5 0 01-.5 15h0V3A3.5 3.5 0 013-.5h0z"></path></g>
								<rect width="20.03" height="13.89" x=".99" y="1.64" rx="2"
									ry="2" fill="#e4f2f6"></rect>
								<path d="M0 0h36v36H0z"></path>
								<rect width="15" height="2" x="3.5" y="5" stroke="#FFF" rx="1"></rect>
								<rect width="15" height="2" x="3.5" y="8.5" stroke="#FFF" rx="1"></rect>
								<rect width="8" height="2" x="3.5" y="12" stroke="#FFF" rx="1"></rect>
								<rect width="14" height="1" x="4" y="5.5" fill="#000" rx=".5"></rect>
								<rect width="14" height="1" x="4" y="9" fill="#000" rx=".5"></rect>
								<rect width="7" height="1" x="4" y="12.5" fill="#000" rx=".5"></rect></g>
								<g transform="translate(16 18)">
								<g fill-rule="nonzero" stroke-linecap="round"
									stroke-linejoin="round">
								<path fill="#ededed"
									d="M15 0a3 3 0 013 3v7a3 3 0 01-3 3h-3v2l-2.67-2H3a3 3 0 01-3-3V3a3 3 0 013-3h12z"></path>
								<path stroke="#000"
									d="M15-.5A3.5 3.5 0 0118.5 3h0v7a3.5 3.5 0 01-3.5 3.5h0-2.5V16l-3.33-2.5H3A3.5 3.5 0 01-.5 10h0V3A3.5 3.5 0 013-.5h0z"></path></g>
								<rect width="16.01" height="8.94" x="1.07" y="1.4" rx="2" ry="2"
									fill="#fff"></rect>
								<rect width="3" height="2" x="3.5" y="5.5" stroke="#FFF" rx="1"></rect>
								<rect width="2" height="1" x="4" y="6" fill="#000" rx=".5"></rect>
								<rect width="2" height="1" x="8" y="6" fill="#000" rx=".5"></rect>
								<rect width="2" height="1" x="12" y="6" fill="#000" rx=".5"></rect>
								<rect width="3" height="2" x="7.5" y="5.5" stroke="#FFF" rx="1"></rect>
								<rect width="3" height="2" x="11.5" y="5.5" stroke="#FFF" rx="1"></rect></g></g></svg>
						</div>
						<div class="navigation-upload-dropdown-content-item__content">
							<div class="navigation-upload-dropdown-content-item__title">고객센터</div>
							<div class="navigation-upload-dropdown-content-item__subtitle">궁금하신
								사항을 남겨주시면 빠르게 안내해드릴게요.</div>
						</div></a>
				</div>
			</div>
		</div>
				</div>
			</div>
		</div>
		
	</header>
	<script>
	
	$(document).ready(function(){
		$("#depth_my_page").click(function(){
			var style=$("#write_box").attr('style');
			if(style=="position: absolute; z-index: 1000; right: 0px; top: 35px;"){
				$("#write_box").hide();
			}else {
				$("#write_box").show();
			}
		});
		
	});
	
	</script>
</body>
</html>