<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="http://localhost:9000/myhouse/css/mypage.css"> -->
<!-- <script src="http://localhost:9000/myhouse/js/myhouse.js"></script> -->
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script>
	$(document).ready(function(){
		
		$("#sujung").click(function(){
			$("#modal").css("display","block");
		});
		
		
		$("#moclose").click(function(){
			alert("작성하고있는 내용이 유실됩니다. 정말 종료하시겠습니까?");
			$("#modal").css("display","none");
		});//click
		
		$("#delbtn").click(function(){
			$("#del").css("display","none");
			$("#card").css("display","block");
		});
		
		
		
		 
		$("#file_upload").on('change', function(){
		    $("#card").css("display","none");
		    $("#del").css("display","block");
		    readInputFile(this);
		});

		function readInputFile(input) {
		    if(input.files && input.files[0]) {
		        var reader = new FileReader();
		        reader.onload = function (e) {
		        	alert(e.target.result);
		            $("#img_priview").att("src",e.target.result);
		        }
		        reader.readAsDataURL(input.files[0]);
		    }
		}


		
		
		
		
		
		
		
		
	});//ready


</script>

<style>

* {
	font-family: "Noto Sans KR";
}
.profile {
	margin:auto;
	width:1200px;
}
.navigation {
	margin:auto;
	width:100%
}
.nav1,
.nav2 {
	list-style:none;
	text-align:center;
	}
.nav2 {
	display:block;
	border-top:1px solid lightgray;
	border-bottom:1px solid lightgray;
	padding-bottom:-20px;
}
.nav1-1 {
	display:inline-block;
	font-size:18px;
	font-weight:bold;
	padding-left:20px;
	padding-right:20px;
	color:black;
}
.nav1-1:hover,
.nav2-2:hover {
	color:#35c5f0;
}
.nav2-1 {
	margin:0px;
}
.nav2-2{
	display:inline-block;
	font-size:15px;
	font-weight:bold;
	margin-left:20px;
	margin-right:20px;
	padding-left:5px;
	padding-right:5px;
	padding-bottom:15px;
	padding-top:15px;
	color:black;
}
.mid {
	display:inline-block;
	width:1136px;
	height:596px;
	text-align:center;
}
.review {
	display:inline-block;
	width:1000px;
	height:auto;
	margin-top:50px;
	padding-bottom:20px;
}
.review1 {
	display:inline-block;
	width:900px;
	margin-bottom:50px;
}
.review2 {
	margin-bottom:30px;
}
.review1 span {
	float:left;
	font-size:15px;
	margin-right:40px;
}
.review1 a {
	color:black;
}
.simsa,
.simsa1,
.simsa2,
.simsatext {
	display:inline-block;
	width:900px;
}
.simsa span {
	float:left;
	border-radius:3px;
	font-size:15px;
	font-weight:bold;
	background-color:#35c5f0;
	color:white;
	padding-left:5px;
	padding-right:5px;
}
.simsa a {
	float:right;
	font-size:15px;
	color:#757575;
	text-decoration:none;
}
.simsa1 a {
	font-size:18px;
	font-weight:bold;
	float:left;
	color:black;
	text-decoration:none;
}
.simsa2 img {
	float:left;
	margin-right:10px;
}
.simsa2 span {
	float:left;
	font-size:14px;
	color:#9e9e9e;
	margin-bottom:3px;
}
.simsatext span {
	float:left;
	font-size:15px;
}

