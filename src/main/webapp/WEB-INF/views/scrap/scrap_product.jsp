<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.myhouse.vo.*"
	%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	//로그인 성공 시 저장한 세션객체 가져오기
	SessionVO svo = (SessionVO)session.getAttribute("svo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/gr.css">
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/yj.css">
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="../header1.jsp" />

	<div class="container collection-feed">
		<main>
			<header class="row collection-book-header">
				<div>
					<h1 class="collection-book-title__book-name">스크랩북</h1>
					<p class="collection-book-owner">
						<a class="collection-book-owner__link" href="http://localhost:9000/myhouse/mypage_profile1.do"><img
							class="profile-image"
							src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=36&amp;h=36&amp;c=c&amp;webp=1"
							srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 3x"><span
							class="collection-book-owner__name"><%=svo.getNickname()%></span></a>
					</p>
				</div>
				<div class="collection-book-actions">
					<div class="drop-down">
						<a><svg class="collection-book-actions__share-icon" width="24"
								height="24" viewBox="0 0 24 24" fill="currentColor"
								preserveAspectRatio="xMidYMid meet">
								<path
									d="M9.64 14.646a4.5 4.5 0 1 1 0-5.292l4.54-2.476a4.5 4.5 0 1 1 .63.795l-4.675 2.55c.235.545.365 1.146.365 1.777s-.13 1.232-.365 1.777l4.675 2.55a4.5 4.5 0 1 1-.63.795l-4.54-2.476zM18 8a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM6 15.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM18 23a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"></path></svg></a>
					</div>
				</div>
			</header>
			<div data-sticky-enabled="false" data-sticky-disabled="false"
				data-sticky-always="false" data-sticky-ignore="false"
				data-direction="top" data-offset="81"
				class="sticky-container collection-feed__navi"
				style="position: sticky; top: 81px;">
				<div class="sticky-child" style="position: relative;">
					<nav class="page-navigation collection-book-nav">
						<ul style="transform: translateX(0px);">
							<li class="page-navigation__item"><a class=""
								href="http://localhost:9000/myhouse/scrap_all.do" target="_self">모두 (14)</a></li>
							<li class="page-navigation__item"><a class="active"
								href="http://localhost:9000/myhouse/scrap_product.do"
								target="_self">상품 (12)</a></li>
							<li class="page-navigation__item"><a class=""
								href="http://localhost:9000/myhouse/scrap_houses.do" target="_self">커뮤니티
									(2)</a></li>
						</ul>
					</nav>
				</div>
			</div>
			<div data-sticky-enabled="false" data-sticky-disabled="false"
				data-sticky-always="false" data-sticky-ignore="false"
				data-direction="top" data-offset="142"
				class="sticky-container collection-feed__edit-panel"
				style="position: sticky; top: 142px;">
				<div class="sticky-child" style="position: relative;">
					<div class="collection-feed__edit-panel__wrap">
						<div class="collection-feed__edit-panel__left">
							<div class="filter">
								<div class="filter-bar">
									<div class="collection-book-control-list">
										<ul class="collection-book-control-list__left">
											<li class="collection-book-control-list__item"><div
													class="drop-down panel-drop-down filter-bar-control">
													<!-- <button
														class="button button--color-gray-4 button--size-50 button--shape-4 filter-bar-control__button">
														카테고리
														<svg class="icon" width="12" height="12"
															viewBox="0 0 12 12" fill="currentColor"
															preserveAspectRatio="xMidYMid meet">
															<path
																d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path></svg>
													</button> -->
												</div></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="collection-feed__edit-panel__menus">
							<button type="button"
								class="collection-feed__edit-panel__menus__menu
                  collection-feed__edit-panel__menus__menu--skyblue">편집</button>
						</div>
					</div>
				</div>
			</div>
			<div class="virtualized-list collection-feed-collections row"
				style="padding-top: 0px; padding-bottom: 100px; transform: translateY(0px);">
				<div class="col-6 col-md-4 col-lg-3" style="">
					<div class="collection__wrap">
						<article class="production-item">
							<a class="production-item__overlay"
								href="/productions/154487/selling"></a>
							<div class="production-item-image production-item__image">
								<img class="image" alt=""
									src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/156394555029295351.jpg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;q=0.8&amp;webp=1"
									srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/156394555029295351.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;q=0.8&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/156394555029295351.jpg?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;q=0.8&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/156394555029295351.jpg?gif=1&amp;w=1080&amp;h=1080&amp;c=c&amp;q=0.8&amp;webp=1 3x">
								<div class="production-item-image__dark-overlay"></div>
							</div>
							<div class="production-item__content">
								<h1 class="production-item__header">
									<span class="production-item__header__brand">앨빈디자인 </span><span
										class="production-item__header__name">스칸디아모스 인테리어액자
										3type</span>
								</h1>
								<span class="production-item-price"><span
									class="production-item-price__rate">44<span
										class="percentage">% </span></span><span
									class="production-item-price__price">14,500</span></span>
								<p class="production-item-stats production-item-stats--review">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24"
										preserveAspectRatio="xMidYMid meet">
										<path fill="currentColor" fill-rule="evenodd"
											d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
									<strong class="avg">4.6</strong> 리뷰 1,175
								</p>
								<span class="production-item-badge-list"><svg
										class="icon" aria-label="특가" width="30" height="20"
										viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet">
										<rect width="30" height="20" fill="#F77" rx="4"></rect>
										<path fill="#fff"
											d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg></span>
							</div>
						</article>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3" style="">
					<div class="collection__wrap">
						<article class="production-item">
							<a class="production-item__overlay"
								href="/productions/71236/selling"></a>
							<div class="production-item-image production-item__image">
								<img class="image" alt=""
									src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/156558608512369617.jpg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;q=0.8&amp;webp=1"
									srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/156558608512369617.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;q=0.8&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/156558608512369617.jpg?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;q=0.8&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/156558608512369617.jpg?gif=1&amp;w=1080&amp;h=1080&amp;c=c&amp;q=0.8&amp;webp=1 3x">
								<div class="production-item-image__dark-overlay"></div>
							</div>
							<div class="production-item__content">
								<h1 class="production-item__header">
									<span class="production-item__header__brand">아리아퍼니쳐 </span><span
										class="production-item__header__name">STB 다용도 수납벤치 수납함
										2size 2colors</span>
								</h1>
								<span class="production-item-price"><span
									class="production-item-price__rate">56<span
										class="percentage">% </span></span><span
									class="production-item-price__price">43,900</span></span>
								<p class="production-item-stats production-item-stats--review">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24"
										preserveAspectRatio="xMidYMid meet">
										<path fill="currentColor" fill-rule="evenodd"
											d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
									<strong class="avg">4.5</strong> 리뷰 1,396
								</p>
								<span class="production-item-badge-list"><svg
										class="icon" aria-label="특가" width="30" height="20"
										viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet">
										<rect width="30" height="20" fill="#F77" rx="4"></rect>
										<path fill="#fff"
											d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg></span>
							</div>
						</article>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3" style="">
					<div class="collection__wrap">
						<article class="production-item">
							<a class="production-item__overlay"
								href="/productions/598722/selling"></a>
							<div class="production-item-image production-item__image">
								<img class="image" alt=""
									src="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/160706202503325733.jpg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;q=0.8&amp;webp=1"
									srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/160706202503325733.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;q=0.8&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/160706202503325733.jpg?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;q=0.8&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/160706202503325733.jpg?gif=1&amp;w=1080&amp;h=1080&amp;c=c&amp;q=0.8&amp;webp=1 3x">
								<div class="production-item-image__dark-overlay"></div>
							</div>
							<div class="production-item__content">
								<h1 class="production-item__header">
									<span class="production-item__header__brand">jbj </span><span
										class="production-item__header__name">본사직영! 믿고사는 제이비제이
										올스텐304 식기건조대 &amp; 그릇정리대 모음전</span>
								</h1>
								<span class="production-item-price"><span
									class="production-item-price__rate">28<span
										class="percentage">% </span></span><span
									class="production-item-price__price">34,900 외</span></span>
								<p class="production-item-stats production-item-stats--review">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24"
										preserveAspectRatio="xMidYMid meet">
										<path fill="currentColor" fill-rule="evenodd"
											d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
									<strong class="avg">4.8</strong> 리뷰 73
								</p>
								<span class="production-item-badge-list"><svg
										class="icon" aria-label="무료배송" width="47" height="20"
										viewBox="0 0 47 20" preserveAspectRatio="xMidYMid meet">
										<g fill="none" fill-rule="evenodd">
										<rect width="47" height="20" fill="#000" fill-opacity=".07"
											fill-rule="nonzero" rx="4"></rect>
										<path fill="#757575"
											d="M12.73 5.38v3.96h-6.6V5.38h6.6zm-2.68 9.43H8.76v-3.25H5v-1.03h8.86v1.03h-3.81v3.25zm1.4-6.49V6.41H7.43v1.91h4.04zm11.08 2.7h-1.42v1.54h2.26v1.02h-8.86v-1.02h2.24v-1.53h-1.1V7.78h5.32V6.65H15.6V5.63h6.66V8.8h-5.33v1.18h5.61v1.04zm-4.53 0v1.54h1.87v-1.53H18zm14.37 3.78h-1.23V9.86h-.8v4.49h-1.2V5.18h1.2v3.66h.8V5h1.23v9.8zm-4.2-2.54h-3.9V6.01h1.27v2.26h1.36V6h1.28v6.26zm-1.27-1.01v-2h-1.36v2h1.36zm14.49 1.71c0 1.13-1.25 1.82-3.41 1.82s-3.42-.7-3.42-1.82 1.25-1.82 3.4-1.82c2.18 0 3.43.7 3.43 1.82zm-3.41-6.05c-.5 1.13-2.1 1.9-3.51 2.1l-.54-1c1.64-.17 3.39-1.06 3.39-2.54V5.2h1.33v.28c0 1.48 1.99 2.47 3.4 2.53l-.55 1.01c-1.31-.18-3.03-.97-3.52-2.1zm4.42 3.78h-8.86V9.66h3.79V8.4h1.29v1.26h3.78v1.03zm-2.33 2.27c0-.5-.83-.8-2.1-.8s-2.08.3-2.08.8c0 .51.81.8 2.08.8s2.1-.29 2.1-.8z"></path></g></svg></span>
							</div>
						</article>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3" style="">
					<div class="collection__wrap">
						<article class="production-item">
							<a class="production-item__overlay"
								href="/productions/537871/selling"></a>
							<div class="production-item-image production-item__image">
								<img class="image" alt=""
									src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1603846029_102963_1.jpg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;q=0.8&amp;webp=1"
									srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1603846029_102963_1.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;q=0.8&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1603846029_102963_1.jpg?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;q=0.8&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1603846029_102963_1.jpg?gif=1&amp;w=1080&amp;h=1080&amp;c=c&amp;q=0.8&amp;webp=1 3x">
								<div class="production-item-image__dark-overlay"></div>
							</div>
							<div class="production-item__content">
								<h1 class="production-item__header">
									<span class="production-item__header__brand">아이르 </span><span
										class="production-item__header__name">테마 14COLOR 쿠션 겸
										방석커버(50x50)</span>
								</h1>
								<span class="production-item-price"><span
									class="production-item-price__rate">49<span
										class="percentage">% </span></span><span
									class="production-item-price__price">6,900</span></span>
								<p class="production-item-stats production-item-stats--review">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24"
										preserveAspectRatio="xMidYMid meet">
										<path fill="currentColor" fill-rule="evenodd"
											d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
									<strong class="avg">4.6</strong> 리뷰 1,959
								</p>
								<span class="production-item-badge-list"></span>
							</div>
						</article>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3" style="">
					<div class="collection__wrap">
						<article class="production-item">
							<a class="production-item__overlay"
								href="/productions/424597/selling"></a>
							<div class="production-item-image production-item__image">
								<img class="image" alt=""
									src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159583798207886091.jpg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;q=0.8&amp;webp=1"
									srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159583798207886091.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;q=0.8&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159583798207886091.jpg?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;q=0.8&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159583798207886091.jpg?gif=1&amp;w=1080&amp;h=1080&amp;c=c&amp;q=0.8&amp;webp=1 3x">
								<div class="production-item-image__dark-overlay"></div>
							</div>
							<div class="production-item__content">
								<h1 class="production-item__header">
									<span class="production-item__header__brand">쿠션이야기 </span><span
										class="production-item__header__name">블랑쉬 무지 쿠션커버
										28Color</span>
								</h1>
								<span class="production-item-price"><span
									class="production-item-price__rate">15<span
										class="percentage">% </span></span><span
									class="production-item-price__price">14,900</span></span>
								<p class="production-item-stats production-item-stats--review">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24"
										preserveAspectRatio="xMidYMid meet">
										<path fill="currentColor" fill-rule="evenodd"
											d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
									<strong class="avg">4.7</strong> 리뷰 81
								</p>
								<span class="production-item-badge-list"></span>
							</div>
						</article>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3" style="">
					<div class="collection__wrap">
						<article class="production-item">
							<a class="production-item__overlay"
								href="/productions/400359/selling"></a>
							<div class="production-item-image production-item__image">
								<img class="image" alt=""
									src="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/159410955831810252.jpg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;q=0.8&amp;webp=1"
									srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/159410955831810252.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;q=0.8&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/159410955831810252.jpg?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;q=0.8&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/159410955831810252.jpg?gif=1&amp;w=1080&amp;h=1080&amp;c=c&amp;q=0.8&amp;webp=1 3x">
								<div class="production-item-image__dark-overlay"></div>
							</div>
							<div class="production-item__content">
								<h1 class="production-item__header">
									<span class="production-item__header__brand">데이스 </span><span
										class="production-item__header__name">감성 린넨
										등받이/대형쿠션/원형방석/소파쿠션 15종</span>
								</h1>
								<span class="production-item-price"><span
									class="production-item-price__rate">40<span
										class="percentage">% </span></span><span
									class="production-item-price__price">5,500 외</span></span>
								<p class="production-item-stats production-item-stats--review">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24"
										preserveAspectRatio="xMidYMid meet">
										<path fill="currentColor" fill-rule="evenodd"
											d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
									<strong class="avg">4.6</strong> 리뷰 1,615
								</p>
								<span class="production-item-badge-list"><svg
										class="icon" aria-label="특가" width="30" height="20"
										viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet">
										<rect width="30" height="20" fill="#F77" rx="4"></rect>
										<path fill="#fff"
											d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg></span>
							</div>
						</article>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3" style="">
					<div class="collection__wrap">
						<article class="production-item">
							<a class="production-item__overlay"
								href="/productions/447038/selling"></a>
							<div class="production-item-image production-item__image">
								<img class="image" alt=""
									src="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/159721089874267945.jpg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;q=0.8&amp;webp=1"
									srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/159721089874267945.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;q=0.8&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/159721089874267945.jpg?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;q=0.8&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/159721089874267945.jpg?gif=1&amp;w=1080&amp;h=1080&amp;c=c&amp;q=0.8&amp;webp=1 3x">
								<div class="production-item-image__dark-overlay"></div>
							</div>
							<div class="production-item__content">
								<h1 class="production-item__header">
									<span class="production-item__header__brand">포홈 </span><span
										class="production-item__header__name">모던 감성 린넨
										롱쿠션/바디필로우 모음전</span>
								</h1>
								<span class="production-item-price"><span
									class="production-item-price__rate">48<span
										class="percentage">% </span></span><span
									class="production-item-price__price">11,000 외</span></span>
								<p class="production-item-stats production-item-stats--review">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24"
										preserveAspectRatio="xMidYMid meet">
										<path fill="currentColor" fill-rule="evenodd"
											d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
									<strong class="avg">4.6</strong> 리뷰 1,997
								</p>
								<span class="production-item-badge-list"><svg
										class="icon" aria-label="특가" width="30" height="20"
										viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet">
										<rect width="30" height="20" fill="#F77" rx="4"></rect>
										<path fill="#fff"
											d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg></span>
							</div>
						</article>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3" style="">
					<div class="collection__wrap">
						<article class="production-item">
							<a class="production-item__overlay"
								href="/productions/395500/selling"></a>
							<div class="production-item-image production-item__image">
								<img class="image" alt=""
									src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159374101422369733.jpg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;q=0.8&amp;webp=1"
									srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159374101422369733.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;q=0.8&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159374101422369733.jpg?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;q=0.8&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159374101422369733.jpg?gif=1&amp;w=1080&amp;h=1080&amp;c=c&amp;q=0.8&amp;webp=1 3x">
								<div class="production-item-image__dark-overlay"></div>
							</div>
							<div class="production-item__content">
								<h1 class="production-item__header">
									<span class="production-item__header__brand">스피드랙 </span><span
										class="production-item__header__name">경량랙 무볼트 조립식 철제
										앵글선반 4단</span>
								</h1>
								<span class="production-item-price"><span
									class="production-item-price__rate">21<span
										class="percentage">% </span></span><span
									class="production-item-price__price">37,900</span></span>
								<p class="production-item-stats production-item-stats--review">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24"
										preserveAspectRatio="xMidYMid meet">
										<path fill="currentColor" fill-rule="evenodd"
											d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
									<strong class="avg">4.5</strong> 리뷰 947
								</p>
								<span class="production-item-badge-list"><svg
										class="icon" aria-label="무료배송" width="47" height="20"
										viewBox="0 0 47 20" preserveAspectRatio="xMidYMid meet">
										<g fill="none" fill-rule="evenodd">
										<rect width="47" height="20" fill="#000" fill-opacity=".07"
											fill-rule="nonzero" rx="4"></rect>
										<path fill="#757575"
											d="M12.73 5.38v3.96h-6.6V5.38h6.6zm-2.68 9.43H8.76v-3.25H5v-1.03h8.86v1.03h-3.81v3.25zm1.4-6.49V6.41H7.43v1.91h4.04zm11.08 2.7h-1.42v1.54h2.26v1.02h-8.86v-1.02h2.24v-1.53h-1.1V7.78h5.32V6.65H15.6V5.63h6.66V8.8h-5.33v1.18h5.61v1.04zm-4.53 0v1.54h1.87v-1.53H18zm14.37 3.78h-1.23V9.86h-.8v4.49h-1.2V5.18h1.2v3.66h.8V5h1.23v9.8zm-4.2-2.54h-3.9V6.01h1.27v2.26h1.36V6h1.28v6.26zm-1.27-1.01v-2h-1.36v2h1.36zm14.49 1.71c0 1.13-1.25 1.82-3.41 1.82s-3.42-.7-3.42-1.82 1.25-1.82 3.4-1.82c2.18 0 3.43.7 3.43 1.82zm-3.41-6.05c-.5 1.13-2.1 1.9-3.51 2.1l-.54-1c1.64-.17 3.39-1.06 3.39-2.54V5.2h1.33v.28c0 1.48 1.99 2.47 3.4 2.53l-.55 1.01c-1.31-.18-3.03-.97-3.52-2.1zm4.42 3.78h-8.86V9.66h3.79V8.4h1.29v1.26h3.78v1.03zm-2.33 2.27c0-.5-.83-.8-2.1-.8s-2.08.3-2.08.8c0 .51.81.8 2.08.8s2.1-.29 2.1-.8z"></path></g></svg>
									<svg class="icon" aria-label="특가" width="30" height="20"
										viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet">
										<rect width="30" height="20" fill="#F77" rx="4"></rect>
										<path fill="#fff"
											d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg></span>
							</div>
						</article>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3" style="">
					<div class="collection__wrap">
						<article class="production-item">
							<a class="production-item__overlay"
								href="/productions/371630/selling"></a>
							<div class="production-item-image production-item__image">
								<img class="image" alt=""
									src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1592295093_114813_1.jpg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;q=0.8&amp;webp=1"
									srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1592295093_114813_1.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;q=0.8&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1592295093_114813_1.jpg?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;q=0.8&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1592295093_114813_1.jpg?gif=1&amp;w=1080&amp;h=1080&amp;c=c&amp;q=0.8&amp;webp=1 3x">
								<div class="production-item-image__dark-overlay"></div>
							</div>
							<div class="production-item__content">
								<h1 class="production-item__header">
									<span class="production-item__header__brand">나무뜰 </span><span
										class="production-item__header__name">올리브 대리석 1200 렌지대형
										홈바 아일랜드 식탁 MWF078C</span>
								</h1>
								<span class="production-item-price"><span
									class="production-item-price__rate">72<span
										class="percentage">% </span></span><span
									class="production-item-price__price">209,000</span></span>
								<p class="production-item-stats production-item-stats--review">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24"
										preserveAspectRatio="xMidYMid meet">
										<path fill="currentColor" fill-rule="evenodd"
											d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
									<strong class="avg">4.2</strong> 리뷰 34
								</p>
								<span class="production-item-badge-list"><svg
										class="icon" aria-label="특가" width="30" height="20"
										viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet">
										<rect width="30" height="20" fill="#F77" rx="4"></rect>
										<path fill="#fff"
											d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg></span>
							</div>
						</article>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3" style="">
					<div class="collection__wrap">
						<article class="production-item">
							<a class="production-item__overlay"
								href="/productions/390566/selling"></a>
							<div class="production-item-image production-item__image">
								<img class="image" alt=""
									src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1593500765_102864_20.jpg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;q=0.8&amp;webp=1"
									srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1593500765_102864_20.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;q=0.8&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1593500765_102864_20.jpg?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;q=0.8&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1593500765_102864_20.jpg?gif=1&amp;w=1080&amp;h=1080&amp;c=c&amp;q=0.8&amp;webp=1 3x">
								<div class="production-item-image__dark-overlay"></div>
							</div>
							<div class="production-item__content">
								<h1 class="production-item__header">
									<span class="production-item__header__brand">필웰 </span><span
										class="production-item__header__name">RZ9492 데이아
										이동조리대400 DVX</span>
								</h1>
								<span class="production-item-price"><span
									class="production-item-price__rate">38<span
										class="percentage">% </span></span><span
									class="production-item-price__price">44,000</span></span>
								<p class="production-item-stats production-item-stats--review">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24"
										preserveAspectRatio="xMidYMid meet">
										<path fill="currentColor" fill-rule="evenodd"
											d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
									<strong class="avg">4.4</strong> 리뷰 164
								</p>
								<span class="production-item-badge-list"></span>
							</div>
						</article>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3" style="">
					<div class="collection__wrap">
						<article class="production-item">
							<a class="production-item__overlay"
								href="/productions/390565/selling"></a>
							<div class="production-item-image production-item__image">
								<img class="image" alt=""
									src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1593500758_103277_20.jpg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;q=0.8&amp;webp=1"
									srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1593500758_103277_20.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;q=0.8&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1593500758_103277_20.jpg?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;q=0.8&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1593500758_103277_20.jpg?gif=1&amp;w=1080&amp;h=1080&amp;c=c&amp;q=0.8&amp;webp=1 3x">
								<div class="production-item-image__dark-overlay"></div>
							</div>
							<div class="production-item__content">
								<h1 class="production-item__header">
									<span class="production-item__header__brand">필웰 </span><span
										class="production-item__header__name">RZ9757 데이아 서랍형
										이동조리대 DVX</span>
								</h1>
								<span class="production-item-price"><span
									class="production-item-price__rate">38<span
										class="percentage">% </span></span><span
									class="production-item-price__price">55,000</span></span>
								<p class="production-item-stats production-item-stats--review">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24"
										preserveAspectRatio="xMidYMid meet">
										<path fill="currentColor" fill-rule="evenodd"
											d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
									<strong class="avg">4.4</strong> 리뷰 133
								</p>
								<span class="production-item-badge-list"></span>
							</div>
						</article>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3" style="">
					<div class="collection__wrap">
						<article class="production-item">
							<a class="production-item__overlay"
								href="/productions/45083/selling"></a>
							<div class="production-item-image production-item__image">
								<img class="image" alt=""
									src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1522312366_105506_1.jpg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;q=0.8&amp;webp=1"
									srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1522312366_105506_1.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;q=0.8&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1522312366_105506_1.jpg?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;q=0.8&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1522312366_105506_1.jpg?gif=1&amp;w=1080&amp;h=1080&amp;c=c&amp;q=0.8&amp;webp=1 3x"><span
									class="production-item-banner production-item-image__banner">품절</span>
								<div class="production-item-image__dark-overlay"></div>
							</div>
							<div class="production-item__content">
								<h1 class="production-item__header">
									<span class="production-item__header__brand">꾸미까 </span><span
										class="production-item__header__name">가든 장식 조화화분 3Pset</span>
								</h1>
								<span
									class="production-item-price production-item-price--disabled"><span
									class="production-item-price__rate">4<span
										class="percentage">% </span></span><span
									class="production-item-price__price">17,160</span></span>
								<p class="production-item-stats production-item-stats--review">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24"
										preserveAspectRatio="xMidYMid meet">
										<path fill="currentColor" fill-rule="evenodd"
											d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
									<strong class="avg">4.3</strong> 리뷰 14
								</p>
								<span
									class="production-item-badge-list production-item-badge-list--disabled"></span>
							</div>
						</article>
					</div>
				</div>
			</div>
		</main>
	</div>

	<%-- <jsp:include page="../footer.jsp" /> --%>

</body>
</html>