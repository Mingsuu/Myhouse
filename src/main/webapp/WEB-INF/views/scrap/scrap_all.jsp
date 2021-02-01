<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크랩</title>
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
<jsp:include page="../header_login.jsp" />

	<div class="container collection-feed">
		<main>
			<header class="row collection-book-header">
				<div>
					<h1 class="collection-book-title__book-name">스크랩북</h1>
					<p class="collection-book-owner">
						<a class="collection-book-owner__link" href="/users/7109166"><img
							class="profile-image"
							src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=36&amp;h=36&amp;c=c&amp;webp=1"
							srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 3x"><span
							class="collection-book-owner__name">기림6</span></a>
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
							<li class="page-navigation__item"><a class="active"
								href="http://localhost:9000/myhouse/scrap_all.do" target="_self">모두 (14)</a></li>
							<li class="page-navigation__item"><a class=""
								href="http://localhost:9000/myhouse/scrap_product.do"
								target="_self">상품 (12)</a></li>
							<li class="page-navigation__item"><a class=""
								href="http://localhost:9000/myhouse/scrap_houses.do" target="_self">집들이
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
							<div class="collection-feed-filter__empty"></div>
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
				style="padding-top: 0px; padding-bottom: 0px; transform: translateY(0px);">
				<div class="col-6 col-md-4 col-lg-3">
					<div class="collection__wrap">
						<a
							href="/productions/154487/selling?affect_type=UserScrapbook&amp;affect_id=7109166"><div
								class="collection collection--total">
								<div class="collection__image-wrap">
									<img class="collection__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/156394555029295351.jpg?gif=1&amp;w=320&amp;h=320&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/156394555029295351.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/156394555029295351.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/156394555029295351.jpg?gif=1&amp;w=960&amp;h=960&amp;c=c&amp;webp=1 3x">
								</div>
								<span class="collection__type">상품</span>
							</div></a>
					</div>
				</div>
				<!-- <div class="col-6 col-md-4 col-lg-3">
					<div class="collection__wrap">
						<a
							href="/productions/71236/selling?affect_type=UserScrapbook&amp;affect_id=7109166"><div
								class="collection collection--total">
								<div class="collection__image-wrap">
									<img class="collection__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/156558608512369617.jpg?gif=1&amp;w=320&amp;h=320&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/156558608512369617.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/156558608512369617.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/156558608512369617.jpg?gif=1&amp;w=960&amp;h=960&amp;c=c&amp;webp=1 3x">
								</div>
								<span class="collection__type">상품</span>
							</div></a>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3">
					<div class="collection__wrap">
						<a
							href="/productions/598722/selling?affect_type=UserScrapbook&amp;affect_id=7109166"><div
								class="collection collection--total">
								<div class="collection__image-wrap">
									<img class="collection__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/160706202503325733.jpg?gif=1&amp;w=320&amp;h=320&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/160706202503325733.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/160706202503325733.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/160706202503325733.jpg?gif=1&amp;w=960&amp;h=960&amp;c=c&amp;webp=1 3x">
								</div>
								<span class="collection__type">상품</span>
							</div></a>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3">
					<div class="collection__wrap">
						<a
							href="/productions/537871/selling?affect_type=UserScrapbook&amp;affect_id=7109166"><div
								class="collection collection--total">
								<div class="collection__image-wrap">
									<img class="collection__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1603846029_102963_1.jpg?gif=1&amp;w=320&amp;h=320&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1603846029_102963_1.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1603846029_102963_1.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1603846029_102963_1.jpg?gif=1&amp;w=960&amp;h=960&amp;c=c&amp;webp=1 3x">
								</div>
								<span class="collection__type">상품</span>
							</div></a>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3">
					<div class="collection__wrap">
						<a
							href="/productions/424597/selling?affect_type=UserScrapbook&amp;affect_id=7109166"><div
								class="collection collection--total">
								<div class="collection__image-wrap">
									<img class="collection__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159583798207886091.jpg?gif=1&amp;w=320&amp;h=320&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159583798207886091.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159583798207886091.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159583798207886091.jpg?gif=1&amp;w=960&amp;h=960&amp;c=c&amp;webp=1 3x">
								</div>
								<span class="collection__type">상품</span>
							</div></a>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3">
					<div class="collection__wrap">
						<a
							href="/productions/400359/selling?affect_type=UserScrapbook&amp;affect_id=7109166"><div
								class="collection collection--total">
								<div class="collection__image-wrap">
									<img class="collection__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/159410955831810252.jpg?gif=1&amp;w=320&amp;h=320&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/159410955831810252.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/159410955831810252.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/159410955831810252.jpg?gif=1&amp;w=960&amp;h=960&amp;c=c&amp;webp=1 3x">
								</div>
								<span class="collection__type">상품</span>
							</div></a>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3">
					<div class="collection__wrap">
						<a
							href="/productions/447038/selling?affect_type=UserScrapbook&amp;affect_id=7109166"><div
								class="collection collection--total">
								<div class="collection__image-wrap">
									<img class="collection__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/159721089874267945.jpg?gif=1&amp;w=320&amp;h=320&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/159721089874267945.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/159721089874267945.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/159721089874267945.jpg?gif=1&amp;w=960&amp;h=960&amp;c=c&amp;webp=1 3x">
								</div>
								<span class="collection__type">상품</span>
							</div></a>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3">
					<div class="collection__wrap">
						<a
							href="/productions/395500/selling?affect_type=UserScrapbook&amp;affect_id=7109166"><div
								class="collection collection--total">
								<div class="collection__image-wrap">
									<img class="collection__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159374101422369733.jpg?gif=1&amp;w=320&amp;h=320&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159374101422369733.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159374101422369733.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159374101422369733.jpg?gif=1&amp;w=960&amp;h=960&amp;c=c&amp;webp=1 3x">
								</div>
								<span class="collection__type">상품</span>
							</div></a>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3">
					<div class="collection__wrap">
						<a
							href="/productions/371630/selling?affect_type=UserScrapbook&amp;affect_id=7109166"><div
								class="collection collection--total">
								<div class="collection__image-wrap">
									<img class="collection__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1592295093_114813_1.jpg?gif=1&amp;w=320&amp;h=320&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1592295093_114813_1.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1592295093_114813_1.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1592295093_114813_1.jpg?gif=1&amp;w=960&amp;h=960&amp;c=c&amp;webp=1 3x">
								</div>
								<span class="collection__type">상품</span>
							</div></a>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3">
					<div class="collection__wrap">
						<a
							href="/productions/390566/selling?affect_type=UserScrapbook&amp;affect_id=7109166"><div
								class="collection collection--total">
								<div class="collection__image-wrap">
									<img class="collection__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1593500765_102864_20.jpg?gif=1&amp;w=320&amp;h=320&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1593500765_102864_20.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1593500765_102864_20.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1593500765_102864_20.jpg?gif=1&amp;w=960&amp;h=960&amp;c=c&amp;webp=1 3x">
								</div>
								<span class="collection__type">상품</span>
							</div></a>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3">
					<div class="collection__wrap">
						<a
							href="/productions/390565/selling?affect_type=UserScrapbook&amp;affect_id=7109166"><div
								class="collection collection--total">
								<div class="collection__image-wrap">
									<img class="collection__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1593500758_103277_20.jpg?gif=1&amp;w=320&amp;h=320&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1593500758_103277_20.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1593500758_103277_20.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1593500758_103277_20.jpg?gif=1&amp;w=960&amp;h=960&amp;c=c&amp;webp=1 3x">
								</div>
								<span class="collection__type">상품</span>
							</div></a>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3">
					<div class="collection__wrap">
						<a
							href="/projects/34342/detail?affect_type=UserScrapbook&amp;affect_id=7109166"><div
								class="collection collection--total">
								<div class="collection__image-wrap">
									<img class="collection__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/159366961454694010.jpg?gif=1&amp;w=320&amp;h=320&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/159366961454694010.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/159366961454694010.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/159366961454694010.jpg?gif=1&amp;w=960&amp;h=960&amp;c=c&amp;webp=1 3x">
								</div>
								<span class="collection__type">집들이</span>
							</div></a>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3">
					<div class="collection__wrap">
						<a
							href="/productions/45083/selling?affect_type=UserScrapbook&amp;affect_id=7109166"><div
								class="collection collection--total">
								<div class="collection__image-wrap">
									<img class="collection__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1522312366_105506_1.jpg?gif=1&amp;w=320&amp;h=320&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1522312366_105506_1.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1522312366_105506_1.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1522312366_105506_1.jpg?gif=1&amp;w=960&amp;h=960&amp;c=c&amp;webp=1 3x">
								</div>
								<span class="collection__type">상품</span>
							</div></a>
					</div>
				</div>
				<div class="col-6 col-md-4 col-lg-3">
					<div class="collection__wrap">
						<a
							href="/projects/14112/detail?affect_type=UserScrapbook&amp;affect_id=7109166"><div
								class="collection collection--total">
								<div class="collection__image-wrap">
									<img class="collection__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/156525572389082261.jpg?gif=1&amp;w=320&amp;h=320&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/156525572389082261.jpg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/156525572389082261.jpg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/projects/cover_images/156525572389082261.jpg?gif=1&amp;w=960&amp;h=960&amp;c=c&amp;webp=1 3x">
								</div>
								<span class="collection__type">집들이</span>
							</div></a>
					</div>
				</div> -->
			</div>
		</main>
	</div>
<%-- 	<jsp:include page="../footer.jsp" /> --%>
</body>
</html>