/* 수정버튼 클릭시 나오는 리뷰 수정 */
.container review-my-home{
	color: #424242;
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	margin-right: auto;
	margin-left: auto;
	width: calc(100% - 120px);
	max-width: 100%;
	box-sizing: border-box;
	min-height: 1px;
	-webkit-box-flex: 0;
	flex: 0 0 auto;
}
.review-my-home__search{
	color: #424242;
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	padding: 0;
	margin: 50px 0;
}
.review-my-home__search__title{
	color: #424242;
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	font-size: 18px;
	font-weight: 700;
}
.review-my-home__search__form{
	color: #424242;
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	margin-top: 15px;
}
.review-my-home__search__form__wrap{
	color: #424242;
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	display: flex;
	height:50px;
}
.review-my-home__search__product-list{
	color: #424242;
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	height: 300px;
	overflow-y: auto;
	background-color: #fff;
	border: 1px solid #dadce0;
	border-top: 0;
	display:none;
}
.review-my-home__search__product-list__no-product{
	color: #424242;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	height: 220px;
	width: 100%;
	line-height: 220px;
	text-align: center;
}
.review-my-home__search__form__input{
	-webkit-font-smoothing: antialiased;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	font-family: inherit;
	font-weight: inherit;
	transition: .2s border-color, .2s box-shadow, .2s background-color;
	display: block;
	box-sizing: border-box;
	width: 100%;
	padding: 0 15px;
	border-radius: 4px;
	border: solid 1px #dbdbdb;
	color: #424242;
	-webkit-box-flex: 1;
	flex: 1 0 0px;
	height: 50px;
	line-height: 50px;
	font-size: 18px;
	background-color: #fafafa;
	border-color: #bdbdbd;
}
.form-control:focus,
.focus-visible:focus {
	outline:none;
	box-shadow:0 0 0 3px rgba(130,224,250,0.5);
}
.review-my-home__search__form__button{
	-webkit-font-smoothing: antialiased;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	-webkit-appearance: none;
	touch-action: manipulation;
	user-select: none;
	display: inline-block;
	margin: 0;
	box-sizing: border-box;
	border: 1px solid transparent;
	background: none;
	font-family: inherit;
	font-weight: 700;
	text-decoration: none;
	text-align: center;
	transition: color .1s,background-color .1s,border-color .1s;
	border-radius: 4px;
	cursor: pointer;
	background-color: #35c5f0;
	border-color: #35c5f0;
	color: #fff;
	padding: 11px 10px;
	font-size: 17px;
	line-height: 26px;
	margin-left: 10px;
	min-width: 100px;
}
.virtualized-list review-my-home__review-list{
	color: #424242;
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	padding-top: 0px;
	padding-bottom: 0px;
	transform: translateY(0px);
}
/* 리뷰 작성하기 팝업*/
.react-modal--center,
.review-modal__modal__wrap open open-active {
	color: #424242;
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	display: none;
	-webkit-box-direction: normal;
	-webkit-box-orient: vertical;
	flex-direction: column;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	z-index: 100000;
	background-color: rgba(0,0,0,.5);
}
.react-modal__content-wrap{
	color: #424242;
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	-webkit-box-flex: 0;
	flex: 0 0 auto;
	width: 100%;
	max-height: 100%;
	overflow: auto;
	z-index: 504;
	box-sizing: border-box;
	opacity: 1;
	transform: none;
}
.react-modal__content,
.review-modal__modal{
	color: #424242;
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	padding: 0;
	margin: 20px auto;
	background-color: #fff;
	box-sizing: border-box;
	border-radius: 4px;
	width: 760px;
}
.review-modal{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	position: relative;
	width: 680px;
	border-radius: 4px;
	background-color: #fff;
	color: #292929;
	padding: 40px 40px 0;
}
.review-modal__title{
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	line-height: 1.35;
	font-weight: 700;
	text-align: center;
	font-size: 20px;
	display: block;
}
.review-modal__close{
	-webkit-font-smoothing: antialiased;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	-webkit-appearance: none;
	touch-action: manipulation;
	font-size: inherit;
	display: flex;
	-webkit-box-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	align-items: center;
	position: absolute;
	top: 10px;
	right: 10px;
	width: 40px;
	height: 40px;
	border: 0;
	cursor: pointer;
	background-color: #fff;
}
.review-modal__close__icon{
	-webkit-font-smoothing: antialiased;
	-webkit-box-direction: normal;
	font-size: inherit;
	cursor: pointer;
	fill: currentcolor;
	-webkit-tap-highlight-color: transparent;
	width: 20px;
	height: 20px;
}
path[Attributes Style] {
	-webkit-font-smoothing: antialiased;
	-webkit-box-direction: normal;
	font-size: inherit;
	cursor: pointer;
	fill-rule: nonzero;
	d: path("M 11.6 10 l 7.1 7.1 l -1.6 1.6 l -7.1 -7.1 l -7.1 7.1 l -1.6 -1.6 L 8.4 10 L 1.3 2.9 l 1.6 -1.6 L 10 8.4 l 7.1 -7.1 l 1.6 1.6 Z");
	-webkit-tap-highlight-color: transparent;
}
.review-modal__point-explain{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	margin-top: 30px;
	height: 45px;
	background-color: #525b61;
	padding: 0 16px;
	color: #fff;
	font-weight: 700;
}
.review-modal__point-explain__icon{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #fff;
	font-weight: 700;
	width: 24;
	-webkit-tap-highlight-color: transparent;
	fill: #fff;
	margin-right: 8px;
	height: 18px;
}
.review-modal__form{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
}
.review-modal__form__product{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	padding: 0;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	margin: 20px 0 30px;
}
.review-modal__form__product__image{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	border: 0;
	width: 100px;
	height: 100px;
	border-radius: 4px;
}
.review-modal__form__product__contents{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	-webkit-box-flex: 1;
	flex: 1 0 0px;
	margin-left: 12px;
}
.review-modal__form__product__contents__brand{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	font-size: 11px;
	color: #757575;
	margin-bottom: 6px;
}
.review-modal__section{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	position: relative;
	margin-bottom: 50px;
	width: 100%;
}
.review-modal__section__title{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	font-size: 15px;
	font-weight: 700;
	margin-bottom: 15px;
}
.review-modal__form__star__wrap{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
}
.review-modal__form__star{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	padding: 0;
	display: inline-flex;
	margin: 30px 60px 0 0;
	margin-top: 0;
}
.review-modal__form__star__label{
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	font-size: 15px;
	line-height: 42px;
	width: 55px;
}
.review-modal__form__star__value{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
}
.rating-input{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	list-style: none;
}
.rating-input>li {
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	list-style: none;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	display: inline-block;
}
.rating-input__star{
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	list-style: none;
	-webkit-tap-highlight-color: transparent;
	color: #dbdbdb;
	line-height: 0;
	cursor: pointer;
	transition: color .1s;
	font-size: 36px;
	padding-right: 4px;
}
.rating-input__star>input{
	-webkit-font-smoothing: antialiased;
	-webkit-box-direction: normal;
	list-style: none;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	font-family: inherit;
	font-weight: inherit;
	font-size: inherit;
	position: absolute;
	opacity: 0;
	z-index: -10000;
}
/* .star{
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	list-style: none;
	line-height: 0;
	cursor: pointer;
	color: #35c5f0;
	font-size: 36px;
	fill: currentcolor;
	width: 1em;
	height: 1em;
	-webkit-tap-highlight-color: transparent;
} */
.star{
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	list-style: none;
	color: #dbdbdb;
	line-height: 0;
	cursor: pointer;
	font-size: 36px;
	fill: currentcolor;
	width: 1em;
	height: 1em;
	-webkit-tap-highlight-color: transparent;
}
.review-modal__section__explain{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	font-size: 13px;
	margin-bottom: 10px;
}
.select-my-card{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	width: 100%;
	max-height: 234px;
	overflow-y: scroll;
}
.select-my-card__content{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	display: inline-block;
	position: relative;
	overflow: hidden;
	width: 110px;
	height: 110px;
	margin-top: 4px;
	margin-right: 2px;
	border-radius: 4px;
}
.select-my-card__content__image{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	border: 0;
	width: 110px;
	height: 110px;
}
.select-my-card__content--select>.select-my-card__content__image{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	border: 0;
	position: relative;
	top: -2px;
	left: -2px;
	width: 110px;
	height: 110px;
}
.select-my-card__content--select{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	display: inline-block;
	position: relative;
	overflow: hidden;
	margin-top: 4px;
	margin-right: 2px;
	border-radius: 4px;
	border: 2px solid #35c5f0;
	width: 106px;
	height: 106px;
}
.select-my-card__content--select:after {
    display: block;
    width: 100%;
    height: 100%;
    position: absolute;
    top: 0;
    left: 0;
    content: "";
    background-color: rgba(53,197,240,.1);
}
.round-checkbox-input,
.round-checkbox-input--blue{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	margin-bottom: 0;
	position: absolute;
	top: 10px;
	right: 10px;
}
.round-checkbox-input__label{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	position: relative;
	cursor: pointer;
	display: block;
	padding-left: 24px;
	min-height: 24px;
}
.round-checkbox-input__input{
	-webkit-font-smoothing: antialiased;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	font-family: inherit;
	font-weight: inherit;
	font-size: inherit;
	left: -1000px;
	position: absolute;
	opacity: 0;
}
.select-my-card__content--select>.round-checkbox-input{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	margin-bottom: 0;
	position: absolute;
	top: 8px;
	right: 8px;
}
.round-checkbox-input__icon{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	cursor: pointer;
	-webkit-tap-highlight-color: transparent;
	position: absolute;
	top: 0;
	left: 0;
	display: inline-block;
	width: 24px;
	height: 24px;
	box-sizing: border-box;
	border-radius: 100%;
	border: 1px solid #dbdbdb;
	vertical-align: -6px;
	transition: background-color .2s,border-color .2s,box-shadow .2s;
	border-color: hsla(0,0%,100%,.6);
	background-color: rgba(0,0,0,.14);
}
.select-my-card__content>.round-checkbox-input .round-checkbox-input__input:checked+.round-checkbox-input__icon{
	transition: background-color .2s,border-color .2s,box-shadow .2s;
	box-shadow: 0 0 0 3px rgba(130,224,250,.5);
	background-color: #35c5f0;
	border-color: #35c5f0;
}
.check{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	cursor: pointer;
	width: 24;
	height: 24;
	-webkit-tap-highlight-color: transparent;
	margin: -1px;
	opacity: 0;
	transition: opacity .2s,visibility 0s .2s;
}
.round-checkbox-input__input:checked+.round-checkbox-input__icon>.check{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	cursor: pointer;
	width: 24;
	height: 24;
	-webkit-tap-highlight-color: transparent;
	margin: -1px;
	opacity: 1;
	visibility: visible;
	transition: opacity .2s;
}
path[Attributes Style] {
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	cursor: pointer;
	fill: rgb(255, 255, 255);
	d: path("M 9.9 14.6 l 7 -7.3 l 1.5 1.4 l -8.4 8.7 l -5 -4.6 l 1.4 -1.5 Z");
	-webkit-tap-highlight-color: transparent;
}
.round-checkbox-input__input:checked+.round-checkbox-input__icon>.check {
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	cursor: pointer;
	width: 24;
	height: 24;
	-webkit-tap-highlight-color: transparent;
	margin: -1px;
	opacity: 1;
	visibility: visible;
	transition: opacity .2s;
}
.review-modal .select-my-card__content>.round-checkbox-input .round-checkbox-input__input:checked+.round-checkbox-input__icon{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	cursor: pointer;
	-webkit-tap-highlight-color: transparent;
	position: absolute;
	top: 0;
	left: 0;
	display: inline-block;
	width: 24px;
	height: 24px;
	box-sizing: border-box;
	border-radius: 100%;
	border: 1px solid #dbdbdb;
	vertical-align: -6px;
	transition: background-color .2s,border-color .2s,box-shadow .2s;
	background-color: #35c5f0;
	border-color: #35c5f0;
}
.button button--color-blue-inverted,
.button--size-50,
.button--shape-4,
.upload-button{
	-webkit-font-smoothing: antialiased;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	-webkit-appearance: none;
	touch-action: manipulation;
	user-select: none;
	margin: 0;
	box-sizing: border-box;
	border: 1px solid transparent;
	background: none;
	font-family: inherit;
	text-decoration: none;
	text-align: center;
	transition: color .1s,background-color .1s,border-color .1s;
	cursor: pointer;
	background-color: #fff;
	border-color: #35c5f0;
	color: #35c5f0;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	width: 100%;
	height: 45px;
	border-radius: 4px;
	font-weight: 700;
	font-size: 15px;
	padding: 0;
	line-height: 1;
	margin-top: 10px;
}
.upload-button>svg{
	-webkit-font-smoothing: antialiased;
	-webkit-box-direction: normal;
	user-select: none;
	font-family: inherit;
	text-align: center;
	cursor: pointer;
	color: #35c5f0;
	font-weight: 700;
	font-size: 15px;
	line-height: 1;
	-webkit-tap-highlight-color: transparent;
	width: 24px;
	height: 24px;
	margin-right: 8px;
	fill: #35c5f0;
}
.review-modal__section{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	position: relative;
	margin-bottom: 50px;
	width: 100%;
}
.review-modal__section__title{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	font-size: 15px;
	font-weight: 700;
	margin-bottom: 15px;
}
.text-area-input,
.review-modal__form__review-input{
	-webkit-font-smoothing: antialiased;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	font-family: inherit;
	font-weight: inherit;
	-webkit-appearance: none;
	-webkit-box-flex: 1;
	flex: 1 0 auto;
	transition: .2s border-color, .2s box-shadow, .2s background-color;
	display: block;
	box-sizing: border-box;
	width: 100%;
	padding: 0 15px;
	border-radius: 4px;
	border: solid 1px #dbdbdb;
	background-color: #ffffff;
	color: #424242;
	resize: none;
	line-height: 20px;
	padding-top: 9px;
	padding-bottom: 25px;
	min-height: 110px;
	font-size: 15px;
	height: 56px;
}
.review-modal__form__review-input__length{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	position: relative;
	top: -20px;
	right: 10px;
	text-align: right;
	font-size: 11px;
}
.review-modal__form__review-input__length__value{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	color: #292929;
	text-align: right;
	font-size: 11px;
	-webkit-tap-highlight-color: transparent;
}
.review-modal__section{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	position: relative;
	margin-bottom: 50px;
	width: 100%;
}
.review-modal__section__title{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	font-size: 15px;
	font-weight: 700;
	margin-bottom: 15px;
}
.checkbox-input{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	-webkit-box-flex: 1;
	flex: 1 1 auto;
	font-size: 15px;
}
.form-check-label{
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	color: #292929;
	font-size: 15px;
	-webkit-tap-highlight-color: transparent;
	cursor: pointer;
	display: block;
	padding-left: 32px;
	min-height: 22px;
	line-height: 22px;
	position: relative;
	margin-bottom: 0;
}
.form-check {
	-webkit-font-smoothing: antialiased;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	font-family: inherit;
	font-weight: inherit;
	-webkit-box-flex: 1;
	flex: 1 1 auto;
	font-size: 15px;
	left: -1000px;
}
.form-check:not(:disabled):checked+.check-img:after{
	opacity: 1;
}
.check-img {
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	color: #292929;
	font-size: 15px;
	cursor: pointer;
	line-height: 22px;
	-webkit-tap-highlight-color: transparent;
	box-sizing: border-box;
	height: 22px;
	width: 22px;
	border-radius: 4px;
	border: solid 1px #dbdbdb;
	display: block;
	transition: .2s ease;
	position: absolute;
	left: 0;
	top: 0;
	background-color: #35c5f0;
	border-color: #35c5f0;
} 
.check-img:after {
    background-image: url(/assets/icon_map/v3/ic-checkbox@2x.png);
    content: "";
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
    box-sizing: border-box;
    display: block;
    width: 14px;
    height: 14px;
    background-size: 14px;
 }
