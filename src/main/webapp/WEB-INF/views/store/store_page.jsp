<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/swiper-bundle.min.css">
<script src="http://localhost:9000/myhouse/js/swiper-bundle.min.js"></script>
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<style>
	h1 {
		font-weight: inherit;
	}
	div {
		margin: 0;
    	padding: 0;
	}
	a {
		color: inherit;
   	 	text-decoration: none;
	}
	a {
		cursor: pointer;
		touch-action: manipulation;
	}
	ol, ul {
	    list-style: none;
	}
	.production-selling {
	    position: relative;
	    min-height: 1px;
	    border:1px solid red;
	}
	.container {
	    margin-right: auto;
	    margin-left: auto;
	    box-sizing: border-box;
	    width: 1136px;
	    max-width: 100%;
	    min-height: 1px;
	}
	.production-selling-overview__category {
	    margin: 20px 0 0;
	    padding: 0;
	    border: none;
	    display: block;
	}
	.commerce-category-breadcrumb__entry {
	    font-size: 15px;
	    display: inline-block;
	    color: #757575;
	    line-height: 1.2;
	    font-weight:600;
	}
	.commerce-category-breadcrumb__entry>.link {
	    transition: opacity .1s;
	    border-left:3px solid #35c5f0;
	    margin-right:10px;
	    padding-left:8px;
	}
	.production-selling-overview__container {
	    margin-top: 40px;
	    margin-bottom: 40px;
	}
	.row {
	    display: flex;
	    flex-wrap: wrap;
	    box-sizing: border-box;
	    margin-right: -10px;
	    margin-left: -10px;
	}
	.col-lg-7 {
	    padding-right: 10px;
	    padding-left: 10px;
	}
	.col-lg-7 {
	    position: relative;
	    width:100%;
	    min-height: 1px;
	    box-sizing: border-box;
	    -webkit-box-flex: 0;
	    flex: 0 0 58.3333333333%;
	    max-width: 58.3333333333%;
	}
	.production-selling-cover-image-container {
	    position: relative;
	    width:450px;
	    height:400px;
	    margin-left:50px;
	    padding-left:80px;
	}
	/* 캐러셀 */
	.swiper-container {
      width: 100%;
      height: 300px;
      margin-left: auto;
      margin-right: auto;
    }
	.swiper-container.gallery-thumbs {
      overflow: visible;
    }

    .swiper-slide {
      background-size: cover;
      background-position: center;
    }
    .gallery-top {
      height: 95%;
      width: 100%;
      border-radius:5px;
      margin-left:30px;
    }

    .gallery-thumbs {
      height: 20%;
      box-sizing: border-box;
      padding: 10px 0;
    }

    .gallery-thumbs .swiper-slide {
      width: 25%;
      height: 100%;
      opacity: 0.4;
    }

    .gallery-thumbs .swiper-slide-thumb-active {
      opacity: 1;
    }
    .swiper-wrapper.thumb {
     display:block;
     top:-390px;
     right:90px;
    }
    .swiper-wrapper.main .swiper-slide {
	     border-radius : 6px;
    }
    .swiper-slide.thumb-sub {
    	margin:7px 0;
    	border-radius : 4px;
    	width:68px;
    	height:68px;
    	
    	transform: scale(1);
	  -webkit-transform: scale(1);
	  -moz-transform: scale(1);
	  -ms-transform: scale(1);
	  -o-transform: scale(1);
	  transition: all 0.3s ease-in-out; 
    }
    .swiper-slide.thumb-sub:hover {
    	transform: scale(1.02);
	  -webkit-transform: scale(1.02);
	  -moz-transform: scale(1.02);
	  -ms-transform: scale(1.02);
	  -o-transform: scale(1.02);
    	border:2px solid #35c5f0;
    }
    .swiper-slide-thumb-active {
    	border:2px solid #35c5f0;
    }
    .col-lg-5 {
	    padding-right: 10px;
	    margin-left:-5px;
	    margin-top:-15px;
	    position: relative;
	    width: 100%;
	    min-height: 1px;
	    box-sizing: border-box;
	    -webkit-box-flex: 0;
	    flex: 0 0 41.6666666667%;
	    max-width: 41.6666666667%;
	}
	.production-selling-header {
	    position: relative;
	}
	.production-selling-header__title__brand-wrap {
	    margin: -3px 0 3px;
	}
	.production-selling-header__title__brand-wrap {
	    display: block;
	    font-size: 13px;
	    font-weight: 400;
	    line-height: 19px;
	    color: #757575;
	}
	.production-selling-header__title__brand {
	    color: #35c5f0;
	    font-weight: 700;
	    transition: opacity .1s;
	}
	.production-selling-header__title__name {
	    margin: 0;
	    font-size: 22px;
	    line-height: 34px;
	     display: block;
	    font-weight: 400;
	    color: #000;
	}
