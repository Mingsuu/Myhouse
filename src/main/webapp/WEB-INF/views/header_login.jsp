<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My House</title>
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
				<a
					class="layout-navigation-bar-icon layout-navigation-bar-icon--hide-mobile"
					title="스크랩북" aria-label="스크랩북" href="/users/11945345/collections">
					<svg class="icon" width="24" height="24" stroke="currentColor"
						viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
						<path fill="none" stroke-width="2"
							d="M3 20.967zm0 0V2.5a.5.5 0 01.5-.5h17a.5.5 0 01.5.5v18.467l-8.057-4.309a2 2 0 00-1.886 0L3 20.968z">
						</path>
					</svg>
				</a> <a
					class="layout-navigation-bar-icon layout-navigation-bar-icon--hide-mobile"
					title="알림" aria-label="알림" href="/notifications/feed"> <svg
						class="icon" width="24" height="24" viewBox="0 0 24 24"
						preserveAspectRatio="xMidYMid meet">
						<path fill="none" stroke="currentColor" stroke-linecap="round"
							stroke-linejoin="round" stroke-width="2"
							d="M10.04 4.19C10.16 3.16 10.6 2 12.05 2c1.35 0 1.78 1.11 1.9 2.13C21.05 5.25 21 13.43 21 19H3c0-5.48-.05-13.48 7.04-14.81zM10 19c0 1.66.9 3 2 3s2-1.34 2-3">
						</path>
					</svg> <span class="layout-navigation-bar-icon__ticker">1</span>
				</a> <a class="layout-navigation-bar-icon" title="장바구니"
					aria-label="장바구니" href="http://localhost:9000/myhouse/index.do">
					<svg class="icon" width="24" height="24" viewBox="0 0 24 24"
						stroke="currentColor" fill="none" stroke-linejoin="round"
						stroke-width="2" preserveAspectRatio="xMidYMid meet">
						<path stroke-linecap="round"
							d="M4 5h18l-2.6 10.5a2 2 0 0 1-2 1.5H8.6a2 2 0 0 1-2-1.5L4 5zm4 15.5a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0zm7 0a1.5 1.5 0 1 1 3 0 1.5 1.5 0 1 1-3 0z">
						</path>
						<path d="M1 2h3v3"></path>
					</svg>
				</a>
				<div class="drop-down layout-navigation-bar-user-section">
					<button class="layout-navigation-bar-user-button" type="button"
						aria-label="유저-아이디">
						<div class="layout-navigation-bar-user-button__image">
							<img class="image"
								src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=36&amp;h=36&amp;c=c"
								srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72&amp;h=72&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72&amp;h=72&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144&amp;h=144&amp;c=c 3x">
						</div>
						<svg class="layout-navigation-bar-user-button__caret" width="8"
							height="8" viewBox="0 0 8 8" fill="currentColor"
							preserveAspectRatio="xMidYMid meet">
							<path d="M0 2l4 4 4-4z"></path></svg>
					</button>
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