.review-modal__form__agree{
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	font-size: 15px;
	cursor: pointer;
	line-height: 22px;
	-webkit-tap-highlight-color: transparent;
	color: #424242;
}
.review-modal__form__agree__policy-button{
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	font-size: 15px;
	cursor: pointer;
	line-height: 22px;
	-webkit-tap-highlight-color: transparent;
	color: #35c5f0;
	text-decoration: underline;
	font-weight: 700;
}
.review-modal__form__submit{
	-webkit-font-smoothing: antialiased;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	-webkit-appearance: none;
	touch-action: manipulation;
	user-select: none;
	display: inline-block;
	margin: 0;
	box-sizing: border-box;
	border: 1px solid transparent;
	background: none;
	font-family: inherit;
	font-weight: 700;
	text-decoration: none;
	text-align: center;
	transition: color .1s,background-color .1s,border-color .1s;
	border-radius: 4px;
	cursor: pointer;
	background-color: #35c5f0;
	border-color: #35c5f0;
	color: #fff;
	font-size: 17px;
	width: 100%;
	height: 45px;
	padding: 0;
	line-height: 43px;
	margin-bottom: 30px;
}
.review-modal__explain{
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	width: 100%;
	margin: 0 -40px;
	padding: 20px 40px;
	border-radius: 4px;
	background-color: #f7f8fa;
	border-top: 1px solid #ededed;
	line-height: 1.46;
	color: #424242;
	font-size: 13px;
}
.review-modal__explain>ul{
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	-webkit-box-direction: normal;
	line-height: 1.46;
	color: #424242;
	font-size: 13px;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	list-style: none;
	list-style-type: disc;
	list-style-position: inside;
}
.review-modal__explain__warning{
font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
-webkit-font-smoothing: antialiased;
letter-spacing: -0.4px;
-webkit-box-direction: normal;
line-height: 1.46;
font-size: 12px;
list-style: none;
list-style-type: disc;
list-style-position: inside;
-webkit-tap-highlight-color: transparent;
color: #f06060;
font-weight: 700;
}
.select-picture{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	padding: 0;
	display: flex;
	-webkit-box-pack: center;
	justify-content: center;
	position: relative;
	width: 100%;
	height: 226px;
	background-color: #eaebef;
	border-radius: 4px;
	overflow: hidden;
	display:none;
}
.select-picture__contents{
	line-height: 1;
	font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	color: #292929;
	-webkit-tap-highlight-color: transparent;
	border: 0;
	height: 100%;
}
.select-picture__delete{
	-webkit-font-smoothing: antialiased;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	-webkit-appearance: none;
	touch-action: manipulation;
	user-select: none;
	margin: 0;
	box-sizing: border-box;
	border: 1px solid transparent;
	background: none;
	font-family: inherit;
	font-weight: 700;
	text-decoration: none;
	text-align: center;
	transition: color .1s,background-color .1s,border-color .1s;
	border-radius: 4px;
	cursor: pointer;
	background-color: #35c5f0;
	border-color: #35c5f0;
	color: #fff;
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	position: absolute;
	top: 12px;
	right: 12px;
	width: 70px;
	height: 32px;
	box-shadow: 0 0 6px 0 rgba(47,52,56,.2);
	font-size: 15px;
	padding: 0;
	line-height: 1;
}
.select-picture__delete:hover {
	background-color:rgb(16,175,222);
}
.select-picture__delete>svg {
	-webkit-font-smoothing: antialiased;
	-webkit-box-direction: normal;
	user-select: none;
	font-family: inherit;
	font-weight: 700;
	text-align: center;
	cursor: pointer;
	color: #fff;
	font-size: 15px;
	line-height: 1;
	-webkit-tap-highlight-color: transparent;
	width: 16px;
	height: 16px;
	margin-right: 8px;
}
.img_preview{
	border:1px solid red;
}
</style>
</head>
<body>

