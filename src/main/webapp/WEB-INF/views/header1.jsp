<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My House</title>
<style>
	* {
		box-sizing: border-box;
	}
	header{
		
		border-bottom: 1px solid #ededed;
	}
	body, div, ul, li, h1, form, fieldset, p, button {
	    margin: 0px;
	    padding: 0px;
	    font-size: 14px;
	    color: #111;
	    font-family: 'Noto Sans KR';
	    font-weight: 400;
	}
	.container{
		width: 100%;
		padding: 10px 40px;
	}
	.logo{
		display:inline-block;
		position: static;
	}
	.logo img{
		width: 180px;
    	height: 60px;
    	padding:4px;
    	margin-bottom: -20px;
	}
	.hd_bar {
		float: right;
		display: inline-block;
		margin: 0 0 -10px 0;
	}
	fieldset {
	    margin-inline-start: 2px;
	    margin-inline-end: 2px;
	    padding-block-start: 0.35em;
	    padding-inline-start: 0.75em;
	    padding-inline-end: 0.75em;
	    padding-block-end: 0.625em;
	    min-inline-size: min-content;
	    border: 0 none;
	}
	.hd_search_box {	
	    width: 350px;
	    height: 40px;
	    content: '';
	    clear: both;
	    border-radius: 4px;
	    line-height: 20px;
	    background-color: #fff;
	    border: 1px solid #dbdbdb;
	}
	/* .hd_search_box::after {
	    content: '';
	    display: block;
	    position: relative;
	    width: 98%;
	    height: 3px;
	    background: gray;
	    margin-top: -5px;
	} */
	.hd_search_box .inp_sch {
	    float: left;
	    display: block;
	    /* width: calc(100% - 30px); */
	    height:20px;
	    border: none;
	    background-color:white;
	    margin:5px 0 0 5px;
	   	width:260px;
	   	font-size: 15px;
	    color: #424242;
	}
	.hd_search_box .inp_sch:focus {
	    float: left;
	    display: block;
	    /* width: calc(100% - 30px); */
	    height:20px;
	    border: none;
	    background-color:white;
	    margin:5px 0 0 5px;
	   	width:260px;
	   	outline:none;
	   	  
	}
	.hd_search_box .btn_sch {
	    float: left;
	    width: 30px;
	    height: 20px;
	    background: url(http://localhost:9000/myhouse/images/search.png) no-repeat center/15px;
	   	border: none;
	    cursor: pointer;
	    margin-top:4px;
	}
	.hd_search_box .btn_sch:focus {
	    float: right;
	    width: 30px;
	    height: 20px;
	    background: url(http://localhost:9000/myhouse/images/search.png) no-repeat center/15px;
	   	border: none;
	    cursor: pointer;
	    margin-top:4px;
	    outline:none;
	}
	.hd_right {
	    float: right;
	}
	.gnb {
	    display: flex;
	    align-items: center;
	    height: 36px;
	}
	.gnb>li:first-child {
	    margin-left: 0;
	}
	.gnb>li {
		margin-left: 7px;
	    padding: 0 8px;
	    height: 21px;
	    cursor: pointer;
	    list-style: none;
	}
	.gnb>li a {
		display: inline-block;
	    font-size: 13px;
	    line-height: 21px;
    	text-decoration: none;
    	color: #111;
    	cursor: pointer;
	}
	.gnb>li a:hover {
		font-weight: bold
	}
	.layout-navigation-primary__menu {
	    display: inline-block;
	}
	
	 .layout-navigation-primary__menu__item {
	    position: relative;
	    display: inline-block;
	    margin: 6px 10px 0;
	    padding: 14px 6px;
	    font-size: 18px;
	    line-height: 26px;
	    font-weight: 700;
	    color: #424242;
	    cursor: pointer;
	    text-decoration:none;
	}
	
	.layout-navigation-primary__right {
	    -webkit-box-flex: 1;
	    -webkit-flex: 1 0 auto;
	    -moz-box-flex: 1;
	    -moz-flex: 1 0 auto;
	    -ms-flex: 1 0 auto;
	    flex: 1 0 auto;
	    display: -webkit-box;
	    display: -webkit-flex;
	    display: -moz-flex;
	    display: -ms-flexbox;
	    display: flex;
	    -webkit-box-align: start;
	    -ms-flex-align: start;
	    -webkit-align-items: flex-start;
	    -moz-align-items: flex-start;
	    align-items: flex-start;
	    -webkit-box-pack: end;
	    -ms-flex-pack: end;
	    -webkit-justify-content: flex-end;
	    -moz-justify-content: flex-end;
	    justify-content: flex-end;
	    position: absolute;
	    right: 8px;
	    float:right;
	}
	
	.layout-navigation-primary__right {
	    -webkit-box-flex: 1;
	    -webkit-flex: 1 0 auto;
	    -moz-box-flex: 1;
	    -moz-flex: 1 0 auto;
	    -ms-flex: 1 0 auto;
	    flex: 1 0 auto;
	    position: static;
	    
	}
	
	.layout-navigation-bar-search {
	    -webkit-box-flex: 0;
	    -webkit-flex: 0 1 266px;
	    -moz-box-flex: 0;
	    -moz-flex: 0 1 266px;
	    -ms-flex: 0 1 266px;
	    flex: 0 1 266px;
	    display: none;
	    margin: 13px 10px 7px 0;
	    min-width: 0;
	}
	
	.layout-navigation-bar-search {
	    display: block;
	}
	.layout-navigation-search {
	    position: relative;
	}
	.layout-navigation-search__header {
	    display: -webkit-box;
	    display: -webkit-flex;
	    display: -moz-flex;
	    display: -ms-flexbox;
	    display: flex;
	}
	.layout-navigation-search__combobox {
	    -webkit-box-flex: 1;
	    -webkit-flex: 1 0 auto;
	    -moz-box-flex: 1;
	    -moz-flex: 1 0 auto;
	    -ms-flex: 1 0 auto;
	    flex: 1 0 auto;
	}
	.layout-navigation-search__input {
	    position: relative;
	}
	.layout-navigation-search__input__text {
	    display: block;
	    width: 200px;
	    box-sizing: border-box;
	    padding: 8px 9px 10px 39px;
	    font-family: inherit;
	    font-size: 15px;
	    line-height: 20px;
	    background-color: #fff;
	    color: #424242;
	    border: 1px solid #dbdbdb;
	    border-radius: 4px;
	    transition: background-color .1s;
	}
	.layout-navigation-search__input input[type=text].layout-navigation-search__input__text {
	    border-radius: 4px;
	}
	.layout-navigation-search__input__icon {
	    position: absolute;
	    top: 10px;
	    left: 10px;
	    width: 20px;
	    height: 20px;
	    color: #757575;
	    pointer-events: none;
	}
	.layout-navigation-bar-icon {
	    -moz-user-select: -moz-none;
	    -khtml-user-select: none;
	    -webkit-user-select: none;
	    -ms-user-select: none;
	    user-select: none;
	    position: relative;
	    display: inline-block;
	    margin: 7px 1px;
	    padding: 6px;
	    box-sizing: border-box;
	    width: 36px;
	    height: 36px;
	    background: transparent;
	    border: none;
	    cursor: pointer;
	    font-family: inherit;
	    transition: background .1s;
	    border-radius: 100%;
	}
	.layout-navigation-bar-icon {
	    margin: 15px 1.5px 9px;
	}
	.layout-navigation-bar-icon>.icon {
	    position: absolute;
	    top: 6px;
	    left: 6px;
	    transition: color .1s;
	    color: #757575;
	}
	.layout-navigation-bar-login {
	    margin: 20px -9px 16px -7px;
	    white-space: nowrap;
	}
.layout-navigation-bar-login {
	    display: inline-block;
	}
	.layout-navigation-bar-login__item {
	    position: relative;
	    display: inline-block;
	    margin: 0 9px 0 8px;
	    padding: 2px;
	    color: #757575;
	    font-size: 15px;
	    font-weight: 700;
	    line-height: 20px;
	    text-decoration:none;
	}
	.layout-navigation-bar-upload-button.drop-down {
	    display: inline-block;
	}
	.layout-navigation-bar-upload-button.drop-down {
	    margin: 14px 0 0 20px;
	}
	.layout-navigation-bar-upload-button__button {
	    display: inline-block;
	    margin: 0;
	    border: none;
	    background: none;
	    font: inherit;
	    width: 85px;
	    box-sizing: border-box;
	    padding: 8px 0 10px;
	    font-size: 15px;
	    line-height: 21px;
	    font-weight: 700;
	    text-align: center;
	    color: #fff;
	    background-color: #35c5f0;
	    border-radius: 4px;
	    transition: background-color .1s;
	}
	.layout-navigation-bar-upload-button__button {
	    width: 100px;
	    padding: 8px 0 10px;
	    font-size: 16px;
	    line-height: 22px;
	}
	.layout-navigation-bar-upload-button__button>.icon {
	    margin-left: 10px;
	    font-size: 12px;
	}
	.right{
	display:inline-block;
	float:right;
	}
</style>
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
							href="http://localhost:9000/myhouse/index.do">로그인</a><a
							class="layout-navigation-bar-login__item" href="http://localhost:9000/myhouse/index.do">회원가입</a>
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