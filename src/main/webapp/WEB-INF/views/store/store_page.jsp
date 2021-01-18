<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/swiper-bundle.min.css">
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/am-pagination.css">
<script src="http://localhost:9000/myhouse/js/swiper-bundle.min.js"></script>
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/myhouse/js/am-pagination.js"></script>
<style>
	html, body {
	    line-height: 1;
	    font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	    -webkit-font-smoothing: antialiased;
	    letter-spacing: -0.4px;
	    font-size: 13px;
	    color: #424242;
	}
	h1, select {
		font-weight: inherit;
	}
	div, p, li, th, td, h2 {
		margin: 0;
    	padding: 0;
	}
	div, article {
    	display: block;
	}
	a {
		color: inherit;
   	 	text-decoration: none;
   	 	border:none;
	}
	a, button {
		cursor: pointer;
		touch-action: manipulation;
	}
	button {
	    -webkit-writing-mode: horizontal-tb !important;
	    text-rendering: auto;
	    color: -internal-light-dark(black, white);
	    letter-spacing: normal;
	    word-spacing: normal;
	    text-transform: none;
	    text-indent: 0px;
	    text-shadow: none;
	    font: 400 13.3333px Arial;
	}
	button:focus {
		outline:0;
	}
	ol, ul {
	    list-style: none;
	}
	ul {
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
	button {
		font-size:inherit;
	}
	header {
	    box-sizing: border-box;
	    position: relative;
	}
	table {
	    display: table;
	    box-sizing: border-box;
	    text-indent: initial;
	    border-color: grey;
	}
	tbody {
	    display: table-row-group;
	    vertical-align: middle;
	    border-color: inherit;
	}
	th {
		font-style: normal;
	    font-weight: normal;
	    display: table-cell;
	    vertical-align: inherit;
	}
	td {
	    display: table-cell;
	    vertical-align: inherit;
	}
	p {
	    display: block;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	}
	small {
	    font-size: smaller;
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
	    margin-left:-30px;
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
	.production-selling-header__content {
	    position: relative;
	    min-height: 46px;
	}
	.production-selling-header__content--deal {
	    padding-bottom: 12px;
	}
	.production-selling-header__action {
	    top: 0;
	}
	.production-selling-header__action {
	    position: absolute;
	    right: 0;
	    margin: 0 -6px;
	}
	.production-selling-header__action__button-scrap {
	    display: inline-block;
	}
	.production-selling-header__action__button {
	    margin: 0 3px;
	    padding: 5px 4px 0;
	    background: none;
	    border: none;
	    text-align: center;
	    transition: opacity .1s;
	    line-height: 0;
	    z-index: 2;
	    vertical-align: top;
	}
	.production-selling-header__action__button>.icon--stroke {
	    fill: transparent;
	    stroke: #424242;
	    stroke-width: 1px;
	    transition: fill .1s,stroke .1s;
	}
	.production-selling-header__action__button>.count {
	    display: block;
	    min-height: 11px;
	    margin: 6px 0 0;
	    color: #757575;
	    font-size: 11px;
	    line-height: 1;
	}
	.production-selling-header__action__button:active, .production-selling-header__action__button:hover {
	    opacity: .5;
	}
	button:focus {
		outline: 0;
	}
	.production-selling-header__action__button.production-selling-header__action__button--active>.icon--stroke {
	    fill: #35c5f0;
	    stroke: transparent;
	}
	.production-selling-header__review-wrap {
	    margin: 8px 0 0;
	}
	.production-selling-header__review {
	    margin: 0;
	    padding: 0;
	    font: inherit;
	    background: none;
	    border: none;
	    transition: opacity .1s;
	}
	.production-selling-header__review__icon {
	    display: inline-block;
	    font-size: 0;
	}
	.production-selling-header__review__icon>svg {
	    margin-right: 2px;
	    width: 16px;
	    height: 16px;
	}
	.production-selling-header__review__text {
	    margin-left: 8px;
	    font-weight: 700;
	}
	.production-selling-header__review__text {
	    color: #35c5f0;
	    font-size: 13px;
	    vertical-align: 2px;
	}
	.production-selling-header__review__text>.postfix {
	    display: inline;
	}
	.production-selling-header__price {
	    display: table;
	    margin: 20px 0 0;
	}
	.production-selling-header__price__row {
	    display: table-row;
	}
	.production-selling-header__price__discount {
	    display: table-cell;
	    padding-right: 5px;
	    color: #35c5f0;
	    font-weight: 900;
	    vertical-align: bottom;
	    line-height: 1;
	    font-size: 20px;
	}
	.production-selling-header__price__discount>.number {
	    font-size: 44px;
	    font-family: Tahoma,sans-serif;
	}
	.production-selling-header__price__discount>.percent {
	    font-size: 20px;
	}
	.production-selling-header__price__price-wrap {
	    display: table-cell;
	}
	.production-selling-header__price__price {
	    line-height: 1;
	    font-size: 20px;
	    font-weight: 700;
	    margin-top: 5px;
	}
	.production-selling-header__price__price {
	    display: block;
	    color: #000;
	}
	.production-selling-header__price__price>.number {
	    font-size: 32px;
	    font-weight: 900;
	    font-family: Tahoma,sans-serif;
	}
	.production-selling-header__price__price>.won {
	    font-size: 28px;
	    font-weight: 400;
	}
	.production-selling-header__price__badge {
	    margin-left: 8px;
	    vertical-align: 0;
	    font-size: 0;
	}
	.production-selling-header__price__badge .icon {
	    margin-right: 4px;
	}
	.production-selling-header__delivery--deal {
    border-top: 1px solid #ededed;
	}
	.production-selling-header__delivery {
	    padding: 13px 0 0;
	    font-size: 15px;
	    line-height: 21px;
	}
	.production-selling-header__delivery__type {
	    display: block;
	    color: #424242;
	}
	.production-selling-overview__option-form.production-selling-option-form {
	    display: block;
	    margin-top: 10px;
	}
	.production-selling-option-form, .production-selling-option-form__form {
	    -webkit-box-flex: 1;
	    flex: 1 1 auto;
	}
	.production-selling-option-form {
	    -webkit-box-direction: normal;
	    -webkit-box-orient: vertical;
	    flex-direction: column;
	}
	.selling-option-form-content {
	    display: flex;
	    -webkit-box-direction: normal;
	    -webkit-box-orient: vertical;
	    flex-direction: column;
	}
	.production-selling-option-form__form {
	    margin-top: 20px;
	    min-height: 1px;
	}
	.production-selling-option-form, .production-selling-option-form__form {
	    -webkit-box-flex: 1;
	    flex: 1 1 auto;
	}
	.deal-selling-option-form-content .production-select-dropdown {
	    margin: 0 0 10px;
	}
	.deal-selling-option-form-content .production-select-dropdown-side {
	    margin: 0 0 10px;
	}
	.production-select-dropdown {
	    position: relative;
	    width: 100%;
	}
	.production-select-dropdown-side {
	    position: relative;
	    width: 100%;
	}
	.production-select-button {
	    display: flex;
	    -webkit-box-pack: justify;
	    justify-content: space-between;
	    -webkit-box-align: center;
	    align-items: center;
	    width: 100%;
	    border: 1px solid #dbdbdb;
	    background-color: #fff;
	    border-radius: 4px;
	    cursor: pointer;
	    position: relative;
	    font-family: inherit;
	    padding: 0;
	    transition: background-color .1s;
	}
	.production-select-button__production {
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    -webkit-box-flex: 1;
	    flex: 1;
	    position: relative;
	    margin: 13px 16px 13px 0;
	}
	.production-select-button__production__blank {
	    padding: 10px 0 11px 16px;
	    font-size: 15px;
	    line-height: 21px;
	}
	.production-select-button__production__blank.select-none {
	    display:none;
	}
	.production-select-button__production__icon {
	    position: absolute;
	    right: 0;
	}
	.production-select-button__production__icon>svg {
	    vertical-align: -3px;
	    color: #757575;
	}
	.selling-option-form-content__price {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    -webkit-box-pack: justify;
	    justify-content: space-between;
	    margin-top: 10px;
	}
	.selling-option-form-content__price__left {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    font-weight: 700;
	    color: #000;
	    font-size: 13px;
	}
	.selling-option-form-content__price__right {
	    font-size: 20px;
	    text-align: right;
	}
	.selling-option-form-content__price__left, .selling-option-form-content__price__right {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    font-weight: 700;
	    color: #000;
	}
	.selling-option-form-content__price__number {
	    font-family: Tahoma,sans;
	}
	.production-selling-option-form__footer {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    display: flex;
	    margin: 20px -3px 0;
	}
	.production-selling-option-form__footer>.button {
	    -webkit-box-flex: 1;
	    flex: 1 0 0px;
	    margin: 0 3px;
	}
	.button--size-55 {
	    padding: 13px 10px 14px;
	    font-size: 17px;
	    line-height: 26px;
	}
	.button.button--color-blue-inverted {
	    background-color: #fff;
	    border-color: #35c5f0;
	    color: #35c5f0;
	}
	.button.button--color-blue-inverted:hover {
		background-color:rgb(248, 253, 255);
	}
	.button.button--color-blue {
	    background-color: #35c5f0;
	    border-color: #35c5f0;
	    color: #fff;
	}
	.button.button--color-blue:hover {
		background-color:rgb(9, 173, 219);
	}
	.button {
	    user-select: none;
	    display: inline-block;
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
	}
	.production-select-dropdown__list-container.open {
	    opacity: 1;
	    transform: none;
	    position: absolute;
	    top: 100%;
	    left: 0;
	    width: 100%;
	    margin-top: 4px;
	    transition: opacity .2s,transform .2s;
	    z-index: 200;
	    border: 1px solid #dbdbdb;
	    border-radius: 4px;
	    overflow: hidden;
	    box-sizing: border-box;
	    display:block;
	}
	.production-select-dropdown__list-container {
	    position: absolute;
	    top: 100%;
	    left: 0;
	    width: 100%;
	    margin-top: 4px;
	    transition: opacity .2s,transform .2s;
	    z-index: 200;
	    border: 1px solid #dbdbdb;
	    border-radius: 4px;
	    overflow: hidden;
	    box-sizing: border-box;
	    display:none;
	}
	.production-select-dropdown__list {
	    max-height: 377px;
	    overflow: auto;
	    background-color: #fff;
	    box-sizing: border-box;
	}
	.production-select-list {
	    position: relative;
	}
	.production-select-list.production-select-dropdown__list {
		/* width:100%;  */
		margin:0;
		padding-left:0;
	}
	.production-select-list__item {
	    display: block;
	    background-color: #fff;
	    border-bottom: 1px solid #dbdbdb;
	}
	.production-select-list__item .production-select-item {
	    width: 100%;
	    margin: 0;
	    padding: 8px 20px 8px 0;
	    transition: background-color .1s;
	}
	.production-select-item {
	    display: flex;
	    -webkit-box-direction: normal;
	    -webkit-box-orient: horizontal;
	    flex-direction: row;
	    -webkit-box-align: center;
	    align-items: center;
	    -webkit-box-flex: 1;
	    flex: 1;
	    text-align: left;
	    background: none;
	    border: none;
	    box-sizing: border-box;
	    font-family: inherit;
	}
	.production-select-item:hover {
		background-color: rgb(247, 248, 250)
	}
	.production-select-item__index {
	    width: 60px;
	    color: #757575;
	    font-size: 15px;
	    font-weight: 700;
	    text-align: center;
	}
	.production-select-item__image {
	    position: relative;
	    margin-right: 10px;
	    font-size: 0;
	}
	.production-select-item__image .image {
	    display: block;
	    width: 44px;
	    height: 44px;
	    border-radius: 4px;
	}
	.production-select-item__contents {
	    width: 100%;
	}
	.production-select-item__contents__name {
	    max-height: 32px;
	    margin-top: 5px;
	    word-break: break-all;
	    font-size: 13px;
	    font-weight: 400;
	    line-height: 16px;
	    color: #424242;
	    transition: opacity .1s;
	    overflow: hidden;
	    text-overflow: ellipsis;
	    display: -webkit-box;
	    -webkit-line-clamp: 2;
	    -webkit-box-orient: vertical;
	}
	.production-select-item__contents__price {
	    display: inline;
	}
	.production-item-price {
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
	.production-select-item__contents__badges {
	    display: inline;
	    vertical-align: -4px;
	    margin-left: 5px;
	}
	.production-select-item__contents__badges>svg {
	    margin-right: 4px;
	}
	.production-select-button__production__index {
	    width: 60px;
	    font-weight: 800;
	    color: #757575;
	    font-size: 15px;
	    text-align: center;
	}
	.production-select-button__production__image--wrap {
	    position: relative;
	}
	.production-select-button__production__image {
	    display: block;
	    width: 44px;
	    height: 44px;
	    border-radius: 4px;
	}
	.production-select-button__production__text {
	    margin-left: 15px;
	    width: 100%;
	    text-align: left;
	    font-size: 13px;
	    color: #424242;
	    max-height: 32px;
	    word-break: break-all;
	    font-weight: 400;
	    line-height: 16px;
	    transition: opacity .1s;
	    overflow: hidden;
	    text-overflow: ellipsis;
	    display: -webkit-box;
	    -webkit-line-clamp: 2;
	    -webkit-box-orient: vertical;
	    padding-right: 20px;
	}
	/* 상품 전체 선택 화면 */
	.production-select-button__production.select-none, .selling-option-form-content__list.select-none {
		display:none;
	}
	.order-list.order-none {
		display:none;
	}
	/* 상품 선택 후 주문 갯수 확인 화면 */
	.production-selling-option-form__form .selling-option-form-content__list {
	    -webkit-box-flex: 1;
	    flex: 1 1 auto;
	}
	.selling-option-form-content__list {
	    position: relative;
	    min-height: 1px;
	    overflow-y: auto;
	    padding-left:0;
	}
	.selling-option-item {
	    position: relative;
	    margin: 0 0 8px;
	    padding: 10px;
	    background-color: #f5f5f5;
	    border-radius: 6px;
	}
	.selling-option-item__production {
    	margin: 0 0 10px;
	    padding: 0 22px 0 0;
	    font-size: 15px;
	    font-weight: 400;
	    line-height: 20px;
	    color: #424242;
	    max-height: 40px;
	    overflow: hidden;
	    display: -webkit-box;
	    -webkit-box-orient: vertical;
	    -webkit-line-clamp: 2;
	}
	.selling-option-item__production+.selling-option-item__name {
	    font-size: 13px;
	}
	.selling-option-item__name {
	    padding: 0 22px 10px 0;
	    font-weight: 400;
	    line-height: 20px;
	    color: #424242;
	}
	.selling-option-item__delete {
	    position: absolute;
	    display: inline-block;
	    top: 0;
	    right: 0;
	    padding: 10px;
	    background: none;
	    border: none;
	    font-size: 0;
	    transition: opacity .1s;
	    color: #757575;
	}
	.selling-option-item__delete:hover {
		opacity: 0.4;
	}
	.selling-option-item__controls {
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    -webkit-box-pack: justify;
	    justify-content: space-between;
	}
	.option-count-input {
	    width: 80px;
	}
	.select-input {
	    position: relative;
	}
	.input-group {
	    -webkit-box-flex: 1;
	    flex: 1 0 auto;
	}
	.option-count-input.select-input>.form-control {
	    padding-right: 30px;
	}
	.option-count-input.manual.form-control, .option-count-input.select-input>.form-control {
	    height: 24px;
	    padding: 0 10px;
	    font-size: 13px;
	    line-height: 22px;
	    border-radius: 3px;
	    text-align: center;
	    font-family: Tahoma,sans;
	}
	.select-input.input-group>.form-control {
	    width: 100%;
	}
	
	.select-input>.form-control {
	    width: 100%;
	    background-image: none;
	}
	.form-control {
	    transition: .2s border-color, .2s box-shadow, .2s background-color;
	    display: block;
	    box-sizing: border-box;
	    border: solid 1px #dbdbdb;
	    background-color: #ffffff;
	    color: #424242;
	}
	.form-control {
	    -webkit-box-flex: 1;
	    flex: 1 0 auto;
	}
	select:not(:-internal-list-box) {
	    overflow: visible !important;
	}
	select {
	    -webkit-writing-mode: horizontal-tb !important;
	    text-rendering: auto;
	    letter-spacing: normal;
	    word-spacing: normal;
	    text-transform: none;
	    text-indent: 0px;
	    text-shadow: none;
	    align-items: center;
	    white-space: pre;
	    -webkit-rtl-ordering: logical;
	    cursor: default;
	    margin: 0em;
	    font: 400 13.3333px Arial;
	}
	.select-input>.form-control>option {
	    color: #424242;
	}
	.option-count-input .select-input__icon {
	    top: 2px;
	    right: 5px;
	}
	.select-input__icon {
	    position: absolute;
	    padding: 5px;
	    font-size: 0;
	    cursor: default;
	    color: rgba(0,0,0,.3);
	    pointer-events: none;
	    overflow:hidden;
	}
	.selling-option-item__price {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    font-size: 15px;
	    font-weight: 700;
	    line-height: 24px;
	    color: #424242;
	}
	.selling-option-item__price__number {
	    font-family: Tahoma,sans;
	}
	/* nav : 상품정보 ~ 배송까지 */
	.production-selling-navigation-wrap {
	    z-index: 100;
	    transition: top .1s;
	}
	.production-selling-navigation {
	    background-color: #fafafa;
	    border-top: 1px solid #ededed;
	    border-bottom: 1px solid #ededed;
	}
	.production-selling-navigation {
	    z-index: 100;
	    transition: top .1s;
	}
	.production-selling-navigation__content {
	    padding: 0 60px;
	    max-width: 1136px;
	    margin: 0 auto;
	}
	.production-selling-navigation__list {
	    width: 66.6666%;
	    display: flex;
	    margin-bottom:0;
	    margin-top:0;
	}
	.production-selling-navigation__list>li {
	    -webkit-box-flex: 1;
	    flex: 1 0 0px;
	}
	li:first-child>.production-selling-navigation__item {
	    border-left: none;
	}
	.production-selling-navigation__item.production-selling-navigation__item--active {
	    color: #35c5f0;
	    border-bottom: 3px solid #35c5f0;
	    z-index: 1;
	}
	.production-selling-navigation__item {
	    left: 1px;
	    padding: 14px 10px 15px;
	    font-size: 15px;
	    background-color: #fafafa;
	}
	.production-selling-navigation__item {
	    position: relative;
	    display: block;
	    top: 1px;
	    margin: -1px 0 0-1px;
	    box-sizing: border-box;
	    text-align: center;
	    line-height: 20px;
	    font-weight: 700;
	    border-color: transparent transparent #ededed #ededed;
	    transition: color .1s;
	}
	.production-selling-navigation__item:hover {
		color: #35c5f0;
	}
	.production-selling-navigation__item__count {
	    margin-left: 4px;
	    color: #9e9e9e;
	    font-size: 15px;
	}
	.container {
	    margin-right: auto;
	    margin-left: auto;
	    width: 1136px;
	    max-width: 100%;
	    box-sizing: border-box;
	    min-height: 1px;
	}
	.row {
	    display: flex;
	    flex-wrap: wrap;
	    box-sizing: border-box;
	    margin-right: -10px;
	    margin-left: -10px;
	}
	.col-lg-8 {
	    padding-right: 10px;
	    padding-left: 10px;
	    position: relative;
	    width: 100%;
	    min-height: 1px;
	    box-sizing: border-box;
	    -webkit-box-flex: 0;
	    flex: 0 0 66.6666666667%;
	    max-width: 66.6666666667%;
	}
	.production-selling-content {
	    margin: 60px auto 0;
	    max-width: 692px;
	}
	.production-selling-section {
	    margin: 0 0 80px;
	    padding: 0;
	}
	.production-selling-section__header {
	    display: flex;
	    -webkit-box-pack: justify;
	    justify-content: space-between;
	    -webkit-box-align: center;
	    align-items: center;
	    margin: 20px 0;
	}
	.production-selling-section__title {
	    font-size: 18px;
	    line-height: 24px;
	    font-weight: 700;
	    color: #000;
	}
	.production-selling-section__title>.count {
	    color: #35c5f0;
	    margin-left: 4px;
	}
	/* 상품정보 */
	.production-selling-description.production-selling-description--open {
	    max-height: none;
	}
	.production-selling-description {
	    position: relative;
	    overflow: hidden;
	}
	.production-selling-description__delivery-notice {
	    margin: 0 0 20px;
	}
	.production-selling-description__delivery-notice li {
	    font-size: 15px;
	    line-height: 23px;
	    color: #424242;
	}
	.production-selling-description__delivery-notice li:before {
	    content: "∙";
	    margin-right: 4px;
	}
	.production-selling-description__delivery-notice li b {
	    font-weight: 700;
	}
	.production-selling-description__delivery-notice li .red {
	    color: #f77;
	}
	.production-selling-description__content {
	    font-size: 15px;
	    line-height: 20px;
	}
	.production-selling-description__content img {
	    max-width: 100%!important;
	    height: auto;
	    display: block;
	}
	.production-selling-description__content>* {
	    width: 100%!important;
	}
	.production-selling-section {
	    margin: 0 0 80px;
	    padding: 0;
	}
	/* 리뷰 */
	.production-select-text-button {
	    display: flex;
	    -webkit-box-pack: justify;
	    justify-content: space-between;
	    -webkit-box-align: center;
	    align-items: center;
	    width: 100%;
	    border: 1px solid #dbdbdb;
	    background-color: #fff;
	    border-radius: 4px;
	    cursor: pointer;
	    position: relative;
	    margin-bottom: 20px;
	    padding: 0;
	}
	.production-select-text-button__text {
	    width: 100%;
	    color: #424242;
	    font-size: 15px;
	    line-height: 21px;
	    display: inline-block;
	    white-space: nowrap;
	    overflow: hidden;
	    text-overflow: ellipsis;
	    text-align: left;
	    padding: 9px 16px 8px;
	}
	.production-select-text-button__icon {
	    position: absolute;
	    right: 16px;
	}
	.production-review-feed__header-v2 {
	    width: 100%;
	    background-color: #f7f8fa;
	    border-radius: 8px;
	    text-align: center;
	    margin: 16px 0 24px;
	}
	.production-review-feed__header-v2__stars {
	    padding: 24px 0;
	    display: flex;
	}
	.production-review-feed__header-v2__stars__badge {
	    padding-top: 50px;
	    -webkit-box-flex: 0;
	    flex: 0 0 305px;
	    border-right: 1px solid #ededed;
	}
	.production-review-feed__header-v2__stars__badge>.badge__mobile {
	    display: none;
	    color: #292929;
	    font-size: 32px;
	    font-weight: 700;
	    text-align: center;
	    margin-bottom: 10px;
	}
	.production-review-feed__header-v2__stars__badge>.icon {
	    font-size: 24px;
	    text-align: center;
	}
	.production-review-feed__header-v2__stars__badge>.icon>svg {
	    margin-right: 2px;
	}
	.production-review-feed__header-v2__stars__badge>.badge__pc {
	    display: inline-block;
	    font-size: 34px;
	    margin-left: 12px;
	    font-weight: 700;
	}
	.production-review-feed__header-v2__stars__avg {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    margin: 0 auto;
	}
	.production-review-feed__header-v2__stars__avg__container {
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    margin-bottom: 4px;
	}
	.production-review-feed__header-v2__stars__avg__container>svg{
	    font-size:17px;
	}
	.production-review-feed__header-v2__stars__avg__label {
	    font-size: 20px;
	    font-weight: 400;
	    padding-top: 2px;
	    font-weight: 700;
	}
	.production-review-feed__header-v2__stars__avg__number{
	    display: inline-block;
	    font-size: 20px;
	    font-weight: 400;
	    padding-top: 4px;
	    font-weight: 700;
	}
	.production-review-feed__header-v2__stars__avg__number>span {
	    display: inline-block;
	    color: #9e9e9e;
	    font-size: 15px;
	    font-weight: 400;
	    padding-top: 4px;
	}
	.production-selling-section__right {
	    font-size: 15px;
	    line-height: 21px;
	    font-weight: 700;
	    color: #000;
	}
	.production-selling-section__right>button {
	    color: #35c5f0;
	    transition: opacity .1s;
	    font: inherit;
	    margin: 0;
	    padding: 0;
	    background: none;
	    border: none;
	}
	.production-review-feed__filter {
	    padding: 12px 0;
	    display: flex;
	    -webkit-box-pack: justify;
	    justify-content: space-between;
	    -webkit-box-align: center;
	    align-items: center;
	    border: solid #ededed;
	    border-width: 1px 0;
	    margin-bottom: 20px;
	}
	.production-review-feed__filter__order-list {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    display: flex;
	    margin: 0 -3px;
	}
	.production-review-feed__filter__order--active {
	    cursor: pointer;
	    margin: 0 6px 0 0;
	    padding: 3px;
	    font-size: 13px;
	    font-weight: 700;
	    line-height: 17px;
	    background: none;
	    border: none;
	    transition: opacity .1s;
	    color: #35c5f0;
	}
	.production-review-feed__filter__order {
	    cursor: pointer;
	    margin: 0 6px 0 0;
	    padding: 3px;
	    font-size: 13px;
	    font-weight: 700;
	    line-height: 17px;
	    background: none;
	    border: none;
	    transition: opacity .1s;
	    color: #757575;
	}
	.production-review-feed__filter__order--photo {
	    padding-left: 12px;
	    border-left: 1px solid #ededed;
	}
	.production-review-feed__filter__order>.icon {
	    vertical-align: -4px;
	    margin-right: 5px;
	    margin-top: -4px;
	}
	.production-review-feed__filter__order--active>.icon {
	    vertical-align: -4px;
	    margin-right: 5px;
	    margin-top: -4px;
	}
	.production-review-feed__filter__order:hover {
	    opacity: .6;
	}
	.production-review-item__container {
	    padding-bottom: 40px;
	    margin-bottom: 40px;
	    border-bottom: 1px solid #ededed;
	}
	.production-review-item {
	    position: relative;
	}
	.production-review-item__writer {
	    display: flex;
	}
	.production-review-item__writer__img  {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    margin-top: 4px;
	    margin-right: 8px;
	    border-radius: 50%;
	    width: 24px;
	    height: 24px;
	}
	.production-review-item__writer__info {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	}
	.production-review-item__writer__info__name {
	    font-size: 13px;
	    color: #424242;
	    margin-bottom: 7px;
	}
	.production-review-item__writer__info__total-star-wrap {
	    display: inline;
	    background: none;
	    border: none;
	    padding: 0;
	}
	.production-review-item__writer__info__total-star {
	    font-size: 16px;
	}
	/* .production-review-item__writer__info__total-star>svg {
	    margin-right: 2px;
	} */
	.production-review-item__writer__info__total-star__down-icon {
	    display: none;
	    color: #35c5f0;
	    vertical-align: 3px;
	    margin: 0 1px 0 4px;
	}
	.production-review-item__writer__info__date {
	    vertical-align: 3px;
	    margin-left: 5px;
	    font-family: Tahoma,sans;
	    font-size: 13px;
	    color: #757575;
	}
	.production-review-item__name {
	    position: relative;
	    display: block;
	    color: #757575;
	    font-size: 13px;
	    margin: 20px 0;
	    padding-left: 10px;
	    line-height: 16px;
	}
	.production-review-item__name:before {
	    position: absolute;
	    left: 0;
	    content: "";
	    width: 3px;
	    height: 100%;
	    background-color: #ededed;
	    border-radius: 2px;
	}
	.production-review-item__name>p {
	    display: block;
	    font-size: 13px;
	    font-weight: 500;
	    color: #424242;
	    margin-bottom: 4px;
	}
	.production-review-item__description {
	    margin: 20px 0;
	    font-size: 15px;
	    line-height: 21px;
	    letter-spacing: normal;
	    color: #424242;
	}
	.production-review-item__img__btn {
	    background: none;
	    border: none;
	    margin: 0;
	    padding: 0;
	}
	.production-review-item__img {
	    width: 112px;
	    height: 112px;
	    border-radius: 4px;
	    background-color: #757575;
	}
	.production-review-item__help {
	    display: flex;
	}
	.production-review-item__help__btn {
	    width: 114px;
	    height: 32px;
	    border-radius: 4px;
	    border: 1px solid #35c5f0;
	    font-size: 15px;
	    color: #35c5f0;
	    font-weight: 700;
	    margin-right: 10px;
	    background-color: #fff;
	}
	.production-review-item__help__btn.help-none {
		display:none;
	}
	.production-review-item__help__btn--active {
		width: 114px;
	    height: 32px;
	    border-radius: 4px;
	    border: 1px solid #35c5f0;
	    font-size: 15px;
	    font-weight: 700;
	    margin-right: 10px;
	    background-color: #35c5f0;
	    color: #fff;
	}
	.production-review-item__help__btn--active.help-none {
		display:none;
	}
	.production-review-item__help__text {
	    font-size: 13px;
	    font-weight: 400;
	    color: #424242;
	    margin-top: 8px;
	}
	.production-review-item__help__text__number {
	    font-weight: 700;
	}
	.production-review-item__help__btn {
	    width: 114px;
	    height: 32px;
	    border-radius: 4px;
	    border: 1px solid #35c5f0;
	    font-size: 15px;
	    font-weight: 700;
	    margin-right: 10px;
	}
	.production-review-item__help__btn>svg {
	    vertical-align: text-top;
	}
	/* 문의하기 */
	.production-question-feed {
	    margin-top: 0;
	}
	.production-question-feed__item {
	    margin: 0 0 40px;
	}
	.production-question-feed__item__header {
	    position: relative;
	    display: block;
	    margin: 0 0 8px;
	    font-size: 12px;
	    line-height: 16px;
	    color: #424242;
	}
	.production-question-feed__item__author {
	    margin: 0 0 9px;
	    font-size: 12px;
	    line-height: 16px;
	    color: #bdbdbd;
	}
	.production-question-feed__item__question {
	    padding-left: 22px;
	    font-size: 15px;
	    line-height: 22px;
	    position: relative;
	    margin: 0 0 10px;
	    color: #424242;
	}
	.production-question-feed__item__badge {
	    position: absolute;
	    top: 0;
	    left: 0;
	    color: #35c5f0;
	    font-weight: 700;
	}
	.production-question-feed__item__content {
	    white-space: pre-line;
	}
	.production-question-feed__item__content__option-name {
	    font-size: 13px;
	    line-height: 22px;
	    color: #bdbdbd;
	    margin-bottom: 6px;
	}
	/* 배송/환불 */
	.production-selling-table {
	    font-size: 13px;
	    width: 100%;
	    border-collapse: collapse;
	    border-spacing: 0;
	    margin-top: 28px;
	}
	.production-selling-table tr {
	    border: none;
	    border-bottom: 1px solid #ededed;
	}
	.production-selling-table th {
	    padding: 12px 6px;
	    text-align: left;
	    line-height: 1.38;
	    width: 18ch;
	    color: #757575;
	}
	.production-selling-table td {
    	padding: 12px 6px;
	    text-align: left;
	    line-height: 1.38;
	    color: #424242;
	    white-space: pre-line;
	}
	.production-selling-refund__table {
	    margin-bottom: 40px;
	}
	.production-selling-table {
	    font-size: 13px;
	    width: 100%;
	    border-collapse: collapse;
	    border-spacing: 0;
	    margin-top: 28px;
	}
	.production-selling-refund__title {
	    margin: 30px 0 5px;
	    color: #424242;
	    font-size: 15px;
	    font-weight: 700;
	    line-height: 21px;
	}
	.production-selling-refund__note {
    	font-size: 13px;
	    line-height: 17px;
	    margin-bottom: 10px;
	    color: #757575;
	}
	.production-selling-refund__list {
	    font-size: 13px;
	    line-height: 17px;
	    counter-reset: index;
	    color: #424242;
	    padding-left:0;
	}
	.production-selling-refund__list>li {
	    position: relative;
	    padding-left: 14px;
	}
	.production-selling-refund__list>li:before {
	    counter-increment: index;
	    content: counter(index) " ";
	    font-weight: 700;
	    position: absolute;
	    top: 0;
	    left: 0;
	}
	.production-selling-refund__list>li small {
	    color: #757575;
	}
	/* 사이드 sticky */
	.production-selling__detail__sidebar {
	    display: block;
	    position: relative;
	}
	.col-4 {
	    padding-right: 10px;
	    padding-left: 10px;
	    width: 100%;
	    min-height: 1px;
	    box-sizing: border-box;
	    -webkit-box-flex: 0;
	    flex: 0 0 33.3333333333%;
	    max-width: 33.3333333333%;
	}
	.production-selling-sidebar, .production-selling-sidebar-wrap {
	    z-index: 100;
	}
	.production-selling-sidebar__content {
	    max-width: 300px;
	    padding: 0 0 20px;
	    margin: 0 auto;
	    box-sizing: border-box;
	    height: 100%;
	}
	.production-selling-sidebar-content {
	    display: flex;
	    -webkit-box-direction: normal;
	    -webkit-box-orient: vertical;
	    flex-direction: column;
	}
	.production-selling-sidebar-content__option-form.production-selling-option-form {
	    -webkit-box-flex: 1;
	    flex: 1 0 0px;
	    min-height: 0;
	}
	.production-selling-option-form {
	    display: flex;
	    -webkit-box-direction: normal;
	    -webkit-box-orient: vertical;
	    flex-direction: column;
	}
	.selling-option-form-content {
	    display: flex;
	    -webkit-box-direction: normal;
	    -webkit-box-orient: vertical;
	    flex-direction: column;
	}
	.production-selling-option-form__form {
	    margin-top: 20px;
	    min-height: 1px;
	}
	.production-selling-option-form, .production-selling-option-form__form {
	    -webkit-box-flex: 1;
	    flex: 1 1 auto;
	}
	.deal-selling-option-form-content .production-select-dropdown {
	    margin: 0 0 10px;
	}
	.deal-selling-option-form-content .production-select-dropdown-side {
	    margin: 0 0 10px;
	}
	.production-select-dropdown {
	    position: relative;
	    width: 100%;
	}
	.production-select-dropdown-side {
	    position: relative;
	    width: 100%;
	}
	.production-select-button {
	    display: flex;
	    -webkit-box-pack: justify;
	    justify-content: space-between;
	    -webkit-box-align: center;
	    align-items: center;
	    width: 100%;
	    border: 1px solid #dbdbdb;
	    background-color: #fff;
	    border-radius: 4px;
	    cursor: pointer;
	    position: relative;
	    font-family: inherit;
	    padding: 0;
	    transition: background-color .1s;
	}
	.production-select-button__production {
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    -webkit-box-flex: 1;
	    flex: 1;
	    position: relative;
	    margin: 13px 16px 13px 0;
	}
	.production-select-button__production__blank {
	    padding: 10px 0 11px 16px;
	    font-size: 15px;
	    line-height: 21px;
	}
	.production-select-button__production__icon {
	    position: absolute;
	    right: 0;
	}
	.production-select-button__production__icon>svg {
	    vertical-align: -3px;
	    color: #757575;
	}
	.production-selling-option-form__form .selling-option-form-content__list {
	    -webkit-box-flex: 1;
	    flex: 1 1 auto;
	}
	.selling-option-form-content__list {
	    position: relative;
	    min-height: 1px;
	    overflow-y: auto;
    }
    .selling-option-form-content__price {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    -webkit-box-pack: justify;
	    justify-content: space-between;
	    margin-top: 10px;
	}
	.selling-option-form-content__price__left {
	    font-size: 13px;
	}
	.selling-option-form-content__price__right {
	    font-size: 20px;
	    text-align: right;
	}
	.selling-option-form-content__price__right {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    font-weight: 700;
	    color: #000;
	}
	.selling-option-form-content__price__number {
	    font-family: Tahoma,sans;
	}
	.production-selling-option-form__footer {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    display: flex;
	    margin: 20px -3px 0;
	}
	.production-selling-sidebar-content .production-selling-sidebar-content__scrap.button {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    width: 55px;
	    background-color: #fff;
	    border-color: #dbdbdb;
	    color: #757575;
	}
	.production-selling-sidebar-content .production-selling-sidebar-content__scrap.button:hover {
	    background-color: rgb(250, 250, 250);
	}
	.production-selling-sidebar-content .production-selling-sidebar-content__scrap--active.button {
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    width: 55px;
	    background-color: #fff;
	    border-color: #dbdbdb;
	    color: #757575;
	}
	.production-selling-sidebar-content .production-selling-sidebar-content__scrap--active.button:hover {
	     background-color: rgb(250, 250, 250);
	}
	.production-selling-sidebar-content .production-selling-sidebar-content__scrap.button>.icon--stroke {
	    fill: transparent;
	    stroke: #424242;
	    stroke-width: 1px;
	    transition: fill .1s,stroke .1s;
	    vertical-align: -5px;
	}
	.production-selling-sidebar-content .production-selling-sidebar-content__scrap--active.button>.icon--stroke {
	    fill: #35c5f0;
	    stroke: transparent;
	    stroke-width: 1px;
	    transition: fill .1s,stroke .1s;
	    vertical-align: -5px;
	}
	.production-selling-option-form__footer>.button {
	    margin: 0 3px;
	}
	.button--size-55 {
	    padding: 13px 10px 14px;
	    font-size: 17px;
	    line-height: 26px;
	}
	.button--color-gray-14-inverted {
	    background-color: #fff;
	    border-color: #dbdbdb;
	    color: #757575;
	}
	.button {
	    user-select: none;
	    display: inline-block;
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
	}
	.production-selling-option-form__footer>.button {
	    -webkit-box-flex: 1;
	    flex: 1 0 0px;
	    margin: 0 3px;
	}
	.button--size-55 {
	    padding: 13px 10px 14px;
	    font-size: 17px;
	    line-height: 26px;
	}
	.button--color-blue-inverted {
	    background-color: #fff;
	    border-color: #35c5f0;
	    color: #35c5f0;
	}
	.button--color-blue {
	    background-color: #35c5f0;
	    border-color: #35c5f0;
	    color: #fff;
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
	    
	    /* 리뷰 페이징 처리 */
		//페이지 번호 및  링크
		/* var pager = jQuery("#ampaginationsm").pagination({
			maxSize : 5,
			totals : '${dbCount}', 
			pageSize : '${pageSize}',
			page : '${reqPage}', 
			
			//alert(maxSize + "," + totals + "," + pageSize + "," + page);
			
			lastText : '&raquo;&raquo;',
			firstText : '&laquo;&laquo;',
			preTest : '&laquo;',
			nextTest : '&raquo;',
			
			btnSize : 'sm'
		});
		
		//
		jQuery("#ampaginationsm").on('am.pagination.change',function(e){
			$(location).attr('href','http://localhost:9000/MyCGV/board/board_list.do?rpage='+e.page); 
			//location.href('이동페이지');
		}); */
	    
		/* 메인 상단 - 스크랩 */
		$("#main-scrap").click(function(){
			if($("#main-scrap").hasClass("production-selling-header__action__button--active")) {
				$("#main-scrap").removeClass("production-selling-header__action__button--active");
			} else {
				$("#main-scrap").addClass("production-selling-header__action__button--active");
			}
		});
		
	    /* 상품선택 콤보박스 : 리스트 */
		$(".production-select-dropdown__button").click(function(){
	    	if($("#pro-select-list").hasClass("open")) {
	    		$("#pro-select-list").removeClass("open");
	    	} else {
	    		$("#pro-select-list").addClass("open"); 
	    	}
	    });	    
	    /* 상품선택한 화면 */
	   $("#select-item-1").click(function(){
	    	select_list();
	    	$("#pro-select-1").removeClass("select-none");
	    	$("#pro-order-0").removeClass("select-none");
	    	$("#pro-order-1").removeClass("order-none");
	    		if($("#pro-select-list").hasClass("open")) {
	    			$(".production-select-dropdown__list-container").removeClass("open");
	    		}
	    	alert("상품체크");
	    });
	    $("#select-item-2").click(function(){
	    	select_list();
	    	$("#pro-select-2").removeClass("select-none");
	    	$("#pro-order-0").removeClass("select-none");
	    	$("#pro-order-2").removeClass("order-none");
	    		if($("#pro-select-list").hasClass("open")) {
	    			$(".production-select-dropdown__list-container").removeClass("open");
	    		}
	    	alert("상품체크2");
	    });
	    
		function select_list() {
			$("#pro-select-0").addClass("select-none");
			$("#pro-select-1").addClass("select-none");
			$("#pro-select-2").addClass("select-none");
		}
		
		/* 주문상품 삭제 */
		$("#order-del-1").click(function(){
			$("#pro-order-1").addClass("order-none");
			alert("삭제1");
		});
		$("#order-del-2").click(function(){
			$("#pro-order-2").addClass("order-none");
			alert("삭제2");
		});
		
		/* 리뷰 - 베스트순, 최신순, 사진리뷰 클릭시  */
		/* 베스트순 */
		$("#review-best").click(function(){
				$("#review-best").addClass("production-review-feed__filter__order--active");
				$("#review-best").removeClass("production-review-feed__filter__order");
				$("#review-recently").addClass("production-review-feed__filter__order"); 
				$("#review-recently").removeClass("production-review-feed__filter__order--active"); 
		});
		
		/* 최신순 */
		$("#review-recently").click(function(){
				$("#review-recently").addClass("production-review-feed__filter__order--active");
				$("#review-recently").removeClass("production-review-feed__filter__order");
				$("#review-best").removeClass("production-review-feed__filter__order--active"); 
				$("#review-best").addClass("production-review-feed__filter__order");
		});
		
		/* 사진리뷰 */
		$("#review-photo").click(function(){
			if($(this).hasClass("production-review-feed__filter__order--active")) {
				$("#review-photo").removeClass("production-review-feed__filter__order--active");
				$("#review-photo").addClass("production-review-feed__filter__order");
			} else {
				$("#review-photo").addClass("production-review-feed__filter__order--active");
				$("#review-photo").removeClass("production-review-feed__filter__order");
			}
		});
		
		/* 도움이 돼요 */
		$("#help-1").click(function(){
			if($(this).hasClass("help-none")) {
				$("#help-1").removeClass("help-none");
				$("#help-2").addClass("help-none");
			} else {
				$("#help-1").addClass("help-none");
				$("#help-2").removeClass("help-none");
			}
		});
		$("#help-2").click(function(){
			if($(this).hasClass("help-none")) {
				$("#help-2").removeClass("help-none");
				$("#help-1").addClass("help-none");
			} else {
				$("#help-2").addClass("help-none");
				$("#help-1").removeClass("help-none");
			}
		});
		
		/* 사이드 주문 - 스크랩*/
		$("#side-order").click(function(){
			if($(this).hasClass("production-selling-sidebar-content__scrap--active")) {
				$("#side-order").removeClass("production-selling-sidebar-content__scrap--active");
				$("#side-order").addClass("production-selling-sidebar-content__scrap");
			} else {
				$("#side-order").addClass("production-selling-sidebar-content__scrap--active");
				$("#side-order").removeClass("production-selling-sidebar-content__scrap");
			}
		});
		
		/* 사이드 주문 : 리스트 */
	    $(".production-select-dropdown__button-side").click(function(){
	    	if($("#side-order-list").hasClass("open")) {
	    		$("#side-order-list").removeClass("open");
	    	} else {
	    		$("#side-order-list").addClass("open"); 
	    	}
	    });
	    
	    /* 사이드 주문 : 상품선택한 화면 */
	    $("#select-side-item-1").click(function(){
	    	select_list_side();
	    	$("#pro-select-side-1").removeClass("select-none");
	    	$("#pro-order-side-0").removeClass("select-none");
	    	$("#pro-order-side-1").removeClass("order-none");
	    		if($("#side-order-list").hasClass("open")) {
	    			$("#side-order-list").removeClass("open");
	    		}
	    	alert("상품체크");
	    });
	    $("#select-side-item-2").click(function(){
	    	select_list_side();
	    	$("#pro-select-side-2").removeClass("select-none");
	    	$("#pro-order-side-0").removeClass("select-none");
	    	$("#pro-order-side-2").removeClass("order-none");
	    		if($("#side-order-list").hasClass("open")) {
	    			$("#side-order-list").removeClass("open");
	    		}
	    	alert("상품체크2");
	    });
	    
		function select_list_side() {
			$("#pro-select-side-0").addClass("select-none");
			$("#pro-select-side-1").addClass("select-none");
			$("#pro-select-side-2").addClass("select-none");
		}

		/* 사이드 주문상품 삭제 */
		$("#order-del-side-1").click(function(){
			$("#pro-order-side-1").addClass("order-none");
			alert("삭제1");
		});
		$("#order-del-side-2").click(function(){
			$("#pro-order-side-2").addClass("order-none");
			alert("삭제2");
		});
		
		// 스크롤 위치마다 border-bottom 주기 
		var information =$('#production-selling-information').scrollTop();
		var review =$('#production-selling-review').scrollTop() +1500;
		var question =$('#production-selling-question').scrollTop() +4000;
		var delivery =$('#production-selling-delivery').scrollTop() + 5500;
	
		$(window).scroll(function() {
			
			var scroll = $(window).scrollTop();
			
			if (scroll < review) 
			{
				remove_list();
			  $("#scroll-pro").addClass("production-selling-navigation__item--active");
			} 
			else if (review <= scroll && scroll< question) 
			{
				remove_list();
			  $("#scroll-review").addClass("production-selling-navigation__item--active");
			} 
			else if (question <= scroll && scroll < delivery) 
			{
				remove_list();
			  $("#scroll-q-a").addClass("production-selling-navigation__item--active");
			}
			else if (delivery <= scroll)
			{
				remove_list();
			  $("#scroll-delivery").addClass("production-selling-navigation__item--active");
			} else {
				remove_list();
				$("#scroll-pro").addClass("production-selling-navigation__item--active");
			}
		
		});
		
		function remove_list() {
			$("#scroll-pro").removeClass("production-selling-navigation__item--active");
			$("#scroll-review").removeClass("production-selling-navigation__item--active");
			$("#scroll-q-a").removeClass("production-selling-navigation__item--active");
			$("#scroll-delivery").removeClass("production-selling-navigation__item--active");
			
		} 

		
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
					<div class="production-selling-header__content production-selling-header__content--deal">
						<div class="production-selling-header__action">
							<button class="production-selling-header__action__button production-selling-header__action__button-scrap " type="button" id="main-scrap">
								<!-- production-selling-header__action__button--active -->
								<svg class="icon--stroke" aria-label="스크랩" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path></svg>
									<span class="count">55</span></button> <!-- 스크랩수 -->
						</div> 
						<P class="production-selling-header__review-wrap">
							<a class="production-selling-header__review" href="#">
								<span class="production-selling-header__review__icon" aria-label="별점 4.6점">
									<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
										<clipPath id="star-clip-1.000"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs>
										<use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
									<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
										<clipPath id="star-clip-1.000">
										<rect x="0" y="0" width="16" height="16"></rect></clipPath></defs>
										<use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
									<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1.000" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
										<clipPath id="star-clip-1.000">
										<rect x="0" y="0" width="16" height="16"></rect></clipPath></defs>
										<use xlink:href="#star-path-1.000" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1.000)" xlink:href="#star-path-1.000"></use></svg>
									<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-409" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
										<clipPath id="star-clip-409">
										<rect x="0" y="0" width="8.64" height="16"></rect></clipPath></defs>
										<use xlink:href="#star-path-409" fill="#DBDBDB"></use><use clip-path="url(#star-clip-409)" xlink:href="#star-path-409"></use></svg>
									<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-544" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
										<clipPath id="star-clip-544">
										<rect x="0" y="0" width="0" height="16"></rect></clipPath></defs>
										<use xlink:href="#star-path-544" fill="#DBDBDB"></use><use clip-path="url(#star-clip-544)" xlink:href="#star-path-544"></use></svg>
								</span>
								<span class="production-selling-header__review__text">
									<span class="number">28</span><span class="postfix">개 리뷰</span>
								</span>
							</a>
						</P> <!-- production-selling-header__review-wrap -->
						<p class="production-selling-header__price">
							<span class="production-selling-header__price__row">
								<span class="production-selling-header__price__discount">
									<span class="number">55</span><span class="percent">%</span>&nbsp;</span>
								<span class="production-selling-header__price__price-wrap">
									<span class="production-selling-header__price__price">
										<span class="number">139,000</span><span class="won">원</span><span class="won"> 외</span><span class="production-selling-header__price__badge"><svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet"><rect width="30" height="20" fill="#F77" rx="4"></rect><path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg></span></span></span>
							</span> <!-- production-selling-header__price__row -->
						</p>
					</div>
					<p class=" production-selling-header__delivery production-selling-header__delivery--deal">
						<span class="production-selling-header__delivery__type">배송 상품정보 참고</span>
					</p>
				</div> <!-- production-selling-header -->
				<div class="production-selling-option-form production-selling-overview__option-form">
					<div class="selling-option-form-content deal-selling-option-form-content production-selling-option-form__form">
						<div class="production-select-dropdown">
							<div class="production-select-dropdown__button">
								<button class="production-select-button" type="button">
									<div class="production-select-button__production" id="pro-select-0">
										<div class="production-select-button__production__blank">상품을 선택하세요.</div>
										<div class="production-select-button__production__icon"><svg width="1em" height="1em" viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" fill-rule="evenodd" d="M2.87 4L1.33 5.5 8 12l6.67-6.5L13.13 4 8 9z"></path></svg></div>
									</div>
									<div class="production-select-button__production select-none" id="pro-select-1">
										<div class="production-select-button__production__index">1</div>
										<div class="production-select-button__production__image--wrap"><img class="production-select-button__production__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161043210673832728.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;q=0.8&amp;webp=1"></div>
										<div class="production-select-button__production__text">[단독] 고흐 무헤드 원목 침대(매트리스 제외) SS/Q 2colors</div>
										<div class="production-select-button__production__icon"><svg width="1em" height="1em" viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" fill-rule="evenodd" d="M2.87 4L1.33 5.5 8 12l6.67-6.5L13.13 4 8 9z"></path></svg></div>
									</div>
									<div class="production-select-button__production select-none" id="pro-select-2">
										<div class="production-select-button__production__index">2</div>
										<div class="production-select-button__production__image--wrap"><img class="production-select-button__production__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161043210673832728.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;q=0.8&amp;webp=1"></div>
										<div class="production-select-button__production__text">[단독] 고흐 무헤드 원목 침대(매트리스 포함) SS/Q 2colors</div>
										<div class="production-select-button__production__icon"><svg width="1em" height="1em" viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" fill-rule="evenodd" d="M2.87 4L1.33 5.5 8 12l6.67-6.5L13.13 4 8 9z"></path></svg></div>
									</div>
								</button>
							</div>
							<div class="production-select-dropdown__list-container" id="pro-select-list">
								<ul class="production-select-list production-select-dropdown__list">
									<li class="production-select-list__item" id="select-item-1">
										<button class="production-select-item" type="button"><div class="production-select-item__index">1</div>
										<div class="production-select-item__image"><img class="image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161043210673832728.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;q=0.8&amp;webp=1"></div>
										<div class="production-select-item__contents"><span class="production-select-item__contents__name">[단독] 고흐 무헤드 원목 침대(매트리스 제외) SS/Q 2colors</span>
										<span class="production-item-price production-select-item__contents__price"><span class="production-item-price__rate">56<span class="percentage">% </span></span>
										<span class="production-item-price__price">99,000</span></span>
										<div class="production-select-item__contents__badges"><svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet"><rect width="30" height="20" fill="#F77" rx="4"></rect><path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg></div></div></button>
									</li>
									<li class="production-select-list__item"  id="select-item-2">
										<button class="production-select-item" type="button"><div class="production-select-item__index">2</div>
										<div class="production-select-item__image"><img class="image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161043644716851412.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;q=0.8&amp;webp=1"></div>
										<div class="production-select-item__contents"><span class="production-select-item__contents__name">[단독] 고흐 무헤드 원목 침대(매트리스 포함) SS/Q 2colors</span>
										<span class="production-item-price production-select-item__contents__price"><span class="production-item-price__rate">57<span class="percentage">% </span></span>
										<span class="production-item-price__price">169,000</span></span>
										<div class="production-select-item__contents__badges"><svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet"><rect width="30" height="20" fill="#F77" rx="4"></rect><path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg></div></div></button>
									</li>
									<li class="production-select-list__item"  id="select-item-3">
										<button class="production-select-item" type="button"><div class="production-select-item__index">3</div>
										<div class="production-select-item__image"><img class="image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161043640256083182.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;q=0.8&amp;webp=1" ></div>
										<div class="production-select-item__contents"><span class="production-select-item__contents__name">[단독] 고흐 원목 침대(매트리스 제외) SS/Q 2colors</span>
										<span class="production-item-price production-select-item__contents__price"><span class="production-item-price__rate">52<span class="percentage">% </span></span>
										<span class="production-item-price__price">169,000</span></span>
										<div class="production-select-item__contents__badges"><svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet"><rect width="30" height="20" fill="#F77" rx="4"></rect><path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg></div></div></button>
									</li>
									<li class="production-select-list__item"  id="select-item-4">
										<button class="production-select-item" type="button"><div class="production-select-item__index">4</div>
										<div class="production-select-item__image"><img class="image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161043642375790319.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;q=0.8&amp;webp=1"></div>
										<div class="production-select-item__contents"><span class="production-select-item__contents__name">[단독] 고흐 원목 침대(매트리스 포함) SS/Q 2colors</span>
										<span class="production-item-price production-select-item__contents__price"><span class="production-item-price__rate">56<span class="percentage">% </span></span>
										<span class="production-item-price__price">239,000</span></span>
										<div class="production-select-item__contents__badges"><svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet"><rect width="30" height="20" fill="#F77" rx="4"></rect><path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg></div></div></button>
									</li>
									<li class="production-select-list__item"  id="select-item-5">
										<button class="production-select-item" type="button"><div class="production-select-item__index">5</div>
										<div class="production-select-item__image"><img class="image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/160334539595702064.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;q=0.8&amp;webp=1"></div>
										<div class="production-select-item__contents"><span class="production-select-item__contents__name">로슈 고무나무 원목 침대(매트리스 제외) SS/Q</span>
										<span class="production-item-price production-select-item__contents__price"><span class="production-item-price__rate">53<span class="percentage">% </span></span>
										<span class="production-item-price__price">259,000</span></span>
										<div class="production-select-item__contents__badges"><svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet"><rect width="30" height="20" fill="#F77" rx="4"></rect><path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg></div></div></button>
									</li>
								</ul>
							</div>
						</div> <!-- production-select-dropdown -->
						<ul class="selling-option-form-content__list select-none" id="pro-order-0">
							<li class="order-list order-none" id="pro-order-1" ><article class="selling-option-item">
								<h1 class="selling-option-item__production">[단독] 고흐 무헤드 원목 침대(매트리스 제외) SS/Q 2colors</h1>
								<h2 class="selling-option-item__name">침대프레임 사이즈: 퀸(매트제외) / 색상 옵션: 내츄럴원목</h2>
								<button class="selling-option-item__delete" type="button" aria-label="삭제" id="order-del-1"><svg width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet"><path fill-rule="nonzero" d="M6 4.6L10.3.3l1.4 1.4L7.4 6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z"></path></svg></button>
								<div class="selling-option-item__controls">
									<div class="selling-option-item__quantity">
										<div class="input-group select-input option-count-input"><select class="form-control">
										<option value="0">1</option>
										<option value="1">2</option>
										<option value="2">3</option>
										<option value="3">4</option>
										<option value="4">5</option>
										<option value="5">6</option>
										<option value="6">7</option>
										<option value="7">8</option>
										<option value="8">9</option>
										<option value="9">10+</option></select>
										</div>
									</div>
									<p class="selling-option-item__price"><span class="selling-option-item__price__number">139,000</span>원</p></div>
									</article>
								</li>
							<li class="order-list order-none" id="pro-order-2"><article class="selling-option-item">
								<h1 class="selling-option-item__production">[단독] 고흐 무헤드 원목 침대(매트리스 제외) SS/Q 2colors</h1>
								<h2 class="selling-option-item__name">침대프레임 사이즈: 퀸(매트제외) / 색상 옵션: 내츄럴원목</h2>
								<button class="selling-option-item__delete" type="button" aria-label="삭제" id="order-del-2"><svg width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet"><path fill-rule="nonzero" d="M6 4.6L10.3.3l1.4 1.4L7.4 6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z"></path></svg></button>
								<div class="selling-option-item__controls">
									<div class="selling-option-item__quantity">
										<div class="input-group select-input option-count-input"><select class="form-control">
										<option value="0">1</option>
										<option value="1">2</option>
										<option value="2">3</option>
										<option value="3">4</option>
										<option value="4">5</option>
										<option value="5">6</option>
										<option value="6">7</option>
										<option value="7">8</option>
										<option value="8">9</option>
										<option value="9">10+</option></select>
										</div>
									</div>
									<p class="selling-option-item__price"><span class="selling-option-item__price__number">139,000</span>원</p></div>
									</article>
								</li>
							</ul>
						<p class="selling-option-form-content__price">
							<span class="selling-option-form-content__price__left">주문금액</span>
							<span class="selling-option-form-content__price__right">
								<span class="selling-option-form-content__price__number">0</span>원</span>
						</p>
					</div>
					<div class="production-selling-option-form__footer">
						<button class="button button--color-blue-inverted button--size-55 button--shape-4" type="button">장바구니</button>
						<button class="button button--color-blue button--size-55 button--shape-4" type="button">바로구매</button>
					</div>
				</div> <!-- production-selling-option-form production-selling-overview__option-form -->
			</div>
			
		</div> <!-- production-selling-overview__container row -->
	</div> <!-- production-selling-overview containe -->
	<div data-sticky-enabled="false" data-sticky-disabled="false" data-sticky-always="false" data-sticky-ignore="false" data-direction="top" data-offset="130" class="sticky-container production-selling-navigation-wrap" style="position: sticky; top: 0;">
		<div class="sticky-child production-selling-navigation" style="position:relative">
			<nav class="production-selling-navigation__content">
				<ol class="production-selling-navigation__list">
					<li><a class="production-selling-navigation__item production-selling-navigation__item--active" href="#production-selling-information" id="scroll-pro">상품정보</a></li>
					<li><a class="production-selling-navigation__item" href="#production-selling-review" id="scroll-review">리뷰<span class="production-selling-navigation__item__count">260</span></a></li>
					<li><a class="production-selling-navigation__item" href="#production-selling-question" id="scroll-q-a">문의<span class="production-selling-navigation__item__count">356</span></a></li>
					<li><a class="production-selling-navigation__item" href="#production-selling-delivery" id="scroll-delivery">배송/환불</a></li>
				</ol></nav>
		</div>
	</div> <!-- sticky-container production-selling-navigation-wrap -->
	<div class="production-selling__detail-wrap container">
		<div class="production-selling__detail row">
			<div class="production-selling__detail__content col-12 col-lg-8">
				<div class="production-selling-content">
					<a id="production-selling-information"></a>
					<section class="production-selling-section">
						<div class="production-selling-description production-selling-description--notice production-selling-description--open">
							<ul class="production-selling-description__delivery-notice">
								<li><b>배송까지 <span class="red">최대 15일</span> (주말과 공휴일 제외) 소요됩니다.</b></li>
								<li>고객주문 &gt; 주문확인 &gt; 상품준비(3~7일) &gt; 안내전화 &gt; 배송</li>
								<li>주문확인 이후에는 구매 취소와 배송지 변경이 불가합니다.</li></ul>
							<div class="production-selling-description__content">
								<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/descriptions/1_1610505202382_V.jpg?gif=1&amp;w=720&amp;webp=1">
								<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/deals/descriptions/1_1610600222584_QmUw.jpg?gif=1&amp;w=720&amp;webp=1"></div>
						</div> <!-- 상품정보::사진  -->
					</section>
					<a id="production-selling-review"></a>
					<section class="production-selling-section">
						<header class="production-selling-section__header">
							<h1 class="production-selling-section__title">리뷰 <span class="count">260</span></h1>
							<div class="production-selling-section__right"><button type="button">리뷰쓰기</button></div>
						</header>
						<div class="production-review-feed">
							<div class="production-review-feed__header-v2">
								<div class="production-review-feed__header-v2__stars">
									<div class="production-review-feed__header-v2__stars__badge">
										<span class="badge__mobile">4.5</span> <!-- 별점값 받는 부분 :: 안보임 -->
										<span class="icon" aria-label="별점 4.5점">
											<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
												<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
												<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
											<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-116" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
												<clipPath id="star-clip-116"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-116" fill="#DBDBDB"></use>
												<use clip-path="url(#star-clip-116)" xlink:href="#star-path-116"></use></svg>
											<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-117" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
												<clipPath id="star-clip-117"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-117" fill="#DBDBDB"></use>
												<use clip-path="url(#star-clip-117)" xlink:href="#star-path-117"></use></svg>
											<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-118" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
												<clipPath id="star-clip-118"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-118" fill="#DBDBDB"></use>
												<use clip-path="url(#star-clip-118)" xlink:href="#star-path-118"></use></svg>
											<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-119" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
												<clipPath id="star-clip-119"><rect x="0" y="0" width="7.3230769230769255" height="16"></rect></clipPath></defs><use xlink:href="#star-path-119" fill="#DBDBDB"></use>
												<use clip-path="url(#star-clip-119)" xlink:href="#star-path-119"></use></svg></span>
											<span class="badge__pc">4.5</span>
									</div> <!-- 별점 -->
									<div class="production-review-feed__header-v2__stars__avg">
										<div class="production-review-feed__header-v2__stars__avg-warp">
											<div class="production-review-feed__header-v2__stars__avg__container">
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<div class="production-review-feed__header-v2__stars__avg__label">5점</div>
												<div class="production-review-feed__header-v2__stars__avg__number">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;151<span>&nbsp;&nbsp;개</span></div>
											</div>
											<div class="production-review-feed__header-v2__stars__avg__container">
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-444" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-444"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-444" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-444)" xlink:href="#star-path-444"></use></svg>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<div class="production-review-feed__header-v2__stars__avg__label">4점</div>
												<div class="production-review-feed__header-v2__stars__avg__number">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;84<span>&nbsp;&nbsp;개</span></div>
											</div>
											<div class="production-review-feed__header-v2__stars__avg__container">
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-444" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-444"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-444" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-444)" xlink:href="#star-path-444"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-444" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-444"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-444" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-444)" xlink:href="#star-path-444"></use></svg>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<div class="production-review-feed__header-v2__stars__avg__label">3점</div>
												<div class="production-review-feed__header-v2__stars__avg__number">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;19<span>&nbsp;&nbsp;개</span></div>
											</div>
											<div class="production-review-feed__header-v2__stars__avg__container">
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-444" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-444"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-444" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-444)" xlink:href="#star-path-444"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-444" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-444"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-444" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-444)" xlink:href="#star-path-444"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-444" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-444"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-444" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-444)" xlink:href="#star-path-444"></use></svg>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<div class="production-review-feed__header-v2__stars__avg__label">2점</div>
												<div class="production-review-feed__header-v2__stars__avg__number">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5<span>&nbsp;&nbsp;개</span></div>
											</div>
											<div class="production-review-feed__header-v2__stars__avg__container">
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-115" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-115"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-115" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-115)" xlink:href="#star-path-115"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-444" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-444"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-444" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-444)" xlink:href="#star-path-444"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-444" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-444"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-444" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-444)" xlink:href="#star-path-444"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-444" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-444"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-444" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-444)" xlink:href="#star-path-444"></use></svg>
												<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-444" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path>
													<clipPath id="star-clip-444"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-444" fill="#DBDBDB"></use>
													<use clip-path="url(#star-clip-444)" xlink:href="#star-path-444"></use></svg>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<div class="production-review-feed__header-v2__stars__avg__label">1점</div>
												<div class="production-review-feed__header-v2__stars__avg__number">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1<span>&nbsp;&nbsp;개</span></div>
											</div>
										</div>
									</div> <!-- 별점 준 인운수 -->
								</div>
							</div> <!-- production-review-feed__header-v2 -->
							<div class="filter">
								<div class="production-review-feed__filter-wrap">
									<div class="production-review-feed__filter">
										<div class="production-review-feed__filter__order-list">
											<button class="production-review-feed__filter__order--active" aria-pressed="true" type="button" id="review-best">베스트순</button>
											<button class="production-review-feed__filter__order" aria-pressed="false" type="button" id="review-recently">최신순</button>
											<button class="production-review-feed__filter__order production-review-feed__filter__order--photo" aria-pressed="false" type="button" id="review-photo"><svg class="icon" width="18" height="18" viewBox="0 0 18 18" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" d="M15.821 3a.67.67 0 0 1 .679.672v10.656a.67.67 0 0 1-.679.672H2.18a.67.67 0 0 1-.679-.672V3.672c0-.375.3-.672.679-.672H15.82zm-.679 1.344H2.858v8.14L7.01 7.781c.094-.125.284-.125.394 0l2.321 2.657c.048.046.063.109.048.156l-.3 1.375c-.016.11.11.172.173.094l2.369-2.579a.202.202 0 0 1 .284 0l2.842 3.094V4.344zm-2.526 3.61a1.1 1.1 0 0 1-1.105-1.095 1.1 1.1 0 0 1 1.105-1.093 1.1 1.1 0 0 1 1.105 1.093 1.1 1.1 0 0 1-1.105 1.094z">
												</path></svg>사진리뷰</button>
										</div> <!-- production-review-feed__filter__order-list -->
									</div>
								</div> <!-- production-review-feed__filter-wrap -->
							</div> <!-- filter -->
							<div class="production-review-feed__list">
								<div class="production-review-item__container">
									<article class="production-review-item">
										<div class="production-review-item__writer">
											<a href="/users/10949403"><img src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-160481141659932208.jpeg/80/80" class="production-review-item__writer__img" alt=""></a>
											<div class="production-review-item__writer__info">
												<p class="production-review-item__writer__info__name">yoon3707</p>
												<button class="production-review-item__writer__info__total-star-wrap" type="button">
												<span class="production-review-item__writer__info__total-star" aria-label="별점 2.8점">
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-5" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-5"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-5" fill="#DBDBDB"></use><use clip-path="url(#star-clip-5)" xlink:href="#star-path-5"></use></svg>
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-6" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-6"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-6" fill="#DBDBDB"></use><use clip-path="url(#star-clip-6)" xlink:href="#star-path-6"></use></svg>
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1149" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1149"><rect x="0" y="0" width="12" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1149" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1149)" xlink:href="#star-path-1149"></use></svg>
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1150" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1150"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1150" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1150)" xlink:href="#star-path-1150"></use></svg>
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1151" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1151"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1151" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1151)" xlink:href="#star-path-1151"></use></svg>
												</span>
												<svg class="production-review-item__writer__info__total-star__down-icon" width="10" height="10" viewBox="0 0 10 10" fill="currentColor" preserveAspectRatio="xMidYMid meet"><path d="M1.8 2.5l-.97.94L5 7.5l4.17-4.06-.97-.94L5 5.63z"></path></svg></button>
												<span class="production-review-item__writer__info__date">2021.01.15 ∙ 오늘의집 구매</span>
											</div>
										</div> <!-- production-review-item__writer -->
										<div class="production-review-item__name"><p></p>프레임 블랙/선반 월넛</div>
										<button type="button" class="production-review-item__img__btn">
											<img class="production-review-item__img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/158874657958341877.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1">
										</button>
										<p class="production-review-item__description">
												배송도 너무 늦고 업체측에서 실수로 인해 주문한 것과 
												달리 누락된 제품도 있었는데 그게 다시 배송되는것만 해도 
												또 시간이 너무 소요되어서 진짜 너무 오래 기다렸습니다.
												그리고 업체측이랑 설치기사님이랑 소통도 잘 안되셨는지,
												배송비 및 등에 관련된 내용에대해서 따로 빠지는 부분이 있었음에도 그런것도 전혀 서로 소통 안된채로 오셨었고 
												이래저래 제품이 좋다해도 실망감이 너무 크네요 
										</p>
										<div class="production-review-item__help ">
											<button type="button" class="production-review-item__help__btn" id="help-1"> 도움이 돼요</button>
											<button type="button" class="production-review-item__help__btn--active help-none" id="help-2"><svg width="16" height="16" viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet"><path fill="#FFF" d="M2.28 4.99l4.15 6.03 7.36-9.35 1.54 1.2-9 11.46L.67 6.1z" fill-rule="evenodd"></path></svg> 도움됨</button>
											<div class="production-review-item__help__text">
												<span class="production-review-item__help__text__number">69</span>명에게 도움이 되었습니다.</div>
										</div> <!-- production-review-item__help -->
										<!-- <!-- <div class="production-review-item__help help-none">
											<button type="button" class="production-review-item__help__btn production-review-item__help__btn--active"><svg width="16" height="16" viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet"><path fill="#FFF" d="M2.28 4.99l4.15 6.03 7.36-9.35 1.54 1.2-9 11.46L.67 6.1z" fill-rule="evenodd"></path></svg> 도움됨</button>
											<div class="production-review-item__help__text">
												<span class="production-review-item__help__text__number">70</span>명에게 도움이 되었습니다.</div>
										</div> -->  <!-- production-review-item__help -->
									</article>
								</div> <!-- production-review-item__container -->
								<div class="production-review-item__container">
									<article class="production-review-item">
										<div class="production-review-item__writer">
											<a href="/users/10949403"><img src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-160481141659932208.jpeg/80/80" class="production-review-item__writer__img" alt=""></a>
											<div class="production-review-item__writer__info">
												<p class="production-review-item__writer__info__name">yoon3707</p>
												<button class="production-review-item__writer__info__total-star-wrap" type="button">
												<span class="production-review-item__writer__info__total-star" aria-label="별점 2.8점">
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-5" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-5"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-5" fill="#DBDBDB"></use><use clip-path="url(#star-clip-5)" xlink:href="#star-path-5"></use></svg>
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-6" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-6"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-6" fill="#DBDBDB"></use><use clip-path="url(#star-clip-6)" xlink:href="#star-path-6"></use></svg>
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1149" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1149"><rect x="0" y="0" width="12" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1149" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1149)" xlink:href="#star-path-1149"></use></svg>
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1150" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1150"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1150" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1150)" xlink:href="#star-path-1150"></use></svg>
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1151" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1151"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1151" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1151)" xlink:href="#star-path-1151"></use></svg>
												</span>
												<svg class="production-review-item__writer__info__total-star__down-icon" width="10" height="10" viewBox="0 0 10 10" fill="currentColor" preserveAspectRatio="xMidYMid meet"><path d="M1.8 2.5l-.97.94L5 7.5l4.17-4.06-.97-.94L5 5.63z"></path></svg></button>
												<span class="production-review-item__writer__info__date">2021.01.15 ∙ 오늘의집 구매</span>
											</div>
										</div> <!-- production-review-item__writer -->
										<div class="production-review-item__name"><p></p>프레임 블랙/선반 월넛</div>
										<button type="button" class="production-review-item__img__btn">
											<img class="production-review-item__img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/158874657958341877.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1">
										</button>
										<p class="production-review-item__description">
												배송도 너무 늦고 업체측에서 실수로 인해 주문한 것과 
												달리 누락된 제품도 있었는데 그게 다시 배송되는것만 해도 
												또 시간이 너무 소요되어서 진짜 너무 오래 기다렸습니다.
												그리고 업체측이랑 설치기사님이랑 소통도 잘 안되셨는지,
												배송비 및 등에 관련된 내용에대해서 따로 빠지는 부분이 있었음에도 그런것도 전혀 서로 소통 안된채로 오셨었고 
												이래저래 제품이 좋다해도 실망감이 너무 크네요 
										</p>
										<div class="production-review-item__help ">
											<button type="button" class="production-review-item__help__btn" id="help-1"> 도움이 돼요</button>
											<button type="button" class="production-review-item__help__btn--active help-none" id="help-2"><svg width="16" height="16" viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet"><path fill="#FFF" d="M2.28 4.99l4.15 6.03 7.36-9.35 1.54 1.2-9 11.46L.67 6.1z" fill-rule="evenodd"></path></svg> 도움됨</button>
											<div class="production-review-item__help__text">
												<span class="production-review-item__help__text__number">69</span>명에게 도움이 되었습니다.</div>
										</div> <!-- production-review-item__help -->
										<!-- <!-- <div class="production-review-item__help help-none">
											<button type="button" class="production-review-item__help__btn production-review-item__help__btn--active"><svg width="16" height="16" viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet"><path fill="#FFF" d="M2.28 4.99l4.15 6.03 7.36-9.35 1.54 1.2-9 11.46L.67 6.1z" fill-rule="evenodd"></path></svg> 도움됨</button>
											<div class="production-review-item__help__text">
												<span class="production-review-item__help__text__number">70</span>명에게 도움이 되었습니다.</div>
										</div> -->  <!-- production-review-item__help -->
									</article>
								</div> <!-- production-review-item__container -->
								<div class="production-review-item__container">
									<article class="production-review-item">
										<div class="production-review-item__writer">
											<a href="/users/10949403"><img src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-160481141659932208.jpeg/80/80" class="production-review-item__writer__img" alt=""></a>
											<div class="production-review-item__writer__info">
												<p class="production-review-item__writer__info__name">yoon3707</p>
												<button class="production-review-item__writer__info__total-star-wrap" type="button">
												<span class="production-review-item__writer__info__total-star" aria-label="별점 2.8점">
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-5" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-5"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-5" fill="#DBDBDB"></use><use clip-path="url(#star-clip-5)" xlink:href="#star-path-5"></use></svg>
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-6" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-6"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-6" fill="#DBDBDB"></use><use clip-path="url(#star-clip-6)" xlink:href="#star-path-6"></use></svg>
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1149" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1149"><rect x="0" y="0" width="12" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1149" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1149)" xlink:href="#star-path-1149"></use></svg>
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1150" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1150"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1150" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1150)" xlink:href="#star-path-1150"></use></svg>
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1151" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1151"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1151" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1151)" xlink:href="#star-path-1151"></use></svg>
												</span>
												<svg class="production-review-item__writer__info__total-star__down-icon" width="10" height="10" viewBox="0 0 10 10" fill="currentColor" preserveAspectRatio="xMidYMid meet"><path d="M1.8 2.5l-.97.94L5 7.5l4.17-4.06-.97-.94L5 5.63z"></path></svg></button>
												<span class="production-review-item__writer__info__date">2021.01.15 ∙ 오늘의집 구매</span>
											</div>
										</div> <!-- production-review-item__writer -->
										<div class="production-review-item__name"><p></p>프레임 블랙/선반 월넛</div>
										<button type="button" class="production-review-item__img__btn">
											<img class="production-review-item__img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/158874657958341877.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1">
										</button>
										<p class="production-review-item__description">
												배송도 너무 늦고 업체측에서 실수로 인해 주문한 것과 
												달리 누락된 제품도 있었는데 그게 다시 배송되는것만 해도 
												또 시간이 너무 소요되어서 진짜 너무 오래 기다렸습니다.
												그리고 업체측이랑 설치기사님이랑 소통도 잘 안되셨는지,
												배송비 및 등에 관련된 내용에대해서 따로 빠지는 부분이 있었음에도 그런것도 전혀 서로 소통 안된채로 오셨었고 
												이래저래 제품이 좋다해도 실망감이 너무 크네요 
										</p>
										<div class="production-review-item__help ">
											<button type="button" class="production-review-item__help__btn" id="help-1"> 도움이 돼요</button>
											<button type="button" class="production-review-item__help__btn--active help-none" id="help-2"><svg width="16" height="16" viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet"><path fill="#FFF" d="M2.28 4.99l4.15 6.03 7.36-9.35 1.54 1.2-9 11.46L.67 6.1z" fill-rule="evenodd"></path></svg> 도움됨</button>
											<div class="production-review-item__help__text">
												<span class="production-review-item__help__text__number">69</span>명에게 도움이 되었습니다.</div>
										</div> <!-- production-review-item__help -->
										<!-- <!-- <div class="production-review-item__help help-none">
											<button type="button" class="production-review-item__help__btn production-review-item__help__btn--active"><svg width="16" height="16" viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet"><path fill="#FFF" d="M2.28 4.99l4.15 6.03 7.36-9.35 1.54 1.2-9 11.46L.67 6.1z" fill-rule="evenodd"></path></svg> 도움됨</button>
											<div class="production-review-item__help__text">
												<span class="production-review-item__help__text__number">70</span>명에게 도움이 되었습니다.</div>
										</div> -->  <!-- production-review-item__help -->
									</article>
								</div> <!-- production-review-item__container -->
								<div class="production-review-item__container">
									<article class="production-review-item">
										<div class="production-review-item__writer">
											<a href="/users/10949403"><img src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-160481141659932208.jpeg/80/80" class="production-review-item__writer__img" alt=""></a>
											<div class="production-review-item__writer__info">
												<p class="production-review-item__writer__info__name">yoon3707</p>
												<button class="production-review-item__writer__info__total-star-wrap" type="button">
												<span class="production-review-item__writer__info__total-star" aria-label="별점 2.8점">
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-5" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-5"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-5" fill="#DBDBDB"></use><use clip-path="url(#star-clip-5)" xlink:href="#star-path-5"></use></svg>
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-6" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-6"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-6" fill="#DBDBDB"></use><use clip-path="url(#star-clip-6)" xlink:href="#star-path-6"></use></svg>
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1149" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1149"><rect x="0" y="0" width="12" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1149" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1149)" xlink:href="#star-path-1149"></use></svg>
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1150" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1150"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1150" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1150)" xlink:href="#star-path-1150"></use></svg>
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1151" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1151"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1151" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1151)" xlink:href="#star-path-1151"></use></svg>
												</span>
												<svg class="production-review-item__writer__info__total-star__down-icon" width="10" height="10" viewBox="0 0 10 10" fill="currentColor" preserveAspectRatio="xMidYMid meet"><path d="M1.8 2.5l-.97.94L5 7.5l4.17-4.06-.97-.94L5 5.63z"></path></svg></button>
												<span class="production-review-item__writer__info__date">2021.01.15 ∙ 오늘의집 구매</span>
											</div>
										</div> <!-- production-review-item__writer -->
										<div class="production-review-item__name"><p></p>프레임 블랙/선반 월넛</div>
										<button type="button" class="production-review-item__img__btn">
											<img class="production-review-item__img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/158874657958341877.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1">
										</button>
										<p class="production-review-item__description">
												배송도 너무 늦고 업체측에서 실수로 인해 주문한 것과 
												달리 누락된 제품도 있었는데 그게 다시 배송되는것만 해도 
												또 시간이 너무 소요되어서 진짜 너무 오래 기다렸습니다.
												그리고 업체측이랑 설치기사님이랑 소통도 잘 안되셨는지,
												배송비 및 등에 관련된 내용에대해서 따로 빠지는 부분이 있었음에도 그런것도 전혀 서로 소통 안된채로 오셨었고 
												이래저래 제품이 좋다해도 실망감이 너무 크네요 
										</p>
										<div class="production-review-item__help ">
											<button type="button" class="production-review-item__help__btn" id="help-1"> 도움이 돼요</button>
											<button type="button" class="production-review-item__help__btn--active help-none" id="help-2"><svg width="16" height="16" viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet"><path fill="#FFF" d="M2.28 4.99l4.15 6.03 7.36-9.35 1.54 1.2-9 11.46L.67 6.1z" fill-rule="evenodd"></path></svg> 도움됨</button>
											<div class="production-review-item__help__text">
												<span class="production-review-item__help__text__number">69</span>명에게 도움이 되었습니다.</div>
										</div> <!-- production-review-item__help -->
										<!-- <!-- <div class="production-review-item__help help-none">
											<button type="button" class="production-review-item__help__btn production-review-item__help__btn--active"><svg width="16" height="16" viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet"><path fill="#FFF" d="M2.28 4.99l4.15 6.03 7.36-9.35 1.54 1.2-9 11.46L.67 6.1z" fill-rule="evenodd"></path></svg> 도움됨</button>
											<div class="production-review-item__help__text">
												<span class="production-review-item__help__text__number">70</span>명에게 도움이 되었습니다.</div>
										</div> -->  <!-- production-review-item__help -->
									</article>
								</div> <!-- production-review-item__container -->
								<div class="production-review-item__container">
									<article class="production-review-item">
										<div class="production-review-item__writer">
											<a href="/users/10949403"><img src="https://image.ohou.se/image/central_crop/bucketplace-v2-development/uploads-users-profile_images-160481141659932208.jpeg/80/80" class="production-review-item__writer__img" alt=""></a>
											<div class="production-review-item__writer__info">
												<p class="production-review-item__writer__info__name">yoon3707</p>
												<button class="production-review-item__writer__info__total-star-wrap" type="button">
												<span class="production-review-item__writer__info__total-star" aria-label="별점 2.8점">
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-5" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-5"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-5" fill="#DBDBDB"></use><use clip-path="url(#star-clip-5)" xlink:href="#star-path-5"></use></svg>
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-6" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-6"><rect x="0" y="0" width="16" height="16"></rect></clipPath></defs><use xlink:href="#star-path-6" fill="#DBDBDB"></use><use clip-path="url(#star-clip-6)" xlink:href="#star-path-6"></use></svg>
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1149" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1149"><rect x="0" y="0" width="12" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1149" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1149)" xlink:href="#star-path-1149"></use></svg>
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1150" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1150"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1150" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1150)" xlink:href="#star-path-1150"></use></svg>
													<svg fill="#35C5F0" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 16 16"><defs><path id="star-path-1151" d="M8 13.54l-4.37 1.85c-.5.22-.88-.06-.83-.6l.4-4.73L.1 6.47c-.37-.41-.22-.85.32-.98l4.62-1.07L7.48.36c.29-.48.75-.47 1.04 0l2.44 4.06 4.62 1.07c.54.13.68.57.32.98l-3.1 3.59.4 4.72c.05.55-.33.83-.83.61L8 13.54z"></path><clipPath id="star-clip-1151"><rect x="0" y="0" width="0" height="16"></rect></clipPath></defs><use xlink:href="#star-path-1151" fill="#DBDBDB"></use><use clip-path="url(#star-clip-1151)" xlink:href="#star-path-1151"></use></svg>
												</span>
												<svg class="production-review-item__writer__info__total-star__down-icon" width="10" height="10" viewBox="0 0 10 10" fill="currentColor" preserveAspectRatio="xMidYMid meet"><path d="M1.8 2.5l-.97.94L5 7.5l4.17-4.06-.97-.94L5 5.63z"></path></svg></button>
												<span class="production-review-item__writer__info__date">2021.01.15 ∙ 오늘의집 구매</span>
											</div>
										</div> <!-- production-review-item__writer -->
										<div class="production-review-item__name"><p></p>프레임 블랙/선반 월넛</div>
										<button type="button" class="production-review-item__img__btn">
											<img class="production-review-item__img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/158874657958341877.jpeg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;webp=1">
										</button>
										<p class="production-review-item__description">
												배송도 너무 늦고 업체측에서 실수로 인해 주문한 것과 
												달리 누락된 제품도 있었는데 그게 다시 배송되는것만 해도 
												또 시간이 너무 소요되어서 진짜 너무 오래 기다렸습니다.
												그리고 업체측이랑 설치기사님이랑 소통도 잘 안되셨는지,
												배송비 및 등에 관련된 내용에대해서 따로 빠지는 부분이 있었음에도 그런것도 전혀 서로 소통 안된채로 오셨었고 
												이래저래 제품이 좋다해도 실망감이 너무 크네요 
										</p>
										<div class="production-review-item__help ">
											<button type="button" class="production-review-item__help__btn" id="help-1"> 도움이 돼요</button>
											<button type="button" class="production-review-item__help__btn--active help-none" id="help-2"><svg width="16" height="16" viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet"><path fill="#FFF" d="M2.28 4.99l4.15 6.03 7.36-9.35 1.54 1.2-9 11.46L.67 6.1z" fill-rule="evenodd"></path></svg> 도움됨</button>
											<div class="production-review-item__help__text">
												<span class="production-review-item__help__text__number">69</span>명에게 도움이 되었습니다.</div>
										</div> <!-- production-review-item__help -->
										<!-- <!-- <div class="production-review-item__help help-none">
											<button type="button" class="production-review-item__help__btn production-review-item__help__btn--active"><svg width="16" height="16" viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet"><path fill="#FFF" d="M2.28 4.99l4.15 6.03 7.36-9.35 1.54 1.2-9 11.46L.67 6.1z" fill-rule="evenodd"></path></svg> 도움됨</button>
											<div class="production-review-item__help__text">
												<span class="production-review-item__help__text__number">70</span>명에게 도움이 되었습니다.</div>
										</div> -->  <!-- production-review-item__help -->
									</article>
								</div> <!-- production-review-item__container -->
							</div> <!-- production-review-feed__list -->
							<!-- <div id="ampaginationsm"></div> -->
						</div>
					</section>
					<a id="production-selling-question"></a>
					<section class="production-selling-section">
						<header class="production-selling-section__header">
							<h1 class="production-selling-section__title">문의 <span class="count">3,346</span></h1>
							<div class="production-selling-section__right"><button>문의하기</button></div>
						</header>
						<div class="production-question-feed">
							<div class="production-question-feed__list">
								<article class="production-question-feed__item" data-qna-id="2637633">
									<header class="production-question-feed__item__header">비구매 | 상품 | <span class="unanswered">미답변</span></header>
									<p class="production-question-feed__item__author">노쥬* | 2021년 01월 17일 00시 31분</p>
									<div class="production-question-feed__item__question">
										<span class="production-question-feed__item__badge">Q&nbsp;</span>
										<p class="production-question-feed__item__content">
											<span class="production-question-feed__item__content__option-name">프레임 블랙/선반 화이트<br></span>일자로 넣으려고하는대요
											가로사이즈가 3300이고 높이는2590
											인대 5단선반장하나넣을곤대
											어떻게 주문을해야하나요
										</p>
									</div>
								</article>
								<article class="production-question-feed__item" data-qna-id="2637633">
									<header class="production-question-feed__item__header">비구매 | 상품 | <span class="unanswered">미답변</span></header>
									<p class="production-question-feed__item__author">노쥬* | 2021년 01월 17일 00시 31분</p>
									<div class="production-question-feed__item__question">
										<span class="production-question-feed__item__badge">Q&nbsp;</span>
										<p class="production-question-feed__item__content">
											<span class="production-question-feed__item__content__option-name">프레임 블랙/선반 화이트<br></span>일자로 넣으려고하는대요
											가로사이즈가 3300이고 높이는2590
											인대 5단선반장하나넣을곤대
											어떻게 주문을해야하나요
										</p>
									</div>
								</article>
								<article class="production-question-feed__item" data-qna-id="2637633">
									<header class="production-question-feed__item__header">비구매 | 상품 | <span class="unanswered">미답변</span></header>
									<p class="production-question-feed__item__author">노쥬* | 2021년 01월 17일 00시 31분</p>
									<div class="production-question-feed__item__question">
										<span class="production-question-feed__item__badge">Q&nbsp;</span>
										<p class="production-question-feed__item__content">
											<span class="production-question-feed__item__content__option-name">프레임 블랙/선반 화이트<br></span>일자로 넣으려고하는대요
											가로사이즈가 3300이고 높이는2590
											인대 5단선반장하나넣을곤대
											어떻게 주문을해야하나요
										</p>
									</div>
								</article>
								<article class="production-question-feed__item" data-qna-id="2637633">
									<header class="production-question-feed__item__header">비구매 | 상품 | <span class="unanswered">미답변</span></header>
									<p class="production-question-feed__item__author">노쥬* | 2021년 01월 17일 00시 31분</p>
									<div class="production-question-feed__item__question">
										<span class="production-question-feed__item__badge">Q&nbsp;</span>
										<p class="production-question-feed__item__content">
											<span class="production-question-feed__item__content__option-name">프레임 블랙/선반 화이트<br></span>일자로 넣으려고하는대요
											가로사이즈가 3300이고 높이는2590
											인대 5단선반장하나넣을곤대
											어떻게 주문을해야하나요
										</p>
									</div>
								</article>
								<article class="production-question-feed__item" data-qna-id="2637633">
									<header class="production-question-feed__item__header">비구매 | 상품 | <span class="unanswered">미답변</span></header>
									<p class="production-question-feed__item__author">노쥬* | 2021년 01월 17일 00시 31분</p>
									<div class="production-question-feed__item__question">
										<span class="production-question-feed__item__badge">Q&nbsp;</span>
										<p class="production-question-feed__item__content">
											<span class="production-question-feed__item__content__option-name">프레임 블랙/선반 화이트<br></span>일자로 넣으려고하는대요
											가로사이즈가 3300이고 높이는2590
											인대 5단선반장하나넣을곤대
											어떻게 주문을해야하나요
										</p>
									</div>
								</article>
							</div> <!-- production-question-feed__list -->
							<!-- <div id="ampaginationsm"></div> -->
						</div> <!-- production-question-feed -->
					</section> <!-- 문의하기  -->
					<a id="production-selling-delivery"></a>
					<section class="production-selling-section">
						<header class="production-selling-section__header"><h1 class="production-selling-section__title">배송</h1></header>
						<table class="production-selling-table">
							<tbody>
								<tr><th>배송</th><td>업체직접배달 | 15일 이내 배송</td></tr>
								<tr><th>배송비</th><td>무료배송</td></tr>
								<tr><th>배송불가 지역</th><td>도서산간 지역 / 제주도</td></tr>
								<tr><th>지역별 차등 배송비</th><td>서울경기 20,000원,충청도 50,000원,전라도/경상도 70,000원, 강원도 80,000원</td></tr>
							</tbody>
						</table>
					</section>
					<section class="production-selling-section">
						<header class="production-selling-section__header"><h1 class="production-selling-section__title">교환/환불</h1></header>
						<div class="production-selling-refund">
							<table class="production-selling-table production-selling-refund__table">
								<tbody>
									<tr><th>반품배송비</th><td>100,000원 (최초 배송비가 무료인 경우 200,000원 부과)</td></tr>
									<tr><th>교환배송비</th><td>100,000원</td></tr>
									<tr><th>보내실 곳</th><td>(21409) 인천 부평구 부영로25번길 18 (부평동)  1층</td></tr>
								</tbody>
							</table>
							<h2 class="production-selling-refund__title">반품/교환 사유에 따른 요청 가능 기간</h2>
							<p class="production-selling-refund__note">반품 시 먼저 판매자와 연락하셔서 반품사유, 택배사, 배송비, 반품지 주소 등을 협의하신 후 반품상품을 발송해 주시기 바랍니다.</p>
							<ol class="production-selling-refund__list">
								<li>구매자 단순 변심은 상품 수령 후 7일 이내&nbsp;<small>(구매자 반품배송비 부담)</small></li>
								<li>표시/광고와 상이, 상품하자의 경우 상품 수령 후 3개월 이내 혹은 표시/광고와 다른 사실을 안 날로부터 30일 이내.<br>둘 중 하나 경과 시 반품/교환 불가&nbsp;<small>(판매자 반품배송비 부담)</small></li>
							</ol>
							<h2 class="production-selling-refund__title">반품/교환 불가능 사유</h2>
							<p class="production-selling-refund__note">아래와 같은 경우 반품/교환이 불가능합니다.</p>
							<ol class="production-selling-refund__list">
								<li>반품요청기간이 지난 경우</li>
								<li>구매자의 책임 있는 사유로 상품 등이 멸실 또는 훼손된 경우&nbsp;<small>(단, 상품의 내용을 확인하기 위하여 포장 등을 훼손한 경우는 제외)</small></li>
								<li>포장을 개봉하였으나 포장이 훼손되어 상품가치가 현저히 상실된 경우&nbsp;<small>(예: 식품, 화장품)</small></li>
								<li>구매자의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우&nbsp;<small>(라벨이 떨어진 의류 또는 태그가 떨어진 명품관 상품인 경우)</small></li>
								<li>시간의 경과에 의하여 재판매가 곤란할 정도로 상품 등의 가치가 현저히 감소한 경우&nbsp;<small>(예: 식품, 화장품)</small></li>
								<li>고객주문 확인 후 상품제작에 들어가는 주문제작상품</li><li>복제가 가능한 상품 등의 포장을 훼손한 경우&nbsp;<small>(CD/DVD/GAME/도서의 경우 포장 개봉 시)</small></li>
							</ol>
						</div> <!-- production-selling-refund :: 배송 및 환불 -->
					</section>
				</div>
			</div> <!-- production-selling__detail__content col-12 col-lg-8 -->
			<div class="production-selling__detail__sidebar col-4">
				<div data-sticky-enabled="false" data-sticky-disabled="false" data-sticky-always="false" data-sticky-ignore="false" data-direction="top" data-offset="183" class="sticky-container production-selling-sidebar-wrap" style="position: sticky; top:40px;">
					<div class="sticky-child production-selling-sidebar" style="position: relative; box-sizing: border-box; height: 720px;">
						<section class="production-selling-sidebar-content production-selling-sidebar__content">
							<div class="production-selling-option-form production-selling-sidebar-content__option-form">
								<div class="selling-option-form-content deal-selling-option-form-content production-selling-option-form__form">
									<div class="production-select-dropdown-side">
										<div class="production-select-dropdown__button-side">
											<button class="production-select-button" type="button">
												<div class="production-select-button__production">
													<div class="production-select-button__production__blank" id="pro-select-side-0">상품을 선택하세요.</div>
													<div class="production-select-button__production select-none" id="pro-select-side-1">
														<div class="production-select-button__production__index">1</div>
														<div class="production-select-button__production__image--wrap"><img class="production-select-button__production__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161043210673832728.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;q=0.8&amp;webp=1"></div>
														<div class="production-select-button__production__text">[단독] 고흐 무헤드 원목 침대(매트리스 제외) SS/Q 2colors</div>
													</div>
													<div class="production-select-button__production select-none" id="pro-select-side-2"> 
														<div class="production-select-button__production__index">2</div>
														<div class="production-select-button__production__image--wrap"><img class="production-select-button__production__image" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161043210673832728.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;q=0.8&amp;webp=1"></div>
														<div class="production-select-button__production__text">[단독] 고흐 무헤드 원목 침대(매트리스 포함) SS/Q 2colors</div>
													</div>
													<div class="production-select-button__production__icon"><svg width="1em" height="1em" viewBox="0 0 16 16" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" fill-rule="evenodd" d="M2.87 4L1.33 5.5 8 12l6.67-6.5L13.13 4 8 9z"></path></svg></div>
												</div></button>
										</div> <!-- production-select-dropdown__button-side -->
										<div class="production-select-dropdown__list-container deal-selling__sidebar-production-list" id="side-order-list">
											<ul class="production-select-list production-select-dropdown__list">
												<li class="production-select-list__item" id="select-side-item-1"><button class="production-select-item" type="button"><div class="production-select-item__index">1</div><div class="production-select-item__image"><img class="image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161043210673832728.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;q=0.8&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161043210673832728.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;q=0.8&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161043210673832728.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;q=0.8&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161043210673832728.jpg?gif=1&amp;w=240&amp;h=240&amp;c=c&amp;q=0.8&amp;webp=1 3x"></div><div class="production-select-item__contents"><span class="production-select-item__contents__name">[단독] 고흐 무헤드 원목 침대(매트리스 제외) SS/Q 2colors</span><span class="production-item-price production-select-item__contents__price"><span class="production-item-price__rate">56<span class="percentage">% </span></span><span class="production-item-price__price">99,000</span></span><div class="production-select-item__contents__badges"><svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet"><rect width="30" height="20" fill="#F77" rx="4"></rect><path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg></div></div></button></li>
												<li class="production-select-list__item" id="select-side-item-2"><button class="production-select-item" type="button"><div class="production-select-item__index">2</div><div class="production-select-item__image"><img class="image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161043644716851412.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;q=0.8&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161043644716851412.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;q=0.8&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161043644716851412.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;q=0.8&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161043644716851412.jpg?gif=1&amp;w=240&amp;h=240&amp;c=c&amp;q=0.8&amp;webp=1 3x"></div><div class="production-select-item__contents"><span class="production-select-item__contents__name">[단독] 고흐 무헤드 원목 침대(매트리스 포함) SS/Q 2colors</span><span class="production-item-price production-select-item__contents__price"><span class="production-item-price__rate">57<span class="percentage">% </span></span><span class="production-item-price__price">169,000</span></span><div class="production-select-item__contents__badges"><svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet"><rect width="30" height="20" fill="#F77" rx="4"></rect><path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg></div></div></button></li>
												<li class="production-select-list__item"><button class="production-select-item" type="button"><div class="production-select-item__index">3</div><div class="production-select-item__image"><img class="image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161043640256083182.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;q=0.8&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161043640256083182.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;q=0.8&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161043640256083182.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;q=0.8&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161043640256083182.jpg?gif=1&amp;w=240&amp;h=240&amp;c=c&amp;q=0.8&amp;webp=1 3x"></div><div class="production-select-item__contents"><span class="production-select-item__contents__name">[단독] 고흐 원목 침대(매트리스 제외) SS/Q 2colors</span><span class="production-item-price production-select-item__contents__price"><span class="production-item-price__rate">52<span class="percentage">% </span></span><span class="production-item-price__price">169,000</span></span><div class="production-select-item__contents__badges"><svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet"><rect width="30" height="20" fill="#F77" rx="4"></rect><path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg></div></div></button></li>
												<li class="production-select-list__item"><button class="production-select-item" type="button"><div class="production-select-item__index">4</div><div class="production-select-item__image"><img class="image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161043642375790319.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;q=0.8&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161043642375790319.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;q=0.8&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161043642375790319.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;q=0.8&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/161043642375790319.jpg?gif=1&amp;w=240&amp;h=240&amp;c=c&amp;q=0.8&amp;webp=1 3x"></div><div class="production-select-item__contents"><span class="production-select-item__contents__name">[단독] 고흐 원목 침대(매트리스 포함) SS/Q 2colors</span><span class="production-item-price production-select-item__contents__price"><span class="production-item-price__rate">56<span class="percentage">% </span></span><span class="production-item-price__price">239,000</span></span><div class="production-select-item__contents__badges"><svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet"><rect width="30" height="20" fill="#F77" rx="4"></rect><path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg></div></div></button></li>
												<li class="production-select-list__item"><button class="production-select-item" type="button"><div class="production-select-item__index">5</div><div class="production-select-item__image"><img class="image" alt="" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/160334539595702064.jpg?gif=1&amp;w=72&amp;h=72&amp;c=c&amp;q=0.8&amp;webp=1" srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/160334539595702064.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;q=0.8&amp;webp=1 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/160334539595702064.jpg?gif=1&amp;w=144&amp;h=144&amp;c=c&amp;q=0.8&amp;webp=1 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/160334539595702064.jpg?gif=1&amp;w=240&amp;h=240&amp;c=c&amp;q=0.8&amp;webp=1 3x"></div><div class="production-select-item__contents"><span class="production-select-item__contents__name">로슈 고무나무 원목 침대(매트리스 제외) SS/Q</span><span class="production-item-price production-select-item__contents__price"><span class="production-item-price__rate">53<span class="percentage">% </span></span><span class="production-item-price__price">259,000</span></span><div class="production-select-item__contents__badges"><svg class="icon" aria-label="특가" width="30" height="20" viewBox="0 0 30 20" preserveAspectRatio="xMidYMid meet"><rect width="30" height="20" fill="#F77" rx="4"></rect><path fill="#fff" d="M12.83 7.93v-.97H7.93v-.555h5.228v-.991H6.655v4.063h6.59v-.992H7.928V7.93h4.901zm-6.295 3.747v1.002h5.326v2.037h1.274v-3.04h-6.6zm7.733-.588v-1.024H5.5v1.024h8.768zM23.91 9.782V8.725h-1.405V5H21.24v9.705h1.264V9.782h1.405zm-3.954-3.79h-4.53v1.056h3.147c-.174 1.938-1.623 3.975-3.736 4.945l.773.958c2.974-1.612 4.259-4.03 4.346-6.96z"></path></svg></div></div></button></li>
											</ul>
										</div>
									</div> <!-- production-select-dropdown -->
									<ul class="selling-option-form-content__list select-none" id="pro-order-side-0">
										<li class="order-list order-none" id="pro-order-side-1"><article class="selling-option-item">
												<h1 class="selling-option-item__production">1[단독] 고흐 무헤드 원목 침대(매트리스 포함) SS/Q 2colors</h1>
												<h2 class="selling-option-item__name">매트리스 옵션: 슈퍼싱글(DH 7존 독립매트) / 색상 옵션: 빈티지브라운</h2>
												<button class="selling-option-item__delete" type="button" aria-label="삭제" id="order-del-side-1"><svg width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet"><path fill-rule="nonzero" d="M6 4.6L10.3.3l1.4 1.4L7.4 6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z"></path></svg></button>
											<div class="selling-option-item__controls">
												<div class="selling-option-item__quantity"><div class="input-group select-input option-count-input">
													<select class="form-control">
														<option value="0">1</option>
														<option value="1">2</option>
														<option value="2">3</option>
														<option value="3">4</option>
														<option value="4">5</option>
														<option value="5">6</option>
														<option value="6">7</option>
														<option value="7">8</option>
														<option value="8">9</option>
														<option value="9">10+</option>
													</select><span class="select-input__icon"><svg class="icon" width="10" height="10" preserveAspectRatio="xMidYMid meet" style="fill: currentcolor;"><path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path></svg></span></div></div>
													<p class="selling-option-item__price"><span class="selling-option-item__price__number">189,000</span>원</p></div>
										</article></li>
										<li class="order-list order-none" id="pro-order-side-2"><article class="selling-option-item">
												<h1 class="selling-option-item__production">2[단독] 고흐 무헤드 원목 침대(매트리스 포함) SS/Q 2colors</h1>
												<h2 class="selling-option-item__name">매트리스 옵션: 슈퍼싱글(DH 7존 독립매트) / 색상 옵션: 빈티지브라운</h2>
												<button class="selling-option-item__delete" type="button" aria-label="삭제"  id="order-del-side-2"><svg width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet"><path fill-rule="nonzero" d="M6 4.6L10.3.3l1.4 1.4L7.4 6l4.3 4.3-1.4 1.4L6 7.4l-4.3 4.3-1.4-1.4L4.6 6 .3 1.7 1.7.3 6 4.6z"></path></svg></button>
											<div class="selling-option-item__controls">
												<div class="selling-option-item__quantity"><div class="input-group select-input option-count-input">
													<select class="form-control">
														<option value="0">1</option>
														<option value="1">2</option>
														<option value="2">3</option>
														<option value="3">4</option>
														<option value="4">5</option>
														<option value="5">6</option>
														<option value="6">7</option>
														<option value="7">8</option>
														<option value="8">9</option>
														<option value="9">10+</option>
													</select><span class="select-input__icon"><svg class="icon" width="10" height="10" preserveAspectRatio="xMidYMid meet" style="fill: currentcolor;"><path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path></svg></span></div></div>
													<p class="selling-option-item__price"><span class="selling-option-item__price__number">189,000</span>원</p></div>
										</article></li>
									</ul>
									<p class="selling-option-form-content__price">
										<span class="selling-option-form-content__price__left">주문금액</span>
										<span class="selling-option-form-content__price__right"><span class="selling-option-form-content__price__number">0</span>원</span>
									</p>
								</div> <!-- selling-option-form-content deal-selling-option-form-content production-selling-option-form__form :: 주문내용 -->
								<div class="production-selling-option-form__footer">
									<button class="button button--color-gray-14-inverted button--size-55 button--shape-4 production-selling-sidebar-content__scrap" type="button" id="side-order"><svg class="icon--stroke" aria-label="스크랩" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path></svg></button>
									<button class="button button--color-blue-inverted button--size-55 button--shape-4" type="button">장바구니</button>
									<button class="button button--color-blue button--size-55 button--shape-4" type="button">바로구매</button>
								</div>
							</div> <!-- production-selling-option-form production-selling-sidebar-content__option-form -->
						</section>
					</div> <!-- sticky-child production-selling-sidebar -->
				</div>
			</div> <!--production-selling__detail__sidebar col-4  -->
		</div>
	</div>
</div> <!-- production-selling -->
</body>
</html>