<div class="navigation">
	<div class="nav">
		<ul class="nav1">
			<a href="mypage_profile.do"><li class="nav1-1">프로필</li></a>
			<a href="mypage_orderlist.do"><li class="nav1-1">나의 쇼핑</li></a>
			<a href="mypage_review.do"><li class="nav1-1"  style="color:#35c5f0;">나의 리뷰</li></a>
			<a href="mypage_option.do"><li class="nav1-1">설정</li></a>
		</ul>
	</div>
	<div class="nav2">
		<ul class="nav2-1">
			<a href="mypage_review.do"><li class="nav2-2">리뷰 쓰기</li></a>
			<a href="mypage_review1.do"><li class="nav2-2" style="color:#35c5f0; border-bottom:5px solid #35c5f0;">내가 작성한 리뷰</li></a>
		</ul>
	</div>
</div>
<div class="profile">
<div class="mid">
	<div class="review">
		<div class="review1">
			<span style="color:#35c5f0;">베스트순</span>
			<a href="mypage_review1.do"><span>최신순</span></a>
		</div>
		<div class="review2">
			<div class="simsa"><span>리뷰심사중</span><a href="#" id="sujung">수정</a></div>
			<div class="simsa1"><a href="#">[시디즈] T20 TAB+ TNA200HF 메쉬의자 2types</a></div>
			<div class="simsa2"><img src="http://localhost:9000/myhouse/images/mypage/review.png"><span>귤먹고갈래 | 2021.01.15 | 다른 쇼핑몰 리뷰</span></div>
			<div class="simsatext"><span>그냥 한번 사봤는데 너무 좋더라구요</span></div>
		</div>
		<div class="review2">
			<div class="simsa"><span>리뷰심사중</span><a href="#">수정</a></div>
			<div class="simsa1"><a href="#">[시디즈] T20 TAB+ TNA200HF 메쉬의자 2types</a></div>
			<div class="simsa2"><img src="http://localhost:9000/myhouse/images/mypage/review.png"><span>귤먹고갈래 | 2021.01.15 | 다른 쇼핑몰 리뷰</span></div>
			<div class="simsatext"><span>그냥 한번 사봤는데 너무 좋더라구요</span></div>
		</div>
		<div class="review2">
			<div class="simsa"><span>리뷰심사중</span><a href="#">수정</a></div>
			<div class="simsa1"><a href="#">[시디즈] T20 TAB+ TNA200HF 메쉬의자 2types</a></div>
			<div class="simsa2"><img src="http://localhost:9000/myhouse/images/mypage/review.png"><span>귤먹고갈래 | 2021.01.15 | 다른 쇼핑몰 리뷰</span></div>
			<div class="simsatext"><span>그냥 한번 사봤는데 너무 좋더라구요</span></div>
		</div>
	</div>