</style>
<script>
	$(document).ready(function(){
		
		/* swiper */
	    var galleryThumbs = new Swiper('.gallery-thumbs', {
	      spaceBetween: 10,
	      slidesPerView: 6,
	      freeMode: true,
	      watchSlidesVisibility: true,
	      watchSlidesProgress: true,
	    });
	    var galleryTop = new Swiper('.gallery-top', {
	      spaceBetween: 10,
	      navigation: {
	        nextEl: '.swiper-button-next',
	        prevEl: '.swiper-button-prev',
	      },
	      thumbs: {
	        swiper: galleryThumbs
	      }
	    });
		
	});
  </script>
</head>
<body>
<div class="production-selling">
	<div class="production-selling-overview container">
		<nav class="commerce-category-breadcrumb-wrap production-selling-overview__category">
			<ol class="commerce-category-breadcrumb">
				<li class="commerce-category-breadcrumb__entry"><a class="link" href="/store/category?category=0&amp;affect_type= ProductSaleDetail&amp;affect_id=647815">가구</a>
			</ol>
		</nav>
		<div class="production-selling-overview__container row">
			<div class="production-selling-overview__cover-image-wrap col-12 col-md-6 col-lg-7">
				<div class="production-selling-cover-image-container">
					<!-- Swiper -->
					  <div class="swiper-container gallery-top">
					    <div class="swiper-wrapper main">
					      <div class="swiper-slide" style="background-image:url(http://localhost:9000/myhouse/images/store-page-img1.webp)"></div>
					      <div class="swiper-slide" style="background-image:url(http://localhost:9000/myhouse/images/store-page-img2.webp)"></div>
					      <div class="swiper-slide" style="background-image:url(http://localhost:9000/myhouse/images/store-page-img3.webp)"></div>
					      <div class="swiper-slide" style="background-image:url(http://localhost:9000/myhouse/images/store-page-img4.webp)"></div>
					      <div class="swiper-slide" style="background-image:url(http://localhost:9000/myhouse/images/store-page-img4.webp)"></div>
					    </div>
					    <!-- Add Arrows -->
					  </div>
					  <div class="swiper-container gallery-thumbs">
						  <ul class="swiper-wrapper thumb">
						  	<li class=" swiper-slide thumb-sub" style="background-image:url(http://localhost:9000/myhouse/images/store-page-img1.webp)"></li>
						  	<li class="swiper-slide thumb-sub" style="background-image:url(http://localhost:9000/myhouse/images/store-page-img2.webp)"></li>
						  	<li class="swiper-slide thumb-sub" style="background-image:url(http://localhost:9000/myhouse/images/store-page-img3.webp)"></li>
						  	<li class="swiper-slide thumb-sub" style="background-image:url(http://localhost:9000/myhouse/images/store-page-img4.webp)"></li>
						  	<li class="swiper-slide thumb-sub" style="background-image:url(http://localhost:9000/myhouse/images/store-page-img4.webp)"></li>
						  </ul>
					  </div>
				</div> <!-- production-selling-cover-image-container -->
			</div> <!-- production-selling-overview__cover-image-wrap col-12 col-md-6 col-lg-7 -->
			<div class="production-selling-overview__content col-12 col-md-6 col-lg-5">
				<div class="production-selling-header">
					<h1 class="production-selling-header__title">
						<p class="production-selling-header__title__brand-wrap">
							<a class="production-selling-header__title__brand" href="#">회사이름:아메리카나베드</a>
						</p>
						<span class="production-selling-header__title__name">상품제목:[주말특가] 알론 통서랍 수납 슈퍼싱글 침대 (3color)</span>
					</h1>
				</div>
			</div>
			
		</div> <!-- production-selling-overview__container row -->
	</div> <!-- production-selling-overview containe -->
</div> <!-- production-selling -->
</body>
</html>