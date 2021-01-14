<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script>
	$(document).ready(function(){
		$("#card_action1").click(function(){
			if ($(this).hasClass("card_action")){
				$(this).removeClass("card_action");
				$(this).addClass("card_action_active");
			}else{
				$(this).removeClass("card_action_active");
				$(this).addClass("card_action");
			}
		});
		$("#card_action2").click(function(){
			if ($(this).hasClass("card_action")){
				$(this).removeClass("card_action");
				$(this).addClass("card_action_active");
			}else{
				$(this).removeClass("card_action_active");
				$(this).addClass("card_action");
			}
		});
		
		$("button#follow").click(function(){
			if ($(this).hasClass("card_item_follow")){
				$(this).removeClass("card_item_follow");
				$(this).addClass("card_item_following");
				$(this).html('팔로잉');
			}else{
				$(this).removeClass("card_item_following");
				$(this).addClass("card_item_follow");
				$(this).html('팔로우');
			}
		});
});
		
</script>
<style>
	*:focus{
		outline:none;
	}
	div.container{
		color: #424242;
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		-webkit-box-direction: normal;
		-webkit-tap-highlight-color: transparent;
		margin:0;
		padding:0;
		margin-right:auto;
		margin-left:auto;
		width:calc(100% - 80px);
		max-width: 100%;
		box-sizing: border-box;
		min-height: 1px;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
		position: relative;
	}
	div.sticky_container{
		margin-top: 5px;
		z-index: 100;
		transition: top .1s;
		position: sticky;
		top: -58.9091px;
	}
	div.sticky_card_filter{
		padding: 10px 0 5px;
		background-color: #fff;
		position: relative;
	}
	div.card_filter,div.filter_bar,div.card_item{
		margin: 0; padding: 0;
	}
	div.filter_bar_control{
		display: flex;
		-webkit-box-align: center;
		align-items: center;
		-webkit-box-pack: justify;
		justify-content: space-between;
		min-width: 0;
		margin: 0 -2px;
		padding: 5px 0;
		overflow: auto;
	}
	
	ul.filter_bar{
		color: #424242;
		line-height: 1;
		flex: 0 0 auto;
		min-width: 0;
		margin: 0;
		padding: 0;
		list-style: none;
		white-space: nowrap;
	}
	
	li.item{
		display:inline-block;
		list-style: none;
		white-space: nowrap;
		padding: 0;
		margin: 0 2px;
		vertical-align: bottom;
		font-size: 0;
		line-height: 0;
	}
	
	li.item>button{
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
		cursor: pointer;
		background-color: #f5f5f5;
		border-color: #f5f5f5;
		color: #757575;
		font-size: 15px;
		line-height: 19px;
		padding: 7px 8px 6px;
		border-radius: 4px;
	}
	
	li.item>button>svg{
		fill: currentcolor;
		width: 12px;
		height: 12px;
		margin-left: 5px;
		vertical-align: -1px;
	}
	
	div.card_content{
		display: flex;
		flex-wrap: wrap;
		margin-right: -7.5px;
		margin-left: -7.5px;
		margin-top: 30px;
		padding-top: 0px;
	}
	
	div.card_item_wrap{
		width: 100%;
		flex: 0 0 33.3333333333%;
		max-width: 33.3333333333%;
		padding-right: 7.5px;
		padding-left: 7.5px;
		min-height: 1px;
		position: relative;
		box-sizing: border-box;
		-webkit-box-flex: 0;
	}
	
	div.card_item{
		margin: 0;
		padding: 0;
	}
	
	article.card_item{
		padding-bottom: 40px;
	}
	
	div.card_writer{
		display: flex;
		-webkit-box-orient: vertical;
		flex-direction: column;
		-webkit-box-pack: center;
		justify-content: center;
		position: relative;
		min-height: 36px;
		margin: 0 0 16px;
		padding: 0 0 0 48px;
	}
	
	address.card_writer_content{
		font-style: normal;
		font-weight: normal;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
		margin-top: -5px;
		font-size: 15px;
		line-height: 19px;
	}
	
	div.card_writer_header{
		margin: 0;
		padding: 0;
		display: flex;
	}
	
	a.card_writer_link{
		color: inherit;
		text-decoration: none;
		cursor: pointer;
		touch-action: manipulation;
		-webkit-box-flex: 0;
		flex: 0 1 auto;
		transition: opacity .1s;
		display: inline-block;
		min-width: 0;
		overflow: hidden;
		white-space: nowrap;
		text-overflow: ellipsis;
	}
	
	img.card_writer_img{
		border: none;
		position: absolute;
		top: 0;
		left: 0;
		width: 36px;
		height: 36px;
		border-radius: 100%;
		background-color: #ededed;
	}
	
	span.card_writer_name{
		color: #424242;
		font-weight:700;
		font-style: normal;
		font-size: 15px;
	}
	
	span.seperator{
		line-height: 19px;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
		color: #424242;
		font-weight: 700;
		padding:0 3px;
	}
	button.card_item_follow{
		cursor: pointer;
		touch-action: manipulation;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
		margin: 0;
		padding: 0;
		border: none;
		background: none;
		color: #35c5f0;
		font: inherit;
		font-weight: 700;
		transition: opacity .1s;
	}
	button.card_item_following{
		cursor: pointer;
		touch-action: manipulation;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
		margin: 0;
		padding: 0;
		border: none;
		background: none;
		font: inherit;
		font-weight: 700;
		transition: opacity .1s;
		color: #bdbdbd;
	}
	p.card_writer_intro{
		margin: 0;
		padding: 0;
		margin-top: 2px;
		font-size: 12px;
		line-height: 16px;
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
	}
	
	div.card_item_content{
		margin: 0;
		padding: 0;
		display: flex;
		-webkit-box-direction: normal;
		-webkit-box-orient: vertical;
		flex-direction: column;
		position: relative;
	}
	
	a.card_item_content_link{
		line-height: 1;
		text-decoration: none;
		cursor: pointer;
		touch-action: manipulation;
		position: absolute;
		top: 0;
		left: 0;
		right: 0;
		inset: 0px;
		bottom: 0;
		z-index: 1;
	}
	
	div.card_item_text{
		padding: 0;
		line-height: 22px;
		transition: opacity .1s;
		margin: 12px 0 0;
		-webkit-box-ordinal-group: 2;
		order: 1;
	}
	div.card_item_desciption{
		margin: 0;
		padding: 0;
		overflow: hidden;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-box-orient: vertical;
		max-height: 66px;
		-webkit-line-clamp: 3;
	}
	div.card_item_image{
		margin: 0;
		padding: 0;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
	}
	@media (min-width: 768px){
	div.card_item_image2{
		margin: 0;
		padding: 0;
		position: relative;
		width: 100%;
		background-color: #ededed;
		overflow: hidden;
		padding-bottom: 100%;
		border-radius: 6px;
	}
	}
	img.card_img{
		border: 0;
		position: absolute;
		top: 50%;
		left: 50%;
		width: 100%;
		transform: translate(-50%,-50%);
		transition: transform 0.2s ease 0s;
	}
	
	a.card_item_content_link:active~.card_item_image img, 
	a.card_item_content_link:hover~.card_item_image img{
    	transform: translate(-50%,-50%) scale(1.05);
	}
	a.card_item_content_link:active~.card_item_text, 
	a.card_item_content_link:hover~.card_item_text {
		opacity:0.5;
	}
	
	span.card_collection{
		position: absolute;
		top: 12px;
		right: 12px;
	}
	
	span.card_img_count{
		position: absolute;
		bottom: 12px;
		right: 12px;
		font-size: 13px;
		color: #fff;
		text-shadow: 0 0 4px rgba(0,0,0,.5);
	}
	
	aside.card_item_action{
		-webkit-box-flex: 0;
		flex: 0 0 auto;
		display: flex;
		margin-bottom: -12px;
	}
	
	button.card_action, button.card_action_active, a.card_action{
		cursor: pointer;
		touch-action: manipulation;
		font-size: inherit;
		-webkit-box-flex: 1;
		flex: 1 0 0px;
		position: relative;
		display: block;
		margin: 0;
		padding: 13px 0 16px;
		background: none;
		border: none;
		text-align: center;
		transition: opacity .1s;
		z-index: 2;
	}
	
	button.card_action:active, button.card_action:hover,
	button.card_action_active:active, button.card_action_active:hover,
	a.card_action:active, a.card_action:hover{
		opacity: .5;
	}
	
	button.card_action>.action_icon{
		text-align: center;
		width: 24;
		height: 24;
		vertical-align: -7px;
		fill: transparent;
		stroke: #424242;
		stroke-width: 1.1px;
		transition: fill .1s,stroke .1s;
	}
	button.card_action_active>.action_icon{
		cursor: pointer;
		font-size: inherit;
		text-align: center;
		width: 24;
		height: 24;
		-webkit-tap-highlight-color: transparent;
		vertical-align: -7px;
		stroke-width: 1.1px;
		transition: fill .1s,stroke .1s;
		fill: #35c5f0;
		stroke: transparent;
	}
	
	span.count{
		margin-left: 6px;
		font-size: 12px;
		color: #424242;
	}
	
	a.card_action{
		color: #424242;
		text-decoration: none;
	}
	
	svg.icon{
		color: inherit;
		cursor: pointer;
		text-align: center;
		width: 24;
		height: 24;
		border: none;
		fill: #424242;
		vertical-align: -7px;
	} 
	
	
	div.card_item_comment{
		display: flex;
		-webkit-box-direction: normal;
		-webkit-box-orient: vertical;
		flex-direction: column;
		-webkit-box-pack: center;
		justify-content: center;
		position: relative;
		min-height: 24px;
		margin: 12px 0 0;
		padding: 0 0 0 34px;
	}
	
	article.card_item_comment{
		max-height: 66px;
		padding: 4px;
		margin: -4px;
		font-size: 15px;
		line-height: 22px;
		color: #424242;
		overflow: hidden;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-line-clamp: 3;
		-webkit-box-orient: vertical;
	}
	
	address.comment_wirter{
		font-size: 15px;
		line-height: 22px;
		color: #424242;
		-webkit-tap-highlight-color: transparent;
		font-style: normal;
		display: inline;
		font-weight: 700;
	}
	
	a.writer_link{
		font-style: normal;
		font-weight: 700;
		color: inherit;
		text-decoration: none;
		cursor: pointer;
		touch-action: manipulation;
		transition: opacity .1s;
		display: inline-block;
	}
	
	div.writer_img{
		cursor: pointer;
		margin: 0;
		padding: 0;
		border: none;
		position: absolute;
		top: 0;
		left: 0;
		width: 24px;
		height: 24px;
		border-radius: 100%;
		background-color: #ededed;
		overflow: hidden;
	}
	
	img.writer_img{
		border: none;
		width: 24px;
		height: 24px;
	}
	
	span.writer_seperator{
		display: inline-block;
		width: 4px;
		line-height: 0;
		font-size: 0;
		color: transparent;
	}
	
	a.comment_link{
		text-decoration: none;
		cursor: pointer;
		touch-action: manipulation;
		transition: opacity .1s;
	}

	a.comment_link:active, a.comment_link:hover{
		opacity:0.5;
	}
		
	p.comment_content{
		color: #424242;
		margin: 0;
		padding: 0;
		border: none;
		display: inline;
	}
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header1.jsp"/>

	<!-- content -->
	<div class="container">
		<div class="sticky_container" data-sticky-enabled="false">
			<div class="sticky_card_filter">
				<div class="card_filter">
					<div class="filter_bar">
						<div class="filter_bar_control">
							<ul class="filter_bar">
								<li class="item">
									<button>정렬
									<svg class="icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet">
										<path d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path>
									</svg>
									</button>
								</li>
								<li class="item">
									<button>주거형태
									<svg class="icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet">
										<path d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path>
									</svg>
									</button>
								</li>
								<li class="item">
									<button>공간
									<svg class="icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet">
										<path d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path>
									</svg>
									</button>
								</li>
								<li class="item">
									<button>스타일
									<svg class="icon" width="12" height="12" viewBox="0 0 12 12" fill="currentColor" preserveAspectRatio="xMidYMid meet">
										<path d="M6.069 6.72l4.123-3.783 1.216 1.326-5.32 4.881L.603 4.273l1.196-1.346z"></path>
									</svg>
									</button>
								</li>
							</ul>						
							<ul class="fliter_bar_tag_list"></ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="card_content">
			<div class="card_item_wrap">
				<div class="card_item">
					<article class="card_item">
						<div class="card_writer">
							<address class="card_writer_content">
								<div class="card_writer_header">
									<a href="" class="card_writer_link">
										<img class="card_writer_img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/160345733976486088.jpeg?gif=1&w=36&h=36&c=c&webp=1">
										<span class="card_writer_name">그래니롤라</span>
									</a>
									<span class="seperator">·</span>
									<button id="follow" class="card_item_follow" type="button">팔로우</button>
								</div>
								<p class="card_writer_intro">인테리어 정보는 인스타 댓글로 부탁드려요^^</p>
							</address>
						</div>
						<div class="card_item_content">
							<a href="" class="card_item_content_link"></a>
							<div class="card_item_text">
								<div class="card_item_desciption">
									예쁜 조화를 보니 
									방안이 싱그러워 지는 느낌이예요 ㅋㅋ
								</div>
								<div class=""></div> 
							</div>
							<div class="card_item_image">
								<div class="card_item_image2">
									<img class="card_img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161042051238175634.jpeg?gif=1&w=480&h=480&c=c&q=80">
									<span class="card_collection">
									<svg class="icon" width="18" height="18" viewBox="0 0 18 18" preserveAspectRatio="xMidYMid meet">
										<g fill="none" fill-rule="evenodd">
										<path stroke="#000" stroke-opacity=".14" stroke-width=".75" d="M14.27 3.85H15a2.62 2.62 0 0 1 2.62 2.63V15A2.62 2.62 0 0 1 15 17.63H6.49A2.62 2.62 0 0 1 3.85 15v-.73h7.8a2.63 2.63 0 0 0 2.62-2.62v-7.8zM.37 3A2.62 2.62 0 0 1 3 .37h8.52A2.62 2.62 0 0 1 14.15 3v8.52a2.62 2.62 0 0 1-2.63 2.63H3a2.62 2.62 0 0 1-2.63-2.63V3z"></path>
										<path fill="#FFF" fill-opacity=".74" d="M14.64 4.22H15c1.25 0 2.26 1 2.26 2.26V15c0 1.24-1 2.25-2.25 2.25H6.48c-1.25 0-2.26-1-2.26-2.25v-.35h7.43a3 3 0 0 0 3-3V4.22zM.75 3C.75 1.76 1.75.75 3 .75h8.52c1.25 0 2.26 1 2.26 2.25v8.52c0 1.25-1 2.26-2.26 2.26H3c-1.24 0-2.25-1-2.25-2.26V3z"></path>
										</g>
									</svg>
									</span>
									<span class="card_img_count">조회수 371</span>
								</div>
							</div>
							<aside class="card_item_action">
								<button id="card_action1" class="card_action">
									<svg class="action_icon" aria-label="좋아요" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
										<path d="M23.22 7.95c.4 4.94-2.92 9.71-10.92 13.85a.47.47 0 0 1-.42 0C3.88 17.66.56 12.9.96 7.93 1.54 2.48 8.28.3 12.1 4.7c3.8-4.4 10.55-2.22 11.13 3.25z"></path>
									</svg>
									<span class="count">29</span>
								</button>
								<button id="card_action2" class="card_action">
									<svg class="action_icon" aria-label="스크랩" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
									<path d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path>
									</svg>
									<span class="count">27</span>
								</button>
								<a href="community_index.do" class="card_action">
									<svg class="icon" aria-label="댓글 달기" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
									<path fill="currentColor" fill-rule="nonzero" d="M13.665 18.434l.53-.066C19.69 17.679 23 14.348 23 10c0-4.942-4.235-8.5-11-8.5S1 5.058 1 10c0 4.348 3.31 7.68 8.804 8.368l.531.066L12 21.764l1.665-3.33zm-3.985.926C3.493 18.585 0 14.69 0 10 0 4.753 4.373.5 12 .5S24 4.753 24 10c0 4.69-3.493 8.585-9.68 9.36l-1.647 3.293c-.374.75-.974.744-1.346 0L9.68 19.36z"></path>
									</svg>
									<span class="count">2</span>
								</a>
							</aside>
						</div>
						<div class="card_item_comment">
							<article class="card_item_comment" aria-label="댓글">
								<address class="comment_wirter">
									<a href="#" class="writer_link">
										<div class="writer_img">
											<img class="writer_img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1607992974_EAn.jpeg?gif=1&w=36&h=36&c=c">
	 									</div>
										<span class="writer_name">3색이</span>
									</a>
									<span class="writer_seperator"> :</span>
								</address>
								<a href="#" class="comment_link">
									<p class="comment_content">요새 조화도 진짜처럼 ~ </p>
								</a> 
							</article>
						</div>
					</article>
				</div>
			</div>
		
			<div class="card_item_wrap">
				<div class="card_item">
					<article class="card_item">
						<div class="card_writer">
							<address class="card_writer_content">
								<div class="card_writer_header">
									<a href="" class="card_writer_link">
										<img class="card_writer_img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/160345733976486088.jpeg?gif=1&w=36&h=36&c=c&webp=1">
										<span class="card_writer_name">그래니롤라</span>
									</a>
									<span class="seperator">·</span>
									<button id="follow" class="card_item_follow" type="button">팔로우</button>
								</div>
								<p class="card_writer_intro">인테리어 정보는 인스타</p>
							</address>
						</div>
						<div class="card_item_content">
							<a href="" class="card_item_content_link"></a>
							<div class="card_item_text">
								<div class="card_item_desciption">
									예쁜 조화를 보니 
									방안이 싱그러워 지는 느낌이예요 ㅋㅋ
								</div>
								<div class=""></div> 
							</div>
							<div class="card_item_image">
								<div class="card_item_image2">
									<img class="card_img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161042051238175634.jpeg?gif=1&w=480&h=480&c=c&q=80">
									<span class="card_collection"></span>
									<span class="card_img_count">조회수 371</span>
								</div>
							</div>
							<aside class="card_item_action">
								<button id="card_action1" class="card_action">
									<svg class="action_icon" aria-label="좋아요" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
										<path d="M23.22 7.95c.4 4.94-2.92 9.71-10.92 13.85a.47.47 0 0 1-.42 0C3.88 17.66.56 12.9.96 7.93 1.54 2.48 8.28.3 12.1 4.7c3.8-4.4 10.55-2.22 11.13 3.25z"></path>
									</svg>
									<span class="count">29</span>
								</button>
								<button id="card_action2" class="card_action">
									<svg class="action_icon" aria-label="스크랩" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
									<path d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path>
									</svg>
									<span class="count">27</span>
								</button>
								<a href="community_index.do" class="card_action">
									<svg class="icon" aria-label="댓글 달기" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
									<path fill="currentColor" fill-rule="nonzero" d="M13.665 18.434l.53-.066C19.69 17.679 23 14.348 23 10c0-4.942-4.235-8.5-11-8.5S1 5.058 1 10c0 4.348 3.31 7.68 8.804 8.368l.531.066L12 21.764l1.665-3.33zm-3.985.926C3.493 18.585 0 14.69 0 10 0 4.753 4.373.5 12 .5S24 4.753 24 10c0 4.69-3.493 8.585-9.68 9.36l-1.647 3.293c-.374.75-.974.744-1.346 0L9.68 19.36z"></path>
									</svg>
									<span class="count">2</span>
								</a>
							</aside>
						</div>
						<div class="card_item_comment">
							<article class="card_item_comment" aria-label="댓글">
								<address class="comment_wirter">
									<a href="#" class="writer_link">
										<div class="writer_img">
											<img class="writer_img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1607992974_EAn.jpeg?gif=1&w=36&h=36&c=c">
	 									</div>
										<span class="writer_name">3색이</span>
									</a>
									<span class="writer_seperator"> :</span>
								</address>
								<a href="#" class="comment_link">
									<p class="comment_content">요새 조화도 진짜처럼 ~ </p>
								</a> 
							</article>
						</div>
					</article>
				</div>
			</div>
			
			<div class="card_item_wrap">
				<div class="card_item">
					<article class="card_item">
						<div class="card_writer">
							<address class="card_writer_content">
								<div class="card_writer_header">
									<a href="" class="card_writer_link">
										<img class="card_writer_img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/160345733976486088.jpeg?gif=1&w=36&h=36&c=c&webp=1">
										<span class="card_writer_name">그래니롤라</span>
									</a>
									<span class="seperator">·</span>
									<button id="follow" class="card_item_follow" type="button">팔로우</button>
								</div>
								<p class="card_writer_intro">인테리어 정보는 인스타~</p>
							</address>
						</div>
						<div class="card_item_content">
							<a href="" class="card_item_content_link"></a>
							<div class="card_item_text">
								<div class="card_item_desciption">
									예쁠 조화를 보니 
									방안이 싱그러워 지는 느낌이예요 ㅋㅋ
								</div>
								<div class=""></div> 
							</div>
							<div class="card_item_image">
								<div class="card_item_image2">
									<img class="card_img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161042051238175634.jpeg?gif=1&w=480&h=480&c=c&q=80">
									<span class="card_collection"></span>
									<span class="card_img_count">조회수 371</span>
								</div>
							</div>
							<aside class="card_item_action">
								<button id="card_action1" class="card_action">
									<svg class="action_icon" aria-label="좋아요" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
										<path d="M23.22 7.95c.4 4.94-2.92 9.71-10.92 13.85a.47.47 0 0 1-.42 0C3.88 17.66.56 12.9.96 7.93 1.54 2.48 8.28.3 12.1 4.7c3.8-4.4 10.55-2.22 11.13 3.25z"></path>
									</svg>
									<span class="count">29</span>
								</button>
								<button id="card_action2" class="card_action">
									<svg class="action_icon" aria-label="스크랩" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
									<path d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path>
									</svg>
									<span class="count">27</span>
								</button>
								<a href="community_index.do" class="card_action">
									<svg class="icon" aria-label="댓글 달기" width="24" height="24" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
									<path fill="currentColor" fill-rule="nonzero" d="M13.665 18.434l.53-.066C19.69 17.679 23 14.348 23 10c0-4.942-4.235-8.5-11-8.5S1 5.058 1 10c0 4.348 3.31 7.68 8.804 8.368l.531.066L12 21.764l1.665-3.33zm-3.985.926C3.493 18.585 0 14.69 0 10 0 4.753 4.373.5 12 .5S24 4.753 24 10c0 4.69-3.493 8.585-9.68 9.36l-1.647 3.293c-.374.75-.974.744-1.346 0L9.68 19.36z"></path>
									</svg>
									<span class="count">2</span>
								</a>
							</aside>
						</div>
						<div class="card_item_comment">
							<article class="card_item_comment" aria-label="댓글">
								<address class="comment_wirter">
									<a href="#" class="writer_link">
										<div class="writer_img">
											<img class="writer_img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1607992974_EAn.jpeg?gif=1&w=36&h=36&c=c">
	 									</div>
										<span class="writer_name">3색이</span>
									</a>
									<span class="writer_seperator"> :</span>
								</address>
								<a href="#" class="comment_link">
									<p class="comment_content">요새 조화도 진짜처럼 ~ </p>
								</a> 
							</article>
						</div>
					</article>
				</div>
			</div>
			
			
		</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp"/>
</body>
</html>