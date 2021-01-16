<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/yj.css">
<link rel="stylesheet"
	href="http://localhost:9000/myhouse/css/carousel.css">
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- header -->
	<jsp:include page="header_login.jsp" />
	<!-- index content -->
	<div class="home-page">
		<div class="container home-header">
			<div class="row">
				<div class="col-12 col-md-9 home-header__story">
					<article class="story-entry home-header__story__image">
						<a class="story-entry-link"
							href="/projects/40505?affect_type=Home&amp;affect_id=0"><div
								class="story-entry__image-wrap">
								<img class="story-entry__image" alt=""
									src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/160700845371291324.jpg?gif=1&amp;w=850&amp;h=567&amp;c=c&amp;webp=1"
									srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/160700845371291324.jpg?gif=1&amp;w=1280&amp;h=854&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/160700845371291324.jpg?gif=1&amp;w=1536&amp;h=1024&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/projects/160700845371291324.jpg?gif=1&amp;w=2560&amp;h=1707&amp;c=c&amp;webp=1 3x">
							</div>
							<div class="story-entry__content-wrap">
								<div class="story-entry__content">
									<div class="story-entry__content__title">
										꼬마사람이 살고 있어요. 따뜻한 도화지 같은 집<br>
									</div>
									<div class="story-entry__content__profile">
										<img class="story-entry__content__profile__image"
											src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/159892723957225278.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c&amp;webp=1"
											srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/159892723957225278.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/159892723957225278.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/159892723957225278.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 3x"><span
											class="story-entry__content__profile__name">jian_jeju</span>
									</div>
								</div>
								<div class="home-header__story__more">보러가기</div>
							</div></a>
					</article>
				</div>
				<div class="col-12 col-md-3 home-header__banner-col">
				<div class="home-header__banner-wrap">
						<div class="carousel home-header__banner-container" role="region"
							aria-roledescription="carousel">
							<div class="carousel__list-wrap home-header__banner">
				<section>
									<!-- 캐러셀 start-->
									<div id="demo" class="carousel slide" data-ride="carousel">
										<!-- Indicators -->
										<ul class="carousel-indicators">
											<li data-target="#demo" data-slide-to="0" class="active"></li>
											<li data-target="#demo" data-slide-to="1"></li>
											<!-- <li data-target="#demo" data-slide-to="2"></li> -->
										</ul>
				
										<!-- The slideshow -->
										<div class="carousel-inner">
											<div class="carousel-item active">
												<img class="carousel-img"
													src="https://image.ohou.se/i/bucketplace-v2-development/uploads/contests/pc_banner/160934220770214930.png?gif=1&amp;w=512&amp;webp=1"
													srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/contests/pc_banner/160934220770214930.png?gif=1&amp;w=850&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/contests/pc_banner/160934220770214930.png?gif=1&amp;w=1024&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/contests/pc_banner/160934220770214930.png?gif=1&amp;w=1536&amp;webp=1 3x"
													>
											</div>
											<div class="carousel-item">
												<img class="carousel-img"
													src="https://image.ohou.se/i/bucketplace-v2-development/uploads/contests/pc_banner/160976394606228781.png?gif=1&amp;w=512&amp;webp=1"
													srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/contests/pc_banner/160976394606228781.png?gif=1&amp;w=850&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/contests/pc_banner/160976394606228781.png?gif=1&amp;w=1024&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/contests/pc_banner/160976394606228781.png?gif=1&amp;w=1536&amp;webp=1 3x"
													>
											</div>
											<!-- <div class="carousel-item">
												<img src="ny.jpg" alt="New York">
											</div> -->
										</div>
				
										<!-- Left and right controls -->
										<a class="carousel-control-prev" href="#demo" data-slide="prev">
											<span class="carousel-control-prev-icon"></span>
										</a> <a class="carousel-control-next" href="#demo" data-slide="next">
											<span class="carousel-control-next-icon"></span>
										</a>
				
									</div>
									<!-- 캐러셀  end-->	
				</section>
				</div>
				</div>
				</div>
				</div>
				<!-- <div class="col-12 col-md-3 home-header__banner-col">
					<div class="home-header__banner-wrap">
						<div class="carousel home-header__banner-container" role="region"
							aria-roledescription="carousel">
							<div class="carousel__list-wrap home-header__banner">
								<div class="carousel__list home-header__banner__list"
									aria-live="off" style="transform: translateX(0%);">
									<div class="carousel__list__entry home-header__banner__item"
										role="group" aria-roledescription="slide"
										aria-label="10 of 12" style="width: 100%;">
										<div class="home-header__banner__item__container">
											<a class="home-header__banner__item__link"
												href="/competitions/360?affect_type=Home&amp;affect_id=0"
												target=""><img class="pc-banner" alt=""
												src="https://image.ohou.se/i/bucketplace-v2-development/uploads/banners/home_banner/160934000343627811.png?gif=1&amp;w=512&amp;webp=1"
												srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/banners/home_banner/160934000343627811.png?gif=1&amp;w=850&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/banners/home_banner/160934000343627811.png?gif=1&amp;w=1024&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/banners/home_banner/160934000343627811.png?gif=1&amp;w=1536&amp;webp=1 3x">
												<div class="mobile-banner"></div></a>
										</div>
									</div>
								</div>
							</div>
							<div class="home-header__banner-control">
								<div class="home-header__banner-control__icon">
									<svg
										class="home-header__banner-control__icon__arrow home-header__banner-control__icon__arrow--left"
										width="10" height="18" viewBox="0 0 10 18"
										preserveAspectRatio="xMidYMid meet">
										<path fill="#FFF" fill-rule="evenodd"
											d="M9.89 9l.137-.137L1.343.18l-1.37 1.37L7.424 9l-7.451 7.451 1.37 1.37 8.684-8.684L9.89 9z"></path></svg>
								</div>
								<ul class="home-header__banner-control__page">
									<li class="home-header__banner-control__page__item"><button
											type="button"
											class="home-header__banner-control__page__item__button"></button></li>
									<li class="home-header__banner-control__page__item"><button
											type="button"
											class="home-header__banner-control__page__item__button"></button></li>
									<li class="home-header__banner-control__page__item"><button
											type="button"
											class="home-header__banner-control__page__item__button"></button></li>
									<li class="home-header__banner-control__page__item"><button
											type="button"
											class="home-header__banner-control__page__item__button"></button></li>
									<li class="home-header__banner-control__page__item"><button
											type="button"
											class="home-header__banner-control__page__item__button"></button></li>
									<li class="home-header__banner-control__page__item"><button
											type="button"
											class="home-header__banner-control__page__item__button"></button></li>
									<li class="home-header__banner-control__page__item"><button
											type="button"
											class="home-header__banner-control__page__item__button"></button></li>
									<li class="home-header__banner-control__page__item"><button
											type="button"
											class="home-header__banner-control__page__item__button"></button></li>
									<li class="home-header__banner-control__page__item"><button
											type="button"
											class="home-header__banner-control__page__item__button"></button></li>
									<li
										class="home-header__banner-control__page__item home-header__banner-control__page__item--select"><button
											type="button"
											class="home-header__banner-control__page__item__button"></button></li>
									<li class="home-header__banner-control__page__item"><button
											type="button"
											class="home-header__banner-control__page__item__button"></button></li>
									<li class="home-header__banner-control__page__item"><button
											type="button"
											class="home-header__banner-control__page__item__button"></button></li>
								</ul>
								<div class="home-header__banner-control__icon">
									<svg
										class="home-header__banner-control__icon__arrow home-header__banner-control__icon__arrow--right"
										width="10" height="18" viewBox="0 0 10 18"
										preserveAspectRatio="xMidYMid meet">
										<path fill="#FFF" fill-rule="evenodd"
											d="M9.89 9l.137-.137L1.343.18l-1.37 1.37L7.424 9l-7.451 7.451 1.37 1.37 8.684-8.684L9.89 9z"></path></svg>
								</div>
							</div>
						</div>
					</div>
				</div> -->
			</div>
		</div>

		<section class="container home-section">
			<header class="row home-section__header">
				<h2 class="col home-section__header__content">카테고리별 상품 찾기</h2>
			</header>
			<section class="home-store-index-category-list">
				<div class="home-category-list-wrap-container">
					<div class="home-category-list"
						style="transition-duration: 0ms; transform: translateX(0%);">
						<div class="home-category-item-wrap">
							<a
								href="/store/category?category=0&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=1"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272884258135028.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272884258135028.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272884258135028.jpg?gif=1&amp;w=180&amp;h=180&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272884258135028.jpg?gif=1&amp;w=256&amp;h=256&amp;c=c&amp;webp=1 3x">
								</div>
							</div>
							<div class="home-category-item__title">가구</div>
						</div>
						<div class="home-category-item-wrap">
							<a
								href="/store/category?category=1&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=2"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272884480996487.png?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272884480996487.png?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272884480996487.png?gif=1&amp;w=180&amp;h=180&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272884480996487.png?gif=1&amp;w=256&amp;h=256&amp;c=c&amp;webp=1 3x">
								</div>
							</div>
							<div class="home-category-item__title">패브릭</div>
						</div>
						<div class="home-category-item-wrap">
							<a
								href="/store/category?category=2&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=3"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272885190378401.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272885190378401.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272885190378401.jpg?gif=1&amp;w=180&amp;h=180&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272885190378401.jpg?gif=1&amp;w=256&amp;h=256&amp;c=c&amp;webp=1 3x">
								</div>
							</div>
							<div class="home-category-item__title">홈데코</div>
						</div>
						<div class="home-category-item-wrap">
							<a
								href="/store/category?category=11&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=4"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272885482022936.png?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272885482022936.png?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272885482022936.png?gif=1&amp;w=180&amp;h=180&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272885482022936.png?gif=1&amp;w=256&amp;h=256&amp;c=c&amp;webp=1 3x">
								</div>
							</div>
							<div class="home-category-item__title">수납/정리</div>
						</div>
						<div class="home-category-item-wrap">
							<a
								href="/store/category?category=4&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=5"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272885762998368.png?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272885762998368.png?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272885762998368.png?gif=1&amp;w=180&amp;h=180&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272885762998368.png?gif=1&amp;w=256&amp;h=256&amp;c=c&amp;webp=1 3x">
								</div>
							</div>
							<div class="home-category-item__title">생활용품</div>
						</div>
						<div class="home-category-item-wrap">
							<a
								href="/store/category?category=3&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=6"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272886032574270.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272886032574270.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272886032574270.jpg?gif=1&amp;w=180&amp;h=180&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272886032574270.jpg?gif=1&amp;w=256&amp;h=256&amp;c=c&amp;webp=1 3x">
								</div>
							</div>
							<div class="home-category-item__title">가전</div>
						</div>
						<div class="home-category-item-wrap">
							<a
								href="/store/category?category=5&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=7"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272886436308080.png?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272886436308080.png?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272886436308080.png?gif=1&amp;w=180&amp;h=180&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272886436308080.png?gif=1&amp;w=256&amp;h=256&amp;c=c&amp;webp=1 3x">
								</div>
							</div>
							<div class="home-category-item__title">주방</div>
						</div>
						<div class="home-category-item-wrap">
							<a
								href="/store/category?category=8&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=8"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272886730812784.png?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272886730812784.png?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272886730812784.png?gif=1&amp;w=180&amp;h=180&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272886730812784.png?gif=1&amp;w=256&amp;h=256&amp;c=c&amp;webp=1 3x">
								</div>
							</div>
							<div class="home-category-item__title">반려동물</div>
						</div>
						<div class="home-category-item-wrap">
							<a
								href="/store/category?category=5_0&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=9"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272889274471352.png?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272889274471352.png?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272889274471352.png?gif=1&amp;w=180&amp;h=180&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272889274471352.png?gif=1&amp;w=256&amp;h=256&amp;c=c&amp;webp=1 3x">
								</div>
							</div>
							<div class="home-category-item__title">그릇/홈세트</div>
						</div>
						<div class="home-category-item-wrap">
							<a
								href="/store/category?category=2_0&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=10"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272889477756560.png?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272889477756560.png?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272889477756560.png?gif=1&amp;w=180&amp;h=180&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272889477756560.png?gif=1&amp;w=256&amp;h=256&amp;c=c&amp;webp=1 3x">
								</div>
							</div>
							<div class="home-category-item__title">조명</div>
						</div>
						<div class="home-category-item-wrap">
							<a
								href="/store/category?category=1_2&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=11"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272889708684295.png?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272889708684295.png?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272889708684295.png?gif=1&amp;w=180&amp;h=180&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272889708684295.png?gif=1&amp;w=256&amp;h=256&amp;c=c&amp;webp=1 3x">
								</div>
							</div>
							<div class="home-category-item__title">러그/카페트</div>
						</div>
						<div class="home-category-item-wrap">
							<a
								href="/store/category?category=1_1&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=12"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272889877579572.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272889877579572.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272889877579572.jpg?gif=1&amp;w=180&amp;h=180&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272889877579572.jpg?gif=1&amp;w=256&amp;h=256&amp;c=c&amp;webp=1 3x">
								</div>
							</div>
							<div class="home-category-item__title">커튼/블라인드</div>
						</div>
						<div class="home-category-item-wrap">
							<a
								href="/store/category?category=0_4&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=13"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272890365584583.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272890365584583.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272890365584583.jpg?gif=1&amp;w=180&amp;h=180&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272890365584583.jpg?gif=1&amp;w=256&amp;h=256&amp;c=c&amp;webp=1 3x">
								</div>
							</div>
							<div class="home-category-item__title">수납가구</div>
						</div>
						<div class="home-category-item-wrap">
							<a
								href="/store/category?category=22&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=14"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/161052305068611518.png?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/161052305068611518.png?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/161052305068611518.png?gif=1&amp;w=180&amp;h=180&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/161052305068611518.png?gif=1&amp;w=256&amp;h=256&amp;c=c&amp;webp=1 3x">
								</div>
							</div>
							<div class="home-category-item__title">홈트레이닝</div>
						</div>
						<div class="home-category-item-wrap">
							<a
								href="/store/category?category=20&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=15"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/161052306012438069.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/161052306012438069.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/161052306012438069.jpg?gif=1&amp;w=180&amp;h=180&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/161052306012438069.jpg?gif=1&amp;w=256&amp;h=256&amp;c=c&amp;webp=1 3x">
								</div>
							</div>
							<div class="home-category-item__title">캠핑용품</div>
						</div>
						<div class="home-category-item-wrap">
							<a
								href="/store/category?category=7&amp;order=popular&amp;affect_type=StoreHomeCategory&amp;affect_id=16"></a>
							<div class="home-category-item">
								<div class="home-category-item__image-wrap">
									<img class="home-category-item__image"
										src="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272890831857957.png?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1"
										srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272890831857957.png?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272890831857957.png?gif=1&amp;w=180&amp;h=180&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/category/store_home_categories/160272890831857957.png?gif=1&amp;w=256&amp;h=256&amp;c=c&amp;webp=1 3x">
								</div>
							</div>
							<div class="home-category-item__title">인테리어시공</div>
						</div>
					</div>
					<div class="home-category-list__next">
						<button type="button">
							<svg width="32" height="32" viewBox="0 0 32 32"
								preserveAspectRatio="xMidYMid meet">
								<g fill="none" fill-rule="evenodd">
								<rect width="32" height="32" fill="#000" fill-opacity=".26"
									rx="16"></rect>
								<path fill="#FFF" fill-rule="nonzero"
									d="M12 21.13l1.5 1.54L20 16l-6.5-6.67-1.5 1.54L17 16z"></path></g></svg>
						</button>
					</div>
				</div>
			</section>
		</section>

		<section class="container home-section home-cards">
			<header class="row home-section__header">
				<h2 class="col home-section__header__content">오늘의 인기 사진</h2>
				<a class="home-section__header__more home-hide-sm"
					href="/contents/card_collections?order=popular&amp;affect_type=Home&amp;affect_id=0">더보기</a>
			</header>
			<ul class="row home-cards__content">
				<li class="col-6 col-md-3 home-cards__content__item"><article
						class="story-entry story-card-item">
						<a class="story-entry-link"
							href="/contents/card_collections/6175557?affect_type=Home&amp;affect_id=0"><div
								class="story-entry__image-wrap">
								<img class="story-entry__image" alt=""
									src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161024149025864940.jpeg?gif=1&amp;w=320&amp;h=320&amp;c=c&amp;webp=1"
									srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161024149025864940.jpeg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161024149025864940.jpeg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161024149025864940.jpeg?gif=1&amp;w=960&amp;h=960&amp;c=c&amp;webp=1 3x">
								<svg class="story-entry__gallery-icon" width="24" height="24"
									viewBox="0 0 24 24" fill="currentColor"
									preserveAspectRatio="xMidYMid meet">
									<path fill-rule="evenodd"
										d="M20.21 5.053h.788A3.004 3.004 0 0 1 24 8.055v12.943A3.004 3.004 0 0 1 20.998 24H8.055a3.004 3.004 0 0 1-3.002-3.002v-.787h11.165c2.199 0 3.993-1.788 3.993-3.993V5.053zM0 3.003A3.004 3.004 0 0 1 3.002 0h12.943a3.004 3.004 0 0 1 3.002 3.002v12.943a3.004 3.004 0 0 1-3.002 3.002H3.002A3.004 3.004 0 0 1 0 15.945V3.002z"></path></svg>
							</div>
							<div class="story-entry__content-wrap">
								<div class="story-entry__content">
									<div class="story-entry__content__category"></div>
									<div class="story-entry__content__title">
										<br>
									</div>
									<div class="story-entry__content__profile">
										<img class="story-entry__content__profile__image"
											src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1584503495_556664.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c&amp;webp=1"
											srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1584503495_556664.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1584503495_556664.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1584503495_556664.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 3x"><span
											class="story-entry__content__profile__name">xyloto</span>
									</div>
								</div>
							</div></a>
					</article>
					<div class="home-rank-icon">
						<span>1</span>
					</div></li>
				<li class="col-6 col-md-3 home-cards__content__item"><article
						class="story-entry story-card-item">
						<a class="story-entry-link"
							href="/contents/card_collections/6175500?affect_type=Home&amp;affect_id=0"><div
								class="story-entry__image-wrap">
								<img class="story-entry__image" alt=""
									src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161024118928846567.jpeg?gif=1&amp;w=320&amp;h=320&amp;c=c&amp;webp=1"
									srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161024118928846567.jpeg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161024118928846567.jpeg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161024118928846567.jpeg?gif=1&amp;w=960&amp;h=960&amp;c=c&amp;webp=1 3x">
								<svg class="story-entry__gallery-icon" width="24" height="24"
									viewBox="0 0 24 24" fill="currentColor"
									preserveAspectRatio="xMidYMid meet">
									<path fill-rule="evenodd"
										d="M20.21 5.053h.788A3.004 3.004 0 0 1 24 8.055v12.943A3.004 3.004 0 0 1 20.998 24H8.055a3.004 3.004 0 0 1-3.002-3.002v-.787h11.165c2.199 0 3.993-1.788 3.993-3.993V5.053zM0 3.003A3.004 3.004 0 0 1 3.002 0h12.943a3.004 3.004 0 0 1 3.002 3.002v12.943a3.004 3.004 0 0 1-3.002 3.002H3.002A3.004 3.004 0 0 1 0 15.945V3.002z"></path></svg>
							</div>
							<div class="story-entry__content-wrap">
								<div class="story-entry__content">
									<div class="story-entry__content__category"></div>
									<div class="story-entry__content__title">
										<br>
									</div>
									<div class="story-entry__content__profile">
										<img class="story-entry__content__profile__image"
											src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/160831100603743710.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c&amp;webp=1"
											srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/160831100603743710.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/160831100603743710.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/160831100603743710.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 3x"><span
											class="story-entry__content__profile__name">f_moitie</span>
									</div>
								</div>
							</div></a>
					</article>
					<div class="home-rank-icon">
						<span>2</span>
					</div></li>
				<li class="col-6 col-md-3 home-cards__content__item"><article
						class="story-entry story-card-item">
						<a class="story-entry-link"
							href="/contents/card_collections/6175041?affect_type=Home&amp;affect_id=0"><div
								class="story-entry__image-wrap">
								<img class="story-entry__image" alt=""
									src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161023772212605576.jpeg?gif=1&amp;w=320&amp;h=320&amp;c=c&amp;webp=1"
									srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161023772212605576.jpeg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161023772212605576.jpeg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161023772212605576.jpeg?gif=1&amp;w=960&amp;h=960&amp;c=c&amp;webp=1 3x">
								<svg class="story-entry__gallery-icon" width="24" height="24"
									viewBox="0 0 24 24" fill="currentColor"
									preserveAspectRatio="xMidYMid meet">
									<path fill-rule="evenodd"
										d="M20.21 5.053h.788A3.004 3.004 0 0 1 24 8.055v12.943A3.004 3.004 0 0 1 20.998 24H8.055a3.004 3.004 0 0 1-3.002-3.002v-.787h11.165c2.199 0 3.993-1.788 3.993-3.993V5.053zM0 3.003A3.004 3.004 0 0 1 3.002 0h12.943a3.004 3.004 0 0 1 3.002 3.002v12.943a3.004 3.004 0 0 1-3.002 3.002H3.002A3.004 3.004 0 0 1 0 15.945V3.002z"></path></svg>
							</div>
							<div class="story-entry__content-wrap">
								<div class="story-entry__content">
									<div class="story-entry__content__category"></div>
									<div class="story-entry__content__title">
										<br>
									</div>
									<div class="story-entry__content__profile">
										<img class="story-entry__content__profile__image"
											src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/160835595646336389.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c&amp;webp=1"
											srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/160835595646336389.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/160835595646336389.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/160835595646336389.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 3x"><span
											class="story-entry__content__profile__name">조명이있는하얀집</span>
									</div>
								</div>
							</div></a>
					</article>
					<div class="home-rank-icon">
						<span>3</span>
					</div></li>
				<li class="col-6 col-md-3 home-cards__content__item"><article
						class="story-entry story-card-item">
						<a class="story-entry-link"
							href="/contents/card_collections/6177408?affect_type=Home&amp;affect_id=0"><div
								class="story-entry__image-wrap">
								<img class="story-entry__image" alt=""
									src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161024779842014245.jpeg?gif=1&amp;w=320&amp;h=320&amp;c=c&amp;webp=1"
									srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161024779842014245.jpeg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161024779842014245.jpeg?gif=1&amp;w=640&amp;h=640&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161024779842014245.jpeg?gif=1&amp;w=960&amp;h=960&amp;c=c&amp;webp=1 3x">
								<svg class="story-entry__gallery-icon" width="24" height="24"
									viewBox="0 0 24 24" fill="currentColor"
									preserveAspectRatio="xMidYMid meet">
									<path fill-rule="evenodd"
										d="M20.21 5.053h.788A3.004 3.004 0 0 1 24 8.055v12.943A3.004 3.004 0 0 1 20.998 24H8.055a3.004 3.004 0 0 1-3.002-3.002v-.787h11.165c2.199 0 3.993-1.788 3.993-3.993V5.053zM0 3.003A3.004 3.004 0 0 1 3.002 0h12.943a3.004 3.004 0 0 1 3.002 3.002v12.943a3.004 3.004 0 0 1-3.002 3.002H3.002A3.004 3.004 0 0 1 0 15.945V3.002z"></path></svg>
							</div>
							<div class="story-entry__content-wrap">
								<div class="story-entry__content">
									<div class="story-entry__content__category"></div>
									<div class="story-entry__content__title">
										<br>
									</div>
									<div class="story-entry__content__profile">
										<img class="story-entry__content__profile__image"
											src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/160345733976486088.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c&amp;webp=1"
											srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/160345733976486088.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/160345733976486088.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/160345733976486088.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 3x"><span
											class="story-entry__content__profile__name">그래니놀라</span>
									</div>
								</div>
							</div></a>
					</article></li>
				<li class="col-6 col-md-3 home-cards__content__item"><article
						class="story-entry story-card-item">
						<a class="story-entry-link"
							href="/contents/card_collections/6176022?affect_type=Home&amp;affect_id=0"><div
								class="story-entry__image-wrap">
								<img class="story-entry__image" alt=""
									src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161024331021589692.jpeg?gif=1&amp;w=240&amp;h=240&amp;c=c&amp;webp=1"
									srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161024331021589692.jpeg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161024331021589692.jpeg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161024331021589692.jpeg?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;webp=1 3x">
								<svg class="story-entry__gallery-icon" width="24" height="24"
									viewBox="0 0 24 24" fill="currentColor"
									preserveAspectRatio="xMidYMid meet">
									<path fill-rule="evenodd"
										d="M20.21 5.053h.788A3.004 3.004 0 0 1 24 8.055v12.943A3.004 3.004 0 0 1 20.998 24H8.055a3.004 3.004 0 0 1-3.002-3.002v-.787h11.165c2.199 0 3.993-1.788 3.993-3.993V5.053zM0 3.003A3.004 3.004 0 0 1 3.002 0h12.943a3.004 3.004 0 0 1 3.002 3.002v12.943a3.004 3.004 0 0 1-3.002 3.002H3.002A3.004 3.004 0 0 1 0 15.945V3.002z"></path></svg>
							</div>
							<div class="story-entry__content-wrap">
								<div class="story-entry__content">
									<div class="story-entry__content__category"></div>
									<div class="story-entry__content__title">
										<br>
									</div>
									<div class="story-entry__content__profile">
										<img class="story-entry__content__profile__image"
											src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158886486278585290.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c&amp;webp=1"
											srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158886486278585290.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158886486278585290.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/158886486278585290.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 3x"><span
											class="story-entry__content__profile__name">BBO HOUSE</span>
									</div>
								</div>
							</div></a>
					</article></li>
				<li class="col-6 col-md-3 home-cards__content__item"><article
						class="story-entry story-card-item">
						<a class="story-entry-link"
							href="/contents/card_collections/6184191?affect_type=Home&amp;affect_id=0"><div
								class="story-entry__image-wrap">
								<img class="story-entry__image" alt=""
									src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161026888606962104.jpeg?gif=1&amp;w=240&amp;h=240&amp;c=c&amp;webp=1"
									srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161026888606962104.jpeg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161026888606962104.jpeg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161026888606962104.jpeg?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;webp=1 3x">
								<svg class="story-entry__gallery-icon" width="24" height="24"
									viewBox="0 0 24 24" fill="currentColor"
									preserveAspectRatio="xMidYMid meet">
									<path fill-rule="evenodd"
										d="M20.21 5.053h.788A3.004 3.004 0 0 1 24 8.055v12.943A3.004 3.004 0 0 1 20.998 24H8.055a3.004 3.004 0 0 1-3.002-3.002v-.787h11.165c2.199 0 3.993-1.788 3.993-3.993V5.053zM0 3.003A3.004 3.004 0 0 1 3.002 0h12.943a3.004 3.004 0 0 1 3.002 3.002v12.943a3.004 3.004 0 0 1-3.002 3.002H3.002A3.004 3.004 0 0 1 0 15.945V3.002z"></path></svg>
							</div>
							<div class="story-entry__content-wrap">
								<div class="story-entry__content">
									<div class="story-entry__content__category"></div>
									<div class="story-entry__content__title">
										<br>
									</div>
									<div class="story-entry__content__profile">
										<img class="story-entry__content__profile__image"
											src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1585920482_974721.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c&amp;webp=1"
											srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1585920482_974721.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1585920482_974721.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images1585920482_974721.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 3x"><span
											class="story-entry__content__profile__name">포도의집🍇</span>
									</div>
								</div>
							</div></a>
					</article></li>
				<li class="col-6 col-md-3 home-cards__content__item"><article
						class="story-entry story-card-item">
						<a class="story-entry-link"
							href="/contents/card_collections/6177786?affect_type=Home&amp;affect_id=0"><div
								class="story-entry__image-wrap">
								<img class="story-entry__image" alt=""
									src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161024882334984404.jpeg?gif=1&amp;w=240&amp;h=240&amp;c=c&amp;webp=1"
									srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161024882334984404.jpeg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161024882334984404.jpeg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161024882334984404.jpeg?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;webp=1 3x">
								<svg class="story-entry__gallery-icon" width="24" height="24"
									viewBox="0 0 24 24" fill="currentColor"
									preserveAspectRatio="xMidYMid meet">
									<path fill-rule="evenodd"
										d="M20.21 5.053h.788A3.004 3.004 0 0 1 24 8.055v12.943A3.004 3.004 0 0 1 20.998 24H8.055a3.004 3.004 0 0 1-3.002-3.002v-.787h11.165c2.199 0 3.993-1.788 3.993-3.993V5.053zM0 3.003A3.004 3.004 0 0 1 3.002 0h12.943a3.004 3.004 0 0 1 3.002 3.002v12.943a3.004 3.004 0 0 1-3.002 3.002H3.002A3.004 3.004 0 0 1 0 15.945V3.002z"></path></svg>
							</div>
							<div class="story-entry__content-wrap">
								<div class="story-entry__content">
									<div class="story-entry__content__category"></div>
									<div class="story-entry__content__title">
										<br>
									</div>
									<div class="story-entry__content__profile">
										<img class="story-entry__content__profile__image"
											src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/160180286274740253.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c&amp;webp=1"
											srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/160180286274740253.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/160180286274740253.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/160180286274740253.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 3x"><span
											class="story-entry__content__profile__name">셀리홈</span>
									</div>
								</div>
							</div></a>
					</article></li>
				<li class="col-6 col-md-3 home-cards__content__item"><article
						class="story-entry story-card-item">
						<a class="story-entry-link"
							href="/contents/card_collections/6179937?affect_type=Home&amp;affect_id=0"><div
								class="story-entry__image-wrap">
								<img class="story-entry__image" alt=""
									src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161025548616732818.jpeg?gif=1&amp;w=240&amp;h=240&amp;c=c&amp;webp=1"
									srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161025548616732818.jpeg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161025548616732818.jpeg?gif=1&amp;w=480&amp;h=480&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161025548616732818.jpeg?gif=1&amp;w=720&amp;h=720&amp;c=c&amp;webp=1 3x">
								<svg class="story-entry__gallery-icon" width="24" height="24"
									viewBox="0 0 24 24" fill="currentColor"
									preserveAspectRatio="xMidYMid meet">
									<path fill-rule="evenodd"
										d="M20.21 5.053h.788A3.004 3.004 0 0 1 24 8.055v12.943A3.004 3.004 0 0 1 20.998 24H8.055a3.004 3.004 0 0 1-3.002-3.002v-.787h11.165c2.199 0 3.993-1.788 3.993-3.993V5.053zM0 3.003A3.004 3.004 0 0 1 3.002 0h12.943a3.004 3.004 0 0 1 3.002 3.002v12.943a3.004 3.004 0 0 1-3.002 3.002H3.002A3.004 3.004 0 0 1 0 15.945V3.002z"></path></svg>
							</div>
							<div class="story-entry__content-wrap">
								<div class="story-entry__content">
									<div class="story-entry__content__category"></div>
									<div class="story-entry__content__title">
										<br>
									</div>
									<div class="story-entry__content__profile">
										<img class="story-entry__content__profile__image"
											src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/161047295154504027.jpeg?gif=1&amp;w=36&amp;h=36&amp;c=c&amp;webp=1"
											srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/161047295154504027.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/161047295154504027.jpeg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/161047295154504027.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1 3x"><span
											class="story-entry__content__profile__name">롹캔롤</span>
									</div>
								</div>
							</div></a>
					</article></li>
			</ul>
			<div class="row home-section__more-wrap">
				<div class="col home-section__more">
					<a class="col home-section__more__btn"
						href="/contents/card_collections?order=popular&amp;affect_type=Home&amp;affect_id=0">인기
						사진 더보기</a>
				</div>
			</div>
		</section>
		<section class="container home-section home-rank">
			<header class="row home-section__header">
				<h2 class="col home-section__header__content">베스트</h2>
			</header>
			<div class="production-rank-feed">
				<ul class="production-rank-feed__category">
					<li class="production-rank-feed__category__item active">전체</li>
					<li class="production-rank-feed__category__item">가구</li>
					<li class="production-rank-feed__category__item">패브릭</li>
					<li class="production-rank-feed__category__item">홈데코/조명</li>
					<li class="production-rank-feed__category__item">가전</li>
					<li class="production-rank-feed__category__item">수납/정리</li>
					<li class="production-rank-feed__category__item">생활</li>
					<li class="production-rank-feed__category__item">주방</li>
					<li class="production-rank-feed__category__item">DIY/공구</li>
					<li class="production-rank-feed__category__item">인테리어시공</li>
					<li class="production-rank-feed__category__item">반려동물</li>
					<li class="production-rank-feed__category__item">캠핑용품</li>
					<li class="production-rank-feed__category__item">홈트레이닝</li>
				</ul>
				<div class="row production-rank-feed__group">
					<div class="col production-rank-feed__list-wrap">
						<ul class="row production-rank-feed__list">
							<div class="col-4 production-rank-feed__item">
								<div class="home-production-item">
									<a
										href="https://ohou.se/productions/111255/selling?affect_type=Home&amp;affect_id=0&amp;content_type=HomeFeedRank"><div
											class="img-wrap square home-production-item__wrapper">
											<div class="home-production-item__image">
												<img class="home-production-item__image"
													src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1554432441250_K6wX5dopzz.jpg?gif=1&amp;w=240&amp;webp=1"
													srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1554432441250_K6wX5dopzz.jpg?gif=1&amp;w=360&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1554432441250_K6wX5dopzz.jpg?gif=1&amp;w=480&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1554432441250_K6wX5dopzz.jpg?gif=1&amp;w=720&amp;webp=1 3x">
											</div>
										</div>
										<div class="info">
											<p class="product-name text-caption-1 line-height-normal">Q4
												유로탑 롤팩 매트리스 2size</p>
											<p class="price text-caption-3">
												<span class="discount-ratio text-blue text-body-1 bold">66%</span><strong
													class="selling-price text-body-1 text-black">
													234,900</strong>
											</p>
										</div>
										<div class="home-rank-icon">
											<span>1</span>
										</div></a>
								</div>
							</div>
							<div class="col-4 production-rank-feed__item">
								<div class="home-production-item">
									<a
										href="https://ohou.se/productions/355500/selling?affect_type=Home&amp;affect_id=0&amp;content_type=HomeFeedRank"><div
											class="img-wrap square home-production-item__wrapper">
											<div class="home-production-item__image">
												<img class="home-production-item__image"
													src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159135411032102253.jpg?gif=1&amp;w=240&amp;webp=1"
													srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159135411032102253.jpg?gif=1&amp;w=360&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159135411032102253.jpg?gif=1&amp;w=480&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159135411032102253.jpg?gif=1&amp;w=720&amp;webp=1 3x">
											</div>
										</div>
										<div class="info">
											<p class="product-name text-caption-1 line-height-normal">비앙카
												LED 수납 침대 (매트포함) SS/Q/K</p>
											<p class="price text-caption-3">
												<span class="discount-ratio text-blue text-body-1 bold">57%</span><strong
													class="selling-price text-body-1 text-black">
													239,900</strong>
											</p>
										</div>
										<div class="home-rank-icon">
											<span>2</span>
										</div></a>
								</div>
							</div>
							<div class="col-4 production-rank-feed__item">
								<div class="home-production-item">
									<a
										href="https://ohou.se/productions/344496/selling?affect_type=Home&amp;affect_id=0&amp;content_type=HomeFeedRank"><div
											class="img-wrap square home-production-item__wrapper">
											<div class="home-production-item__image">
												<img class="home-production-item__image"
													src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159074238501233921.jpg?gif=1&amp;w=240&amp;webp=1"
													srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159074238501233921.jpg?gif=1&amp;w=360&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159074238501233921.jpg?gif=1&amp;w=480&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/159074238501233921.jpg?gif=1&amp;w=720&amp;webp=1 3x">
											</div>
										</div>
										<div class="info">
											<p class="product-name text-caption-1 line-height-normal">선데이
												러그 7size 4colors</p>
											<p class="price text-caption-3">
												<span class="discount-ratio text-blue text-body-1 bold">43%</span><strong
													class="selling-price text-body-1 text-black">
													15,900</strong>
											</p>
										</div>
										<div class="home-rank-icon">
											<span>3</span>
										</div></a>
								</div>
							</div>
						</ul>
					</div>
					<div class="col-12 home-section__more-wrap">
						<div class="home-section__more">
							<a class="home-section__more__btn"
								href="/commerces/ranks?type=best">베스트셀러 더보기</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="home-b2b-notice container">
			<a class="home-b2b-notice__entry" href="/contacts/b2b"><div
					class="home-b2b-notice__entry__title">
					판매 회원 전환 (사업자)
					<svg class="caret" width="1em" height="1em" viewBox="0 0 24 24"
						preserveAspectRatio="xMidYMid meet">
						<path fill="currentColor" fill-rule="nonzero"
							d="M6 19.692L8.25 22 18 12 8.25 2 6 4.308 13.5 12z"></path></svg>
				</div>
				<div class="home-b2b-notice__entry__caption">
					사업자 판매 시 혜택을 드립니다
					<svg class="caret" width="1em" height="1em" viewBox="0 0 24 24"
						preserveAspectRatio="xMidYMid meet">
						<path fill="currentColor" fill-rule="nonzero"
							d="M6 19.692L8.25 22 18 12 8.25 2 6 4.308 13.5 12z"></path></svg>
				</div></a>
		</section>
	</div>
	<!-- footer -->
	<jsp:include page="footer.jsp" />
</body>
</html>