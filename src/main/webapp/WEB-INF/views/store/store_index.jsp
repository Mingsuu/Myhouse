<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String category = request.getParameter("category");
	System.out.println(category);
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/swiper-bundle.min.css">
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/myhouse/js/swiper-bundle.min.js"></script>
<style>
	* {
	    box-sizing: border-box;
	}
	div, ul, li {
		margin:0;
		padding:0;
	 }
	a, button {
		cursor: pointer;
	    touch-action: manipulation;
	    color: inherit;
    	text-decoration: none;
	}
	a {
	    color: inherit;
	    text-decoration: none;
	}
	button {
	    -webkit-writing-mode: horizontal-tb !important;
	    text-rendering: auto;
	    word-spacing: normal;
	    text-transform: none;
	    text-indent: 0px;
	    text-shadow: none;
	    text-align: center;
	    align-items: flex-start;
	    font: 400 13.3333px Arial;
	}
	button {
		font-size:inherit;
	}
	ol, ul {
		list-style:none;
	}
	ol, ul {
	    display: block;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    padding-inline-start: 40px;
	}
	li {
	    display: list-item;
	    text-align: -webkit-match-parent;
	}
	img {
		border:0;
	}
	h1 {
		font-weight: inherit;
	}
	.all {
		position: relative;
	    margin-right: auto;
	    margin-left: auto;
	    width: calc(100% - 120px);
	}
	.category-feed-container {
		position: relative;
	    margin-right: auto;
	    margin-left: auto;
		width:1240px;
		border:1px solid red;
	}
	/* @media (min-width: 768px) */
	.category-feed-wrap {
	    margin-top: 40px;
	}
	/* @media (min-width:1024px) */
	.container {
		position:relative;
		margin-right: auto;
	    margin-left: auto;
	    width: calc(100% - 120px);
	    max-width: 100%;
	    box-sizing: border-box;
	    min-height: 1px;
	}
	/* @media (min-width:1024px) */
	.row {
		display:flex;
		flex-wrap: wrap;
		box-sizing: border-box;
		margin-right: -10px;
		margin-left:-10px;
		width:100%;
	}
	/* @media (min-width: 768px)  */
	.category-feed_side-bar {
		display:block;
		
	}
	/* @media (min-width: 1024px) and (min-width: 768px) */
	.col-md-3 {
		padding-right: 10px;
		padding-left: 10px;
	}
	/* @media (min-width: 768px)  */
	.col-md-3 {
		position: relative;
	    width: 100%;
	    min-height: 1px;
	    box-sizing: border-box;
	    -webkit-box-flex: 0;
	    flex: 0 0 25%;
	    max-width: 25%;
	}
	.commerce-category-list {
	    max-width: 200px;
	}
	.commerce-category-list__others {
	    margin: 15px 0 30px;
	    padding-top: 12px;
	   /*  border-top: 1px solid #dbdbdb; */
	}
	.commerce-category-list__others__item {
	    margin-bottom: 20px;
	    font-size: 20px;
	    font-weight: 700;
	    color: #000;
	}
	.commerce-category-list__others__item:hover {
	    color: lightgray;
	}
	.commerce-category-list__others__item a {
		transition: opacity .1s;
	}
	.commerce-category-list__others__item.selected {
		color:#35c5f0;
		font-size:22px;
	}
	.commerce-category-list__others__item.selected a {
		border-bottom: 2px solid #35c5f0;
	}
	.category-feed__content {
	    position: relative;
	    float:right;
	}
	/* @media (min-width: 1024px) and (min-width: 768px) */
	.col-md-9 {
	    padding-right: 10px;
	    padding-left: 10px;
	}
	/* @media (min-width: 768px) */
	.col-md-9 {
	    width: 100%;
	    min-height: 1px;
	    box-sizing: border-box;
	    -webkit-box-flex: 0;
	    flex: 0 0 75%;
	    max-width: 75%;
	}
	/* @media (min-width: 768px) */
	.commerce-category-header:first-child {
	    margin-top: 0;
	}
	/* @media (min-width: 768px) */
	.commerce-category-header {
	    padding: 0;
	    border-bottom: 0;
	    margin: 40px 0 0;
	}
	/* @media (min-width: 768px) */
	.category-feed__content__header .commerce-category-header__breadcrumb-wrap {
	    margin-bottom: 20px;
	}
	
	/* @media (min-width: 1024px) and (min-width: 768px) */
	.swiper-container {
      width: 100%;
      height: 250px;
    }

	/* @media (min-width: 768px) */
    .swiper-slide {
      text-align: center;
      font-size: 18px;
      background: #fff;

      /* Center slide text vertically */
      display: -webkit-box;
      display: -ms-flexbox;
      display: -webkit-flex;
      display: flex;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      -webkit-justify-content: center;
      justify-content: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      -webkit-align-items: center;
      align-items: center;
    }
    .swiper-container.swiper_none {
    	display:none;
    }
    .commerce-category-breadcrumb__entry {
    	margin-right: 5px;
    	font-size: 16px;
    	color:#000;	
        display: inline-block;
        line-height: 1.2;
        font-weight: 500;
    }
    .commerce-category-breadcrumb__entry .link {
    	transition: opacity .1s;
    	margin-left:-40px; 
    	padding-left:10px;
    	border-left : 3px solid #35c5f0;
    }
    .commerce-category-breadcrumb.disable{
    	display:none;
    }
    .swiper-button-next, .swiper-button-prev {
    	background-color:white;
    	width:40px; 
    	height:40px;
    	border-radius:100px;
    	color:#000;
    }
    .swiper-button-next:hover, .swiper-button-prev:hover {
    	background-color:#35c5f0;
    	width:40px; 
    	height:40px;
    	border-radius:100px;
    	color:white;
    }
    .swiper-button-prev:after, .swiper-button-next:after {
	    font-size:18px;
	} 
	.swiper-button-prev.swiper-button-disabled, .swiper-button-next.swiper-button-disabled {
	    opacity: 0.35;
	    cursor: auto;
	    pointer-events: none;
	}
	.swiper-pagination-bullet {
	    width: 8px;
	    height: 8px;
	    display: inline-block;
	    border-radius: 100%;
	    background: #35c5f0;
	    opacity: 0.2;
	}
	.swiper-pagination-bullet-active {
	    opacity: 1;
	    background: white; 
	    box-shadow: 0 2px 4px 0 rgba(0,0,0,.2);
	}
	.category-feed__content__filter {
		margin-top:20px;
	}
	.category-feed-filter-bar {
	    position: relative;
	}
	.category-filter-bar-control-list {
	    margin: 0 -4px;
	    display: flex;
   	 	-webkit-box-align: center;
	    align-items: center;
    	-webkit-box-pack: justify;
	    justify-content: space-between;
	    min-width: 0;
	}
	.category-filter-bar-control-list__left {
	    padding: 0;
	    overflow: hidden;
	    -webkit-box-flex: 0;
	    flex: 0 1 auto;
	    min-width: 0;
	    margin: 0;
	    list-style: none;
	}
	.category-filter-bar-control-list__item {
	    padding: 4px 0;
	    display: inline-block;
	    margin: 0 4px;
	    vertical-align: bottom;
	    font-size: 0;
	    line-height: 0;
	}
	.drop-down {
	    position: relative;
	    display: inline-block;
	}
	.category-filter-bar-button {
	    font-family: Noto Sans KR,Apple SD Gothic Neo,ë§‘ì€ ê³ ë”•,Malgun Gothic,sans-serif;
	    display: inline-block;
	    margin: 0;
	    padding: 8px 10px;
	    border: 1px solid #dadce0;
	    border-radius: 4px;
	    box-sizing: border-box;
	    font-size: 14px;
	    font-weight: 400;
	    font-stretch: normal;
	    font-style: normal;
	    line-height: 1.21;
	    letter-spacing: normal;
	    color: #424242;
	    transition: color .1s,background-color .1s,border-color .1s;
	    background-color: #fff;
	}
	 .category-filter-bar-button:hover {
		background-color:#F5F5F5;
	} 
	.category-filter-bar-button>.chevron {
	    margin-left: 6px;
	    vertical-align: -1px;
	    color: #dadce0;
	}
	.category-filter-bar-button--modal-open {
	    color: #37507d;
	   /*  border-color: #37507d; */
	    background-color: #fff;
	    font-weight: 700;
	    box-shadow: 0 2px 3px 0 rgba(234,235,239,.4);
	    font-family: Noto Sans KR,Apple SD Gothic Neo,ë§‘ì€ ê³ ë”•,Malgun Gothic,sans-serif;
	    display: inline-block;
	    margin: 0;
	    padding: 8px 10px;
	    border: 1px solid #37507d;
	    border-radius: 4px;
	    box-sizing: border-box;
	    font-size: 14px;
	    font-stretch: normal;
	    font-style: normal;
	    line-height: 1.21;
	    letter-spacing: normal;
	    transition: color .1s,background-color .1s,border-color .1s;
	}
	.category-filter-bar-button--modal-open:active, .category-filter-bar-button--modal-open:hover {
	    border-color: #37507d;
	    background-color: rgba(234,235,239,.4);
	}
	.category-filter-bar-button:focus, .category-filter-bar-button--modal-open:focus {
	    outline: none;
	    text-decoration: none;
	}
	.category-filter-bar-button--modal-open>.chevron {
		margin-left: 6px;
	    vertical-align: -1px;
	    color: #37507d;
	    transform: rotate(180deg);
	}
	.category-filter-bar-tag-list-placeholder {
	    margin-bottom: 19px;
	}
	.category-feed-filter-secondary {
	    margin: 23px 0 4px;
	    padding: 0;
	}
	.category-feed-filter-secondary {
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    -webkit-box-pack: justify;
	    justify-content: space-between;
	}
	.category-feed-filter-secondary__summary {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    font-size: 14px;
	    font-weight: 400;
	    font-stretch: normal;
	    font-style: normal;
	    line-height: normal;
	    letter-spacing: normal;
	    color: #424242;
	}
	.col-lg-4 {
	    padding-right: 10px;
	    padding-left: 10px;
	}
	.col-lg-4 {
	    position: relative;
	    width: 100%;
	    min-height: 1px;
	    box-sizing: border-box;
	    -webkit-box-flex: 0;
	    flex: 0 0 33.3333333333%;
	    max-width: 33.3333333333%;
	}
	.production-item {
	    padding: 0 0 30px;
	    position:relative;
	}
	.production-item__overlay {
	    position: absolute;
	    top: 0;
	    left: 0;
	    right: 0;
	    bottom: 0;
	    z-index: 2;
	}
	.production-item-image {
	    position: relative;
	    background-color: #f5f5f5;
	    padding-bottom: 100%;
	    border-radius: 4px;
	    overflow: hidden;
	}
	.production-item-image>.image {
	    position: absolute;
	    top: 50%;
	    left: 50%;
	    width: 100%;
	    transform: translate(-50%,-50%);
	    transition: transform .2s;
	}
	.production-item-scrap-badge {
	    bottom: 12px;
	    right: 12px;
	    position: absolute;
	    width: 24px;
	    height: 24px;
	    margin: 0;
	    padding: 0;
	    background: none;
	    border: none;
	    z-index: 2;
	    transition: opacity .1s;
	}
	.production-item-scrap-badge--active {
	    bottom: 12px;
	    right: 12px;
	    position: absolute;
	    width: 24px;
	    height: 24px;
	    margin: 0;
	    padding: 0;
	    background: none;
	    border: none;
	    z-index: 2;
	    transition: opacity .1s;
	}
	.production-item-scrap-badge>.active-icon, .production-item-scrap-badge>.inactive-icon {
	    position: absolute;
	    top: 0;
	    left: 0;
	    transition: opacity .1s;
	}
	.production-item-scrap-badge>.active-icon {
	    opacity: 0;
	}
	.production-item-scrap-badge--active>.inactive-icon {
	    opacity: 0;
	}
	.production-item-scrap-badge--active>.active-icon {
	    opacity: 1;
	     position: absolute;
	    top: 0;
	    left: 0;
	    transition: opacity .1s;
	}
	.production-item-scrap-badge:focus, .production-item-scrap-badge--active:focus {
		outline: none;
	    text-decoration: none;
	}
	.production-item-image__dark-overlay {
    	position: absolute;
	    top: 0;
	    left: 0;
	    width: 100%;
	    height: 100%;
	    transition: background-color .2s;
	}
	.production-item-image:after {
	    content: "";
	    position: absolute;
	    top: 0;
	    left: 0;
	    right: 0;
	    bottom: 0;
	    background: rgba(0,0,0,.02);
	}
	.production-item__content {
	    padding: 0 10px;
	}
	.production-item__header {
	    margin: 9px 0 0;
	}
	.production-item__header__brand {
	    display: block;
	    color: #757575;
	    word-break: break-all;
	    font-size: 11px;
	    font-weight: 400;
	    line-height: 13px;
	}
	.production-item__header__name {
	    max-height: 34px;
	    margin-top: 5px;
	    word-break: break-all;
	    font-size: 13px;
	    font-weight: 400;
	    line-height: 17px;
	    color: #000;
	    transition: opacity .1s;
	    overflow: hidden;
	    text-overflow: ellipsis;
	    display: -webkit-box;
	    -webkit-line-clamp: 2;
	    -webkit-box-orient: vertical;
	}
	.production-item .production-item-price {
	    margin: 2px 0 0;
	}
	.production-item-price {
	    display: block;
	    font-size: 17px;
	    line-height: 23px;
	    font-weight: 700;
	}
	.production-item-price__rate {
	    color: #35c5f0;
	    margin-right: 2px;
	}
	.production-item-price__price {
	    color: #000;
	}
	.production-item .production-item-stats {
	    margin: 3px 0 0;
	}
	.production-item-stats {
	    font-size: 12px;
	    color: #9e9e9e;
	    line-height: 16px;
	    font-weight: 700;
	}
	.production-item-stats--review>.icon {
	    width: 1.1em;
	    height: 1.1em;
	    margin-right: 1px;
	    color: #35c5f0;
	    vertical-align: -2px;
	}
	.production-item-stats--review>.avg {
	    margin-right: 2px;
	    color: #424242;
	    font-weight: 700;
	}
	.production-item .production-item-badge-list {
	    margin: 6px 0 0;
	}
	.production-item-badge-list {
	    display: block;
	}
	.production-item-badge-list>.icon {
	    margin-right: 4px;
	}