</div>


	<div class="react-modal react-modal--center review-modal__modal__wrap open open-active" id="modal">
	<div class="react-modal__content-wrap">
		<div class="react-modal__content review-modal__modal">
			<div class="review-modal">
				<div class="review-modal__title">리뷰 수정하기
					<button type="button" class="review-modal__close" id="moclose">
						<svg class="review-modal__close__icon" width="20" height="20" viewBox="0 0 20 20" fill="currentColor" preserveAspectRatio="xMidYMid meet">
							<path fill-rule="nonzero" d="M11.6 10l7.1 7.1-1.6 1.6-7.1-7.1-7.1 7.1-1.6-1.6L8.4 10 1.3 2.9l1.6-1.6L10 8.4l7.1-7.1 1.6 1.6z"></path>
						</svg>
					</button>
				</div>
				<form class="review-modal__form">
				<div class="review-modal__form__product">
					<img class="review-modal__form__product__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/157043700789497913.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/157043700789497913.jpg?gif=1&amp;w=160&amp;h=160&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/157043700789497913.jpg?gif=1&amp;w=240&amp;h=240&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/157043700789497913.jpg?gif=1&amp;w=320&amp;h=320&amp;c=c&amp;webp=1 3x">
					<div class="review-modal__form__product__contents">
						<div class="review-modal__form__product__contents__brand">에이픽스</div>
						<div class="review-modal__form__product__contents__name">컴퓨터 게이밍 의자 GC001 울프 4D팔걸이 쿠션3종</div>
						<div class="review-modal__form__product__contents__options"></div>
					</div>
				</div>
				<div class="review-modal__section">
					<div class="review-modal__section__title">별점 평가</div>
					<div class="review-modal__form__star__wrap">
						<div class="review-modal__form__star">
							<div class="review-modal__form__star__label">만족도</div>
							<div class="review-modal__form__star__value">
								<ul class="rating-input">
									<li>
										<label class="rating-input__star" aria-label="별점 1점">
											<input type="radio" value="1">
											<svg class="star" fill="currentColor" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 36 36">
												<path fill-rule="evenodd" d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path>
											</svg>
										</label>
									</li>
									<li>
										<label class="rating-input__star" aria-label="별점 2점">
											<input type="radio" value="2">
											<svg class="star" fill="currentColor" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 36 36">
												<path fill-rule="evenodd" d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path>
											</svg>
										</label>
									</li>
									<li>
										<label class="rating-input__star" aria-label="별점 3점">
											<input type="radio" value="3">
											<svg class="star" fill="currentColor" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 36 36">
												<path fill-rule="evenodd" d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path>
											</svg>
										</label>
									</li>
									<li>
										<label class="rating-input__star" aria-label="별점 4점">
											<input type="radio" value="4">
											<svg class="star" fill="currentColor" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 36 36">
												<path fill-rule="evenodd" d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path>
											</svg>
										</label>
									</li>
									<li>
										<label class="rating-input__star" aria-label="별점 5점">
											<input type="radio" value="5">
											<svg class="star" fill="currentColor" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 36 36">
												<path fill-rule="evenodd" d="M18 30.7l-9 3.8c-1.5.7-2.6-.2-2.5-1.8l.8-9.7L1 15.6c-1-1.3-.6-2.6 1-3l9.5-2.2 5-8.3c1-1.5 2.3-1.5 3.1 0l5 8.3 9.6 2.2c1.6.4 2 1.7 1 3L28.7 23l.8 9.7c.1 1.6-1 2.5-2.5 1.8l-9-3.8z"></path>
											</svg>
										</label>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="review-modal__section">
					<div class="review-modal__section__title">사진 첨부 (선택) 
					</div>
					<div class="review-modal__section__explain">오늘의집에 올렸던 사진에서 고르거나 새로운 사진을 첨부해주세요. (최대 1장)</div>
					<div class="select-my-card" id="card">
						<div class="select-my-card__content">
						<img class="select-my-card__content__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161106369884900212.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161106369884900212.jpeg?gif=1&amp;w=180&amp;h=180&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161106369884900212.jpeg?gif=1&amp;w=240&amp;h=240&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161106369884900212.jpeg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;webp=1 3x">
							<div class="round-checkbox-input round-checkbox-input--blue">
							<label class="round-checkbox-input__label">
								<input class="round-checkbox-input__input" type="checkbox">
								<span class="round-checkbox-input__icon">
									<svg class="check" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
										<path fill="#FFF" d="M9.9 14.6l7-7.3 1.5 1.4-8.4 8.7-5-4.6 1.4-1.5z"></path>
									</svg>
								</span>
							</label>
						</div>
						</div>
						<div class="select-my-card__content">
							<img class="select-my-card__content__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161103933114767119.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161103933114767119.jpeg?gif=1&amp;w=180&amp;h=180&amp;c=c&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161103933114767119.jpeg?gif=1&amp;w=240&amp;h=240&amp;c=c&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161103933114767119.jpeg?gif=1&amp;w=360&amp;h=360&amp;c=c&amp;webp=1 3x">
							<div class="round-checkbox-input round-checkbox-input--blue">
								<label class="round-checkbox-input__label">
									<input class="round-checkbox-input__input" type="checkbox">
									<span class="round-checkbox-input__icon">
										<svg class="check" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
											<path fill="#FFF" d="M9.9 14.6l7-7.3 1.5 1.4-8.4 8.7-5-4.6 1.4-1.5z">
											</path>
										</svg>
									</span>
								</label>
							</div>
						</div>
					</div> 
					
					
					<div class="select-picture" id="del">
						<img class="select-picture__contents" id="img_preview" src="">
						<button class="button button--color-blue button--size-50 button--shape-4 select-picture__delete" type="button" id="delbtn">
							<svg viewBox="0 0 20 20" preserveAspectRatio="xMidYMid meet">
								<defs>
									<filter id="delete-a" width="134.3%" height="175%" x="-17.1%" y="-37.5%" filterUnits="objectBoundingBox">
										<feOffset in="SourceAlpha" result="shadowOffsetOuter1"></feOffset>
										<feGaussianBlur in="shadowOffsetOuter1" result="shadowBlurOuter1" stdDeviation="3"></feGaussianBlur>
										<feColorMatrix in="shadowBlurOuter1" result="shadowMatrixOuter1" values="0 0 0 0 0.182857143 0 0 0 0 0.205714286 0 0 0 0 0.22 0 0 0 0.2 0"></feColorMatrix>
										<feMerge>
											<feMergeNode in="shadowMatrixOuter1"></feMergeNode>
											<feMergeNode in="SourceGraphic"></feMergeNode>
										</feMerge>
									</filter>
									<path id="delete-b" d="M11 3.83v10c0 .92-.75 1.67-1.67 1.67H2.67c-.92 0-1.67-.75-1.67-1.67v-10h10zM8.08.5l.84.83h2.91V3H.17V1.33h2.91L3.92.5h4.16z"></path>
								</defs>
								<g fill="none" fill-rule="evenodd" filter="url(#delete-a)" transform="translate(4 2)">
									<mask id="delete-c" fill="#fff">
										<use xlink:href="#delete-b"></use>
									</mask>
									<g fill="#FFF" mask="url(#delete-c)">
										<path d="M-4-2h20v20H-4z"></path>
									</g>
								</g>
							</svg>삭제
						</button>
					</div>
					
					
					<button class="button button--color-blue-inverted button--size-50 button--shape-4 upload-button" type="button">
						<input type="file" name="fileup" id="file_upload">
						<svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
							<path d="M21.1 4c.5 0 .9.4.9.9v14.2c0 .5-.4.9-.9.9H2.9a.9.9 0 01-.9-.9V4.9c0-.5.4-.9.9-.9h18.2zm-.91 1.8H3.8v10.85l5.54-6.27c.12-.17.38-.17.52 0l3.1 3.54c.06.06.08.14.06.2l-.4 1.84c-.02.14.15.23.23.12l3.16-3.43a.27.27 0 01.38 0l3.79 4.12V5.8zm-3.37 4.8a1.47 1.47 0 01-1.47-1.45c0-.81.66-1.46 1.47-1.46s1.48.65 1.48 1.46c0 .8-.66 1.45-1.48 1.45z"></path>
						</svg> 사진 첨부하기
					</button>
				</div>
				<div class="review-modal__section">
					<div class="review-modal__section__title">리뷰 작성</div>
					<textarea placeholder="자세하고 솔직한 리뷰는 다른 고객에게 큰 도움이 됩니다. (최소 20자 이상)" class="form-control text-area-input review-modal__form__review-input" style="height: 56px;"></textarea>
					<div class="review-modal__form__review-input__length">
						<span class="review-modal__form__review-input__length__value">0</span>
					</div>
				</div>
				<div class="review-modal__section">
					<div class="review-modal__section__title">상품을 직접 사용하고 작성한 리뷰인가요?</div>
						<div class="form-check checkbox-input">
							<label class="form-check-label">
								<input class="form-check" type="checkbox">
								<span class="check-img"></span>
								<span class="review-modal__form__agree">네. 상품을 직접 사용 후 작성한 리뷰이며,&nbsp;
									<span class="review-modal__form__agree__policy-button">오늘의집 리뷰 정책</span>에 동의합니다.
								</span>
							</label>
						</div>
				</div>
				<button class="button button--color-blue button--size-50 button--shape-4 review-modal__form__submit" type="submit">완료</button>
				</form>
				<div class="review-modal__explain">
					<ul>
						<li>비구매 상품 리뷰 포인트는 심사 후 지급됩니다. (영업일 기준 2~3일 소요)</li>
						<li>포인트는 최초 작성한 리뷰를 기준으로 지급됩니다.</li>
						<li>사진 첨부시&nbsp;
							<span class="review-modal__explain__warning">캡쳐, 도용, 유사상품 촬영, 동일상품 여부 식별이 불가한 경우</span>
							에는 등록이 거절되며 사유는 별도 안내되지 않습니다.
						</li>
						<li>상품과 무관한 내용이나 사진, 동일 문자 반복 등의 부적합한 리뷰는 사전 경고 없이 삭제 및 포인트 회수될 수 있습니다.</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>














</div>
</body>
</html>