</style>
<script>
$(document).ready(function(){
	//list 부분 
		/* $("#link1").attr("href", "?category=0"); */
		/* var para = document.location.href;
		var para_split = para.split("?"); */
		//alert(para_split[1]); 
	if("<%=category%>" == "0")  {
		select_list();
		$("#list-1").removeClass('disable');
		$("#list1").addClass('selected');
		$("#swiper1").removeClass('swiper_none');
	} else if("<%=category%>" == "1") {
		select_list();
		$("#list-2").removeClass('disable');
		$("#list2").addClass('selected');
		$("#swiper2").removeClass('swiper_none');
	} else if("<%=category%>" == "2") {
		select_list();
		$("#list-3").removeClass('disable');
		$("#list3").addClass('selected');
		$("#swiper3").removeClass('swiper_none');
	} else if("<%=category%>" == "3") {
		select_list();
		$("#list-4").removeClass('disable');
		$("#list4").addClass('selected');
		$("#swiper4").removeClass('swiper_none');
	} else if(<%=category%> == "4") {
		select_list();
		$("#list-5").removeClass('disable');
		$("#list5").addClass('selected');
		$("#swiper5").removeClass('swiper_none');
	} else if(<%=category%> == "5") {
		select_list();
		$("#list-6").removeClass('disable');
		$("#list6").addClass('selected');
		$("#swiper6").removeClass('swiper_none');
	} else if(<%=category%> == "6") {
		select_list();
		$("#list-7").removeClass('disable');
		$("#list7").addClass('selected');
		$("#swiper7").removeClass('swiper_none');
	} else if(<%=category%> == "7") {
		select_list();
		$("#list-8").removeClass('disable');
		$("#list8").addClass('selected');
		$("#swiper8").removeClass('swiper_none');
	} else if(<%=category%> == "8") {
		select_list();
		$("#list-9").removeClass('disable');
		$("#list9").addClass('selected');
		$("#swiper9").removeClass('swiper_none');
	} else if(<%=category%> == "9") {
		select_list();
		$("#list-10").removeClass('disable');
		$("#list10").addClass('selected');
		$("#swiper10").removeClass('swiper_none');
	} else if(<%=category%> == "10") {
		select_list();
		$("#list-11").removeClass('disable');
		$("#list11").addClass('selected');
		$("#swiper11").removeClass('swiper_none');
	} else if(<%=category%> == "11") {
		select_list();
		$("#list-12").removeClass('disable');
		$("#list12").addClass('selected');
		$("#swiper12").removeClass('swiper_none');
	} else {
		select_list();
		$("#list-1").removeClass('disable');
		$("#list1").addClass('selected');
		$("#swiper1").removeClass('swiper_none');
	}
	
	
	
	function select_list() {
		$("#list1").removeClass('selected');
		$("#list2").removeClass('selected');
		$("#list3").removeClass('selected');
		$("#list4").removeClass('selected');
		$("#list5").removeClass('selected');
		$("#list6").removeClass('selected');
		$("#list7").removeClass('selected');
		$("#list8").removeClass('selected');
		$("#list9").removeClass('selected');
		$("#list10").removeClass('selected');
		$("#list11").removeClass('selected');
		$("#list12").removeClass('selected');
		$("#list-1").addClass('disable');
		$("#list-2").addClass('disable');
		$("#list-3").addClass('disable');
		$("#list-4").addClass('disable');
		$("#list-5").addClass('disable');
		$("#list-6").addClass('disable');
		$("#list-7").addClass('disable');
		$("#list-8").addClass('disable');
		$("#list-9").addClass('disable');
		$("#list-10").addClass('disable');
		$("#list-11").addClass('disable');
		$("#list-12").addClass('disable');
		$("#swiper1").addClass('swiper_none');
		$("#swiper2").addClass('swiper_none');
		$("#swiper3").addClass('swiper_none');
		$("#swiper4").addClass('swiper_none');
		$("#swiper5").addClass('swiper_none');
		$("#swiper6").addClass('swiper_none');
		$("#swiper7").addClass('swiper_none');
		$("#swiper8").addClass('swiper_none');
		$("#swiper9").addClass('swiper_none');
		$("#swiper10").addClass('swiper_none');
		$("#swiper11").addClass('swiper_none');
		$("#swiper12").addClass('swiper_none');
	}
	//swiper
	 var swiper = new Swiper('.swiper-container', {
	      spaceBetween: 30,
	      centeredSlides: true,
	      autoplay: {
	        delay: 2500,
	        disableOnInteraction: false,
	      },
	      pagination: {
	        el: '.swiper-pagination',
	        clickable: true,
	      },
	      navigation: {
	        nextEl: '.swiper-button-next',
	        prevEl: '.swiper-button-prev',
	      },
	    });
	/* $("#btn1-1").click(function(){
		$(this).addClass('category-filter-bar-button--modal-open');
	}); */
	

	$("#btn1-1").click(function(){
		var btn_id = $("#btn1-1").attr('id');
		btn_filter(btn_id);
	});
	$("#btn1-2").click(function(){
		var btn_id = $("#btn1-2").attr('id');
		btn_filter(btn_id);
	});
	$("#btn1-3").click(function(){
		var btn_id = $("#btn1-3").attr('id');
		btn_filter(btn_id);
	});
	$("#btn1-4").click(function(){
		var btn_id = $("#btn1-4").attr('id');
		btn_filter(btn_id);
	});
	$("#btn1-5").click(function(){
		var btn_id = $("#btn1-5").attr('id');
		btn_filter(btn_id);
	});
	$("#btn1-6").click(function(){
		var btn_id = $("#btn1-6").attr('id');
		btn_filter(btn_id);
	});
	$("#btn1-7").click(function(){
		var btn_id = $("#btn1-7").attr('id');
		btn_filter(btn_id);
	});
	
	function btn_filter(btn_id) {
		if( $("#"+btn_id).hasClass("category-filter-bar-button")) {
			$("#"+btn_id).addClass("category-filter-bar-button--modal-open");
			$("#"+btn_id).removeClass("category-filter-bar-button");
		} else {
			$("#"+btn_id).addClass("category-filter-bar-button");
			$("#"+btn_id).removeClass("category-filter-bar-button--modal-open");
		} 
	}
	
	$("#pro-img-1").click(function(){
		if($(this).hasClass("production-item-scrap-badge")) {
			$("#pro-img-1").addClass("production-item-scrap-badge--active");
			$("#pro-img-1").removeClass("production-item-scrap-badge");
		} else {
			$("#pro-img-1").addClass("production-item-scrap-badge");
			$("#pro-img-1").removeClass("production-item-scrap-badge--active");
		}
	});
});
</script>
</head>
<body>
<div class="all">
<div class="category-feed-container">
	<div class="category-feed-wrap container">
		<div class="category-feed row">
			<div class="category-feed_side-bar col-12 col-md-3">
				<section class="commerce-category-list">
					<ul class="commerce-category-list__others">
						<li class="commerce-category-list__others__item " id="list1"><a href="?category=0">가구</a></li>
						<li class="commerce-category-list__others__item" id="list2"><a href="?category=1">홈데코/조명</a></li>
						<li class="commerce-category-list__others__item" id="list3"><a href="?category=2">가전</a></li>
						<li class="commerce-category-list__others__item" id="list4"><a href="?category=3">수납/정리</a></li>
						<li class="commerce-category-list__others__item" id="list5"><a href="?category=4">생활</a></li>
						<li class="commerce-category-list__others__item" id="list6"><a href="?category=5">주방</a></li>
						<li class="commerce-category-list__others__item" id="list7"><a href="?category=6">DIY/공구</a></li>
						<li class="commerce-category-list__others__item" id="list8"><a href="?category=7">인테리어시공</a></li>
						<li class="commerce-category-list__others__item" id="list9"><a href="?category=8">반려동물</a></li>
						<li class="commerce-category-list__others__item" id="list10"><a href="?category=9">캠핑용품</a></li>
						<li class="commerce-category-list__others__item" id="list11"><a href="?category=10">홈트레이닝</a></li>
						<li class="commerce-category-list__others__item" id="list12"><a href="?category=11">패브릭</a></li>
					</ul>
				</section>
			</div> <!-- category-feed_side-bar  -->
			<div class="category-feed__content col-12 col-md-9">
				<div class="commerce-category-header category-feed__content__header">
					<ol class="commerce-category-breadcrumb disable" id="list-1">
						<li class="commerce-category-breadcrumb__entry"><a class="link" href="?category=0" id="link1" >가구</a></li>
					</ol>
					<ol class="commerce-category-breadcrumb disable" id="list-2">
						<li class="commerce-category-breadcrumb__entry"><a class="link " href="?category=1" id="link2" >홈데코/조명</a></li>
					</ol>
					<ol class="commerce-category-breadcrumb disable" id="list-3">
						<li class="commerce-category-breadcrumb__entry"><a class="link " href="?category=2" >가전</a></li>
					</ol>
					<ol class="commerce-category-breadcrumb disable" id="list-4">
						<li class="commerce-category-breadcrumb__entry"><a class="link " href="?category=3" >수납/정리</a></li>
					</ol>
					<ol class="commerce-category-breadcrumb disable" id="list-5">
						<li class="commerce-category-breadcrumb__entry"><a class="link " href="?category=4" >생활</a></li>
					</ol>
					<ol class="commerce-category-breadcrumb disable" id="list-6">
						<li class="commerce-category-breadcrumb__entry"><a class="link " href="?category=5" >주방</a></li>
					</ol>
					<ol class="commerce-category-breadcrumb disable" id="list-7">
						<li class="commerce-category-breadcrumb__entry"><a class="link " href="?category=6" >DIY/공구</a></li>
					</ol>
					<ol class="commerce-category-breadcrumb disable" id="list-8">
						<li class="commerce-category-breadcrumb__entry"><a class="link " href="?category=7" >인테리어시공</a></li>
					</ol>
					<ol class="commerce-category-breadcrumb disable" id="list-9">
						<li class="commerce-category-breadcrumb__entry"><a class="link " href="?category=8" >반려동물</a></li>
					</ol>
					<ol class="commerce-category-breadcrumb disable" id="list-10">
						<li class="commerce-category-breadcrumb__entry"><a class="link " href="?category=9" >캠핑용품</a></li>
					</ol>
					<ol class="commerce-category-breadcrumb disable" id="list-11">
						<li class="commerce-category-breadcrumb__entry"><a class="link " href="?category=10" >홈트레이닝</a></li>
					</ol>
					<ol class="commerce-category-breadcrumb disable" id="list-12">
						<li class="commerce-category-breadcrumb__entry"><a class="link " href="?category=11" >패브릭</a></li>
					</ol>
							<div class="swiper-container swiper_none" id="swiper1">
							    <div class="swiper-wrapper">
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list1_swiper1.webp'); 
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list1_swiper2.webp');
							      		background-repeat:no-repeat;"></div>
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination "></div>
							    <!-- Add Arrows -->
							    <div class="category-feed-banner__banners__control-console__ui">
							       <div class="swiper-button-next"></div>
							       <div class="swiper-button-prev"></div>
								 </div>
							 </div>
							<div class="swiper-container swiper_none" id="swiper2">
							    <div class="swiper-wrapper " >
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list3_swiper1.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list3_swiper2.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list3_swiper3.webp');
							      		background-repeat:no-repeat;"></div>
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination"></div>
							    <!-- Add Arrows -->
							    <div class="category-feed-banner__banners__control-console__ui">
							       <div class="swiper-button-next"></div>
							       <div class="swiper-button-prev"></div>
								 </div>
							 </div>
							<div class="swiper-container swiper_none" id="swiper3">
							    <div class="swiper-wrapper " >
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list4_swiper1.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list4_swiper2.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list4_swiper3.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list4_swiper4.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list4_swiper5.webp');
							      		background-repeat:no-repeat;"></div>
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination"></div>
							    <!-- Add Arrows -->
							    <div class="category-feed-banner__banners__control-console__ui">
							       <div class="swiper-button-next"></div>
							       <div class="swiper-button-prev"></div>
								 </div>
							 </div>
							<div class="swiper-container swiper_none" id="swiper4">
							    <div class="swiper-wrapper" >
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list5_swiper1.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list5_swiper2.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list5_swiper3.webp');
							      		background-repeat:no-repeat;"></div>
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination"></div>
							    <!-- Add Arrows -->
							    <div class="category-feed-banner__banners__control-console__ui">
							       <div class="swiper-button-next"></div>
							       <div class="swiper-button-prev"></div>
								 </div>
							 </div>
							<div class="swiper-container swiper_none" id="swiper5">
							    <div class="swiper-wrapper" >
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list6_swiper1.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list6_swiper2.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list6_swiper3.webp');
							      		background-repeat:no-repeat;"></div>
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination"></div>
							    <!-- Add Arrows -->
							    <div class="category-feed-banner__banners__control-console__ui">
							       <div class="swiper-button-next"></div>
							       <div class="swiper-button-prev"></div>
								 </div>
							 </div>
							<div class="swiper-container swiper_none" id="swiper6">
							    <div class="swiper-wrapper" >
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list7_swiper1.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list7_swiper2.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list7_swiper3.webp');
							      		background-repeat:no-repeat;"></div>
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination"></div>
							    <!-- Add Arrows -->
							    <div class="category-feed-banner__banners__control-console__ui">
							       <div class="swiper-button-next"></div>
							       <div class="swiper-button-prev"></div>
								 </div>
							 </div>
							<div class="swiper-container swiper_none" id="swiper7">
							    <div class="swiper-wrapper" >
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list8_swiper1.webp');
							      		background-repeat:no-repeat;"></div>
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination"></div>
							    <!-- Add Arrows -->
							    <div class="category-feed-banner__banners__control-console__ui">
							       <div class="swiper-button-next"></div>
							       <div class="swiper-button-prev"></div>
								 </div>
							 </div>
							<div class="swiper-container swiper_none" id="swiper8">
							    <div class="swiper-wrapper" >
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list9_swiper1.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list9_swiper2.webp');
							      		background-repeat:no-repeat;"></div>
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination"></div>
							    <!-- Add Arrows -->
							    <div class="category-feed-banner__banners__control-console__ui">
							       <div class="swiper-button-next"></div>
							       <div class="swiper-button-prev"></div>
								 </div>
							 </div>
							<div class="swiper-container swiper_none" id="swiper9">
							    <div class="swiper-wrapper" >
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list10_swiper1.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list10_swiper2.webp');
							      		background-repeat:no-repeat;"></div>
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination"></div>
							    <!-- Add Arrows -->
							    <div class="category-feed-banner__banners__control-console__ui">
							       <div class="swiper-button-next"></div>
							       <div class="swiper-button-prev"></div>
								 </div>
							 </div>
							<div class="swiper-container swiper_none" id="swiper10">
							    <div class="swiper-wrapper" >
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list3_swiper1.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list4_swiper2.webp');
							      		background-repeat:no-repeat;"></div>
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination"></div>
							    <!-- Add Arrows -->
							    <div class="category-feed-banner__banners__control-console__ui">
							       <div class="swiper-button-next"></div>
							       <div class="swiper-button-prev"></div>
								 </div>
							 </div>
							<div class="swiper-container swiper_none" id="swiper11">
							    <div class="swiper-wrapper" >
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list5_swiper1.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list6_swiper2.webp');
							      		background-repeat:no-repeat;"></div>
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination"></div>
							    <!-- Add Arrows -->
							    <div class="category-feed-banner__banners__control-console__ui">
							       <div class="swiper-button-next"></div>
							       <div class="swiper-button-prev"></div>
								 </div>
							 </div>
							<div class="swiper-container swiper_none" id="swiper12">
							    <div class="swiper-wrapper" >
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list2_swiper1.webp');
							      		background-repeat:no-repeat;"></div>
							      <div class="swiper-slide" style="background-image: url('http://localhost:9000/myhouse/images/list2_swiper2.webp');
							      		background-repeat:no-repeat;"></div>
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination"></div>
							    <!-- Add Arrows -->
							    <div class="category-feed-banner__banners__control-console__ui">
							       <div class="swiper-button-next"></div>
							       <div class="swiper-button-prev"></div>
								 </div>
							 </div>
				</div> <!-- commerce-category-header category-feed__content__header -->
				<div class="category-feed__content__filter">
					<div class="filter">
						<div class="filter-bar category-feed-filter-bar">
							<div class="category-filter-bar-control-list">
								<ul class="category-filter-bar-control-list__left">
									<li class="category-filter-bar-control-list__item">
										<div class="drop-down panel-drop-down">
											<button class="category-filter-bar-button" type="button" id="btn1-1">
												우드톤<svg class="chevron" width="12" height="12" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><path d="M0 0h12v12H0z"></path><path fill="currentColor" fill-rule="nonzero" d="M2.154 3L1 4.125 6 9l5-4.875L9.846 3 6 6.75z"></path></g></svg>
											</button>
										</div>
										<div>
											<div class="popout popout--prepared popout--axis-1 popout--dir-2 popout--cross-dir-0" data-popout="true" style="position: absolute; z-index: 1000; left: 334.75px; top: 968px;">
												<div class="animated-popout drop-down__content panel-drop-down__content property-filter-bar-drop-down open open-active">
													<div class="drop-down-panel" data-panel-title="우드톤" data-panel-parents="">
														<ul class="property-filter-panel-entry-list wide">
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item selected" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz" value="" checked="">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">밝은 톤</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item selected" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz" value="" checked="">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">중간 톤</span></div></div></button></li>
															<li class="property-filter-panel-entry-list__item-wrap">
																<button class="property-filter-panel-entry-list__item selected" type="button">
																	<div class="property-filter-panel-entry-list__item__header">
																		<div class="property-filter-panel-entry-list__item__group">
																			<div class="_3zqA8 input-type">
																				<input type="checkbox" class="_3UImz" value="" checked="">
																				<span class="_2mDYR">
																					<svg width="1em" height="1em" viewBox="0 0 16 16" class="_2UftR"><path fill="currentColor" d="M6.185 10.247l7.079-7.297 1.435 1.393-8.443 8.703L1.3 8.432l1.363-1.464z"></path></svg></span></div>
																			<span class="property-filter-panel-entry-list__item__title">어두운 톤</span></div></div></button></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li class="category-filter-bar-control-list__item">
										<div class="drop-down panel-drop-down">
											<button class="category-filter-bar-button" type="button" id="btn1-2">
											색상<svg class="chevron" width="12" height="12" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><path d="M0 0h12v12H0z"></path><path fill="currentColor" fill-rule="nonzero" d="M2.154 3L1 4.125 6 9l5-4.875L9.846 3 6 6.75z"></path></g></svg>
											</button>
										</div>
									</li>
									<li class="category-filter-bar-control-list__item">
										<div class="drop-down panel-drop-down">
											<button class="category-filter-bar-button" type="button" id="btn1-3">
											소재<svg class="chevron" width="12" height="12" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><path d="M0 0h12v12H0z"></path><path fill="currentColor" fill-rule="nonzero" d="M2.154 3L1 4.125 6 9l5-4.875L9.846 3 6 6.75z"></path></g></svg>
											</button>
										</div>
									</li>
									<li class="category-filter-bar-control-list__item">
										<div class="drop-down panel-drop-down">
											<button class="category-filter-bar-button" type="button" id="btn1-4">
											원목 수종<svg class="chevron" width="12" height="12" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><path d="M0 0h12v12H0z"></path><path fill="currentColor" fill-rule="nonzero" d="M2.154 3L1 4.125 6 9l5-4.875L9.846 3 6 6.75z"></path></g></svg>
											</button>
										</div>
									</li>
									<li class="category-filter-bar-control-list__item">
										<div class="drop-down panel-drop-down">
											<button class="category-filter-bar-button" type="button" id="btn1-5">
											사용 인원<svg class="chevron" width="12" height="12" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><path d="M0 0h12v12H0z"></path><path fill="currentColor" fill-rule="nonzero" d="M2.154 3L1 4.125 6 9l5-4.875L9.846 3 6 6.75z"></path></g></svg>
											</button>
										</div>
									</li>
									<li class="category-filter-bar-control-list__item">
										<div class="drop-down panel-drop-down">
											<button class="category-filter-bar-button" type="button" id="btn1-6">
											가격<svg class="chevron" width="12" height="12" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><path d="M0 0h12v12H0z"></path><path fill="currentColor" fill-rule="nonzero" d="M2.154 3L1 4.125 6 9l5-4.875L9.846 3 6 6.75z"></path></g></svg>
											</button>
										</div>
									</li>
									<li class="category-filter-bar-control-list__item">
										<div class="drop-down panel-drop-down">
											<button class="category-filter-bar-button" type="button" id="btn1-7">
											배송<svg class="chevron" width="12" height="12" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><path d="M0 0h12v12H0z"></path><path fill="currentColor" fill-rule="nonzero" d="M2.154 3L1 4.125 6 9l5-4.875L9.846 3 6 6.75z"></path></g></svg>
											</button>
										</div>
									</li>
								</ul>
							</div>
							<div class="category-filter-bar-tag-list-placeholder"></div>
							<div class="category-feed-filter-secondary">
								<p class="category-feed-filter-secondary__summary">전체 77,485개</p>
							</div>
						</div> <!-- filter-bar category-feed-filter-bar -->
					</div> <!-- filter -->
				</div> <!-- category-feed__content__filter -->
				<div class="virtualized-list category-feed__content__content row" style="padding-top: 0px; padding-bottom: 4956px; transform: translateY(0px);">
					<div class="category-feed__content__item-wrap col-6 col-lg-4">
						<article class="production-item" id="pro-1">
							<a class="production-item__overlay" href="#"></a>
							<div class="production-item-image production-item__image">
								<img class="image" src="http://localhost:9000/myhouse/images/list1_image1.jpg">
								<button class="production-item-scrap-badge" type="button" id="pro-img-1">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="inactive-icon"><defs><path id="scrap-icon-7-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path><filter id="scrap-icon-7-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset><feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur><feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite><feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix></filter><filter id="scrap-icon-7-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur><feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset><feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite><feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix></filter></defs><g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)"><use fill="#000" filter="url(#scrap-icon-7-a)" href="#scrap-icon-7-b"></use><use fill="#FFF" fill-opacity=".4" href="#scrap-icon-7-b"></use><use fill="#000" filter="url(#scrap-icon-7-c)" href="#scrap-icon-7-b"></use><path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path></g></svg>
									<svg class="active-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="#35C5F0" fill-rule="nonzero" d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path></svg>
								</button>
								<div class="production-item-image__dark-overlay"></div>
							</div>
							<div class="production-item__content">
								<h1 class="production-item__header">
									<span class="production-item__header__brand">메이크가구</span>
									<span class="production-item__header__name">다양한 컬러 틈새/와이드 서랍장 화장대 6종</span>
								</h1>
								<span class="production-item-price">
									<span class="production-item-price__rate">39<span class="percentage">%</span></span>
									<span class="production-item-price__price">77,900 외</span>
								</span>
								<p class="production-item-stats production-item-stats--review">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
									<strong class="avg">4.6</strong>
									리뷰 185
								</p>
								<span class="production-item-badge-list">
									<svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet"><rect width="30" height="20" fill="#F77" rx="4"></rect><path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg>
								</span>
							</div>
						</article>
					</div> <!-- category-feed__content__item-wrap -->
					<div class="category-feed__content__item-wrap col-6 col-lg-4">
						<article class="production-item" id="pro-2">
							<a class="production-item__overlay" href="#"></a>
							<div class="production-item-image production-item__image">
								<img class="image" src="http://localhost:9000/myhouse/images/list1_image1.jpg">
								<button class="production-item-scrap-badge" type="button" id="pro-img-1">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="inactive-icon"><defs><path id="scrap-icon-7-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path><filter id="scrap-icon-7-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset><feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur><feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite><feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix></filter><filter id="scrap-icon-7-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur><feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset><feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite><feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix></filter></defs><g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)"><use fill="#000" filter="url(#scrap-icon-7-a)" href="#scrap-icon-7-b"></use><use fill="#FFF" fill-opacity=".4" href="#scrap-icon-7-b"></use><use fill="#000" filter="url(#scrap-icon-7-c)" href="#scrap-icon-7-b"></use><path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path></g></svg>
									<svg class="active-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="#35C5F0" fill-rule="nonzero" d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path></svg>
								</button>
								<div class="production-item-image__dark-overlay"></div>
							</div>
							<div class="production-item__content">
								<h1 class="production-item__header">
									<span class="production-item__header__brand">메이크가구</span>
									<span class="production-item__header__name">다양한 컬러 틈새/와이드 서랍장 화장대 6종</span>
								</h1>
								<span class="production-item-price">
									<span class="production-item-price__rate">39<span class="percentage">%</span></span>
									<span class="production-item-price__price">77,900 외</span>
								</span>
								<p class="production-item-stats production-item-stats--review">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
									<strong class="avg">4.6</strong>
									리뷰 185
								</p>
								<span class="production-item-badge-list">
									<svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet"><rect width="30" height="20" fill="#F77" rx="4"></rect><path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg>
								</span>
							</div>
						</article>
					</div> <!-- category-feed__content__item-wrap -->
					<div class="category-feed__content__item-wrap col-6 col-lg-4">
						<article class="production-item" id="pro-3">
							<a class="production-item__overlay" href="#"></a>
							<div class="production-item-image production-item__image">
								<img class="image" src="http://localhost:9000/myhouse/images/list1_image1.jpg">
								<button class="production-item-scrap-badge" type="button" id="pro-img-1">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="inactive-icon"><defs><path id="scrap-icon-7-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path><filter id="scrap-icon-7-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset><feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur><feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite><feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix></filter><filter id="scrap-icon-7-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur><feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset><feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite><feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix></filter></defs><g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)"><use fill="#000" filter="url(#scrap-icon-7-a)" href="#scrap-icon-7-b"></use><use fill="#FFF" fill-opacity=".4" href="#scrap-icon-7-b"></use><use fill="#000" filter="url(#scrap-icon-7-c)" href="#scrap-icon-7-b"></use><path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path></g></svg>
									<svg class="active-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="#35C5F0" fill-rule="nonzero" d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path></svg>
								</button>
								<div class="production-item-image__dark-overlay"></div>
							</div>
							<div class="production-item__content">
								<h1 class="production-item__header">
									<span class="production-item__header__brand">메이크가구</span>
									<span class="production-item__header__name">다양한 컬러 틈새/와이드 서랍장 화장대 6종</span>
								</h1>
								<span class="production-item-price">
									<span class="production-item-price__rate">39<span class="percentage">%</span></span>
									<span class="production-item-price__price">77,900 외</span>
								</span>
								<p class="production-item-stats production-item-stats--review">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
									<strong class="avg">4.6</strong>
									리뷰 185
								</p>
								<span class="production-item-badge-list">
									<svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet"><rect width="30" height="20" fill="#F77" rx="4"></rect><path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg>
								</span>
							</div>
						</article>
					</div> <!-- category-feed__content__item-wrap -->
					<div class="category-feed__content__item-wrap col-6 col-lg-4">
						<article class="production-item" id="pro-1">
							<a class="production-item__overlay" href="#"></a>
							<div class="production-item-image production-item__image">
								<img class="image" src="http://localhost:9000/myhouse/images/list1_image1.jpg">
								<button class="production-item-scrap-badge" type="button" id="pro-img-1">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="inactive-icon"><defs><path id="scrap-icon-7-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path><filter id="scrap-icon-7-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset><feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur><feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite><feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix></filter><filter id="scrap-icon-7-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur><feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset><feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite><feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix></filter></defs><g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)"><use fill="#000" filter="url(#scrap-icon-7-a)" href="#scrap-icon-7-b"></use><use fill="#FFF" fill-opacity=".4" href="#scrap-icon-7-b"></use><use fill="#000" filter="url(#scrap-icon-7-c)" href="#scrap-icon-7-b"></use><path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path></g></svg>
									<svg class="active-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="#35C5F0" fill-rule="nonzero" d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path></svg>
								</button>
								<div class="production-item-image__dark-overlay"></div>
							</div>
							<div class="production-item__content">
								<h1 class="production-item__header">
									<span class="production-item__header__brand">메이크가구</span>
									<span class="production-item__header__name">다양한 컬러 틈새/와이드 서랍장 화장대 6종</span>
								</h1>
								<span class="production-item-price">
									<span class="production-item-price__rate">39<span class="percentage">%</span></span>
									<span class="production-item-price__price">77,900 외</span>
								</span>
								<p class="production-item-stats production-item-stats--review">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
									<strong class="avg">4.6</strong>
									리뷰 185
								</p>
								<span class="production-item-badge-list">
									<svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet"><rect width="30" height="20" fill="#F77" rx="4"></rect><path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg>
								</span>
							</div>
						</article>
					</div> <!-- category-feed__content__item-wrap -->
					<div class="category-feed__content__item-wrap col-6 col-lg-4">
						<article class="production-item" id="pro-1">
							<a class="production-item__overlay" href="#"></a>
							<div class="production-item-image production-item__image">
								<img class="image" src="http://localhost:9000/myhouse/images/list1_image1.jpg">
								<button class="production-item-scrap-badge" type="button" id="pro-img-1">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="inactive-icon"><defs><path id="scrap-icon-7-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path><filter id="scrap-icon-7-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset><feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur><feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite><feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix></filter><filter id="scrap-icon-7-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur><feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset><feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite><feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix></filter></defs><g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)"><use fill="#000" filter="url(#scrap-icon-7-a)" href="#scrap-icon-7-b"></use><use fill="#FFF" fill-opacity=".4" href="#scrap-icon-7-b"></use><use fill="#000" filter="url(#scrap-icon-7-c)" href="#scrap-icon-7-b"></use><path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path></g></svg>
									<svg class="active-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="#35C5F0" fill-rule="nonzero" d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path></svg>
								</button>
								<div class="production-item-image__dark-overlay"></div>
							</div>
							<div class="production-item__content">
								<h1 class="production-item__header">
									<span class="production-item__header__brand">메이크가구</span>
									<span class="production-item__header__name">다양한 컬러 틈새/와이드 서랍장 화장대 6종</span>
								</h1>
								<span class="production-item-price">
									<span class="production-item-price__rate">39<span class="percentage">%</span></span>
									<span class="production-item-price__price">77,900 외</span>
								</span>
								<p class="production-item-stats production-item-stats--review">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
									<strong class="avg">4.6</strong>
									리뷰 185
								</p>
								<span class="production-item-badge-list">
									<svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet"><rect width="30" height="20" fill="#F77" rx="4"></rect><path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg>
								</span>
							</div>
						</article>
					</div> <!-- category-feed__content__item-wrap -->
					<div class="category-feed__content__item-wrap col-6 col-lg-4">
						<article class="production-item" id="pro-1">
							<a class="production-item__overlay" href="#"></a>
							<div class="production-item-image production-item__image">
								<img class="image" src="http://localhost:9000/myhouse/images/list1_image1.jpg">
								<button class="production-item-scrap-badge" type="button" id="pro-img-1">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="inactive-icon"><defs><path id="scrap-icon-7-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path><filter id="scrap-icon-7-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset><feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur><feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite><feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix></filter><filter id="scrap-icon-7-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur><feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset><feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite><feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix></filter></defs><g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)"><use fill="#000" filter="url(#scrap-icon-7-a)" href="#scrap-icon-7-b"></use><use fill="#FFF" fill-opacity=".4" href="#scrap-icon-7-b"></use><use fill="#000" filter="url(#scrap-icon-7-c)" href="#scrap-icon-7-b"></use><path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path></g></svg>
									<svg class="active-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="#35C5F0" fill-rule="nonzero" d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path></svg>
								</button>
								<div class="production-item-image__dark-overlay"></div>
							</div>
							<div class="production-item__content">
								<h1 class="production-item__header">
									<span class="production-item__header__brand">메이크가구</span>
									<span class="production-item__header__name">다양한 컬러 틈새/와이드 서랍장 화장대 6종</span>
								</h1>
								<span class="production-item-price">
									<span class="production-item-price__rate">39<span class="percentage">%</span></span>
									<span class="production-item-price__price">77,900 외</span>
								</span>
								<p class="production-item-stats production-item-stats--review">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
									<strong class="avg">4.6</strong>
									리뷰 185
								</p>
								<span class="production-item-badge-list">
									<svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet"><rect width="30" height="20" fill="#F77" rx="4"></rect><path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg>
								</span>
							</div>
						</article>
					</div> <!-- category-feed__content__item-wrap -->
					<div class="category-feed__content__item-wrap col-6 col-lg-4">
						<article class="production-item" id="pro-1">
							<a class="production-item__overlay" href="#"></a>
							<div class="production-item-image production-item__image">
								<img class="image" src="http://localhost:9000/myhouse/images/list1_image1.jpg">
								<button class="production-item-scrap-badge" type="button" id="pro-img-1">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="inactive-icon"><defs><path id="scrap-icon-7-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path><filter id="scrap-icon-7-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset><feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur><feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite><feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix></filter><filter id="scrap-icon-7-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur><feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset><feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite><feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix></filter></defs><g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)"><use fill="#000" filter="url(#scrap-icon-7-a)" href="#scrap-icon-7-b"></use><use fill="#FFF" fill-opacity=".4" href="#scrap-icon-7-b"></use><use fill="#000" filter="url(#scrap-icon-7-c)" href="#scrap-icon-7-b"></use><path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path></g></svg>
									<svg class="active-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="#35C5F0" fill-rule="nonzero" d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path></svg>
								</button>
								<div class="production-item-image__dark-overlay"></div>
							</div>
							<div class="production-item__content">
								<h1 class="production-item__header">
									<span class="production-item__header__brand">메이크가구</span>
									<span class="production-item__header__name">다양한 컬러 틈새/와이드 서랍장 화장대 6종</span>
								</h1>
								<span class="production-item-price">
									<span class="production-item-price__rate">39<span class="percentage">%</span></span>
									<span class="production-item-price__price">77,900 외</span>
								</span>
								<p class="production-item-stats production-item-stats--review">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
									<strong class="avg">4.6</strong>
									리뷰 185
								</p>
								<span class="production-item-badge-list">
									<svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet"><rect width="30" height="20" fill="#F77" rx="4"></rect><path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg>
								</span>
							</div>
						</article>
					</div> <!-- category-feed__content__item-wrap -->
					<div class="category-feed__content__item-wrap col-6 col-lg-4">
						<article class="production-item" id="pro-1">
							<a class="production-item__overlay" href="#"></a>
							<div class="production-item-image production-item__image">
								<img class="image" src="http://localhost:9000/myhouse/images/list1_image1.jpg">
								<button class="production-item-scrap-badge" type="button" id="pro-img-1">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="inactive-icon"><defs><path id="scrap-icon-7-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path><filter id="scrap-icon-7-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset><feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur><feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite><feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix></filter><filter id="scrap-icon-7-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur><feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset><feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite><feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix></filter></defs><g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)"><use fill="#000" filter="url(#scrap-icon-7-a)" href="#scrap-icon-7-b"></use><use fill="#FFF" fill-opacity=".4" href="#scrap-icon-7-b"></use><use fill="#000" filter="url(#scrap-icon-7-c)" href="#scrap-icon-7-b"></use><path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path></g></svg>
									<svg class="active-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="#35C5F0" fill-rule="nonzero" d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path></svg>
								</button>
								<div class="production-item-image__dark-overlay"></div>
							</div>
							<div class="production-item__content">
								<h1 class="production-item__header">
									<span class="production-item__header__brand">메이크가구</span>
									<span class="production-item__header__name">다양한 컬러 틈새/와이드 서랍장 화장대 6종</span>
								</h1>
								<span class="production-item-price">
									<span class="production-item-price__rate">39<span class="percentage">%</span></span>
									<span class="production-item-price__price">77,900 외</span>
								</span>
								<p class="production-item-stats production-item-stats--review">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
									<strong class="avg">4.6</strong>
									리뷰 185
								</p>
								<span class="production-item-badge-list">
									<svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet"><rect width="30" height="20" fill="#F77" rx="4"></rect><path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg>
								</span>
							</div>
						</article>
					</div> <!-- category-feed__content__item-wrap -->
					<div class="category-feed__content__item-wrap col-6 col-lg-4">
						<article class="production-item" id="pro-1">
							<a class="production-item__overlay" href="#"></a>
							<div class="production-item-image production-item__image">
								<img class="image" src="http://localhost:9000/myhouse/images/list1_image1.jpg">
								<button class="production-item-scrap-badge" type="button" id="pro-img-1">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="inactive-icon"><defs><path id="scrap-icon-7-b" d="M12.472 6.93l7.056-3.811A1 1 0 0 1 21 4.002v15.496c0 .83-.672 1.502-1.5 1.502h-15c-.828 0-1.5-.673-1.5-1.502V4.002a1 1 0 0 1 1.472-.883l7.056 3.811a.999.999 0 0 0 .944 0z"></path><filter id="scrap-icon-7-a" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset><feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="1.5"></feGaussianBlur><feComposite in="shadowBlurOuter1" in2="SourceAlpha" operator="out" result="shadowBlurOuter1"></feComposite><feColorMatrix in="shadowBlurOuter1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.26 0"></feColorMatrix></filter><filter id="scrap-icon-7-c" width="150%" height="150%" x="-25%" y="-25%" filterUnits="objectBoundingBox"><feGaussianBlur in="SourceAlpha" result="shadowBlurInner1" stdDeviation="1.5"></feGaussianBlur><feOffset in="shadowBlurInner1" result="shadowOffsetInner1"></feOffset><feComposite in="shadowOffsetInner1" in2="SourceAlpha" k2="-1" k3="1" operator="arithmetic" result="shadowInnerInner1"></feComposite><feColorMatrix in="shadowInnerInner1" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0"></feColorMatrix></filter></defs><g fill="none" fill-rule="nonzero" transform="matrix(1 0 0 -1 0 24)"><use fill="#000" filter="url(#scrap-icon-7-a)" href="#scrap-icon-7-b"></use><use fill="#FFF" fill-opacity=".4" href="#scrap-icon-7-b"></use><use fill="#000" filter="url(#scrap-icon-7-c)" href="#scrap-icon-7-b"></use><path stroke="#FFF" d="M12.71 7.37h-.002a1.5 1.5 0 0 1-1.417 0L4.236 3.56a.499.499 0 0 0-.736.442v15.496c0 .553.448 1.002 1 1.002h15c.552 0 1-.449 1-1.002V4.002a.499.499 0 0 0-.734-.443l-7.057 3.81zm-.475-.88h-.001z"></path></g></svg>
									<svg class="active-icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="#35C5F0" fill-rule="nonzero" d="M12.472 17.07a.999.999 0 0 0-.944 0l-7.056 3.811A.999.999 0 0 1 3 19.998V4.502C3 3.672 3.672 3 4.5 3h15c.828 0 1.5.673 1.5 1.502v15.496a1 1 0 0 1-1.472.883l-7.056-3.811z"></path></svg>
								</button>
								<div class="production-item-image__dark-overlay"></div>
							</div>
							<div class="production-item__content">
								<h1 class="production-item__header">
									<span class="production-item__header__brand">메이크가구</span>
									<span class="production-item__header__name">다양한 컬러 틈새/와이드 서랍장 화장대 6종</span>
								</h1>
								<span class="production-item-price">
									<span class="production-item-price__rate">39<span class="percentage">%</span></span>
									<span class="production-item-price__price">77,900 외</span>
								</span>
								<p class="production-item-stats production-item-stats--review">
									<svg class="icon" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" fill-rule="evenodd" d="M12 19.72l-5.677 2.405c-.76.322-1.318-.094-1.247-.906l.533-6.142-4.042-4.656c-.54-.624-.317-1.283.477-1.467l6.006-1.39L11.23 2.28c.426-.707 1.122-.699 1.542 0l3.179 5.282 6.006 1.391c.805.187 1.011.851.477 1.467l-4.042 4.656.533 6.142c.072.822-.497 1.224-1.247.906L12 19.72z"></path></svg>
									<strong class="avg">4.6</strong>
									리뷰 185
								</p>
								<span class="production-item-badge-list">
									<svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet"><rect width="30" height="20" fill="#F77" rx="4"></rect><path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg>
								</span>
							</div>
						</article>
					</div> <!-- category-feed__content__item-wrap -->
				</div> <!-- virtualized-list category-feed__content__content row  -->
			</div> <!-- category-feed__content -->
		</div> <!-- category-feed -->
	</div>
</div>
</div>

</body>
</html>