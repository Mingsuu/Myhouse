<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/yj.css">
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script>
	$(document).ready(function(){
		$("form.comment_feed_item_reply").hide();
		
		$("button#card_scrap").click(function(){
			if ($(this).hasClass("card_scrap")){
				$(this).removeClass("card_scrap");
				$(this).addClass("card_scrap_active");
				var output="<div class='toast-message toast-message-transition-enter-done'><button class='toast-message__footer' type='button' id='taost-none2'><div class='toast-message__footer__close'>"
				output +="<svg class='toast-message__footer__close__icon' width='24' height='24' viewBox='0 0 24 24' preserveAspectRatio='xMidYMid meet'>"
				output +="<path fill='#bdbdbd' d='M11.8 9.7l7.8-7.8 2 2.1-7.7 7.8 7.8 7.8-2.1 2-7.8-7.7L4 21.7l-2.1-2.1 7.8-7.8L1.9 4 4 1.9z'></path></svg></div></button>"
				output +="<div class='toast-message__body'>스크랩했습니다</div>"
				output +="<a class='button button--color-blue-inverted button--size-40 button--shape-4 toast-message__button' href='/users/11910649/collections'>스크랩북 보기</a>"
				output +="<button class='button button--color-blue button--size-40 button--shape-4 toast-message__button toast-message__button--last'>폴더에 담기</button></div>"
				if($('div.toast-message').length == 2){
					$('div.toast-message').first().remove();
				}
				$("div.toast-message-root").append(output);
				$('div.toast-message').fadeOut(5000).fadeTo(5000, 0.5);
			}else{
				$(this).removeClass("card_scrap_active");
				$(this).addClass("card_scrap");
				var output="<div class='toast-message toast-message-transition-enter-done'><button class='toast-message__footer' type='button'>"
				output+="<div class='toast-message__footer__close'><svg class='toast-message__footer__close__icon' width='24' height='24' viewBox='0 0 24 24' preserveAspectRatio='xMidYMid meet'>"
				output+="<path fill='#bdbdbd' d='M11.8 9.7l7.8-7.8 2 2.1-7.7 7.8 7.8 7.8-2.1 2-7.8-7.7L4 21.7l-2.1-2.1 7.8-7.8L1.9 4 4 1.9z'></path></svg></div></button>"
				output+="<div class='toast-message__body'>스크랩북에서 삭제했습니다.</div></div>"
				if($('div.toast-message').length == 2){
					$('div.toast-message').first().remove();
				}
				$("div.toast-message-root").append(output);
				$('div.toast-message').fadeOut(5000).fadeTo(5000, 0.5);
			} 
		});
		
		$('button.tag').mouseover(function(){
			var output="<div class='pop'><div class='popout popout--prepared popout--axis-1 popout--dir-2 popout--cross-dir-1' data-popout='true'>"
			output += "<div class='_3nN5n open open-active'><div class='_2TAbe _1__Mp tag-item-content'><a class='tag-item-content__link' axis='1' direction='0,1' overflown='false,false' index='0' href='/productions/106089/selling'>"
			output += "<div class='_20T1P tag-item-content__item'><div class='asUT1'><picture>"
			output += "<source type='image/webp' src='https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1552970124_103936_1.jpg?w=256&amp;h=256&amp;c=c&amp;webp=1'>"
			output += "<img class='_2TSZD' src='https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/1552970124_103936_1.jpg?w=256&amp;h=256&amp;c=c'>"
			output += "</picture></div><div class='_3bqx7'><div class='_389Yp'>레인보우하우스</div><div class='_2WPGa'>원프레드화이트 쇼파커버 (거실러그, 블랭킷, 다용도 패브릭)</div>"
			output += "<div class='_2WAbO'>34,900원</div></div><div class='_35DZ7'><div class='tag-item-content__icon'>"
			output += "<svg class='tag_icon' width='1em' height='1em' viewBox='0 0 24 24' preserveAspectRatio='xMidYMid meet'>"
			output += "<path fill='currentColor' fill-rule='nonzero' d='M6 19.692L8.25 22 18 12 8.25 2 6 4.308 13.5 12z'></path></svg></div></div></div></a></div></div></div></div>"
			
			$(this).parent().append(output);
		});
		
		$("button.tag").mouseleave(function(){
			$(this).parent().children('.pop').remove();
		});
		
		$("button#likes_icon_btn").click(function(){
			if ($(this).children("svg").hasClass("badge")){
				$(this).children("svg").removeClass("badge");
				$(this).children("svg").addClass("badge_liked");
				$(this).parent().parent().children("button#likes_btn").removeClass("comment_feed_item_footer_likes_btn");
				$(this).parent().parent().children("button#likes_btn").addClass("comment_feed_item_footer_likes_btn_active");
				$(this).parent().parent().children("button#likes_btn").html("좋아요취소");
			}else{
				$(this).children("svg").removeClass("badge_liked");
				$(this).children("svg").addClass("badge");
				$(this).parent().parent().children("button#likes_btn").removeClass("comment_feed_item_footer_likes_btn_active");
				$(this).parent().parent().children("button#likes_btn").addClass("comment_feed_item_footer_likes_btn");
				$(this).parent().parent().children("button#likes_btn").html("좋아요");
			}
		});
		$("button#likes_btn").click(function(){
			if ($(this).parent().children().children().children().hasClass("badge")){
				$(this).parent().children().children().children().removeClass("badge");
				$(this).parent().children().children().children().addClass("badge_liked");
				$(this).removeClass("comment_feed_item_footer_likes_btn");
				$(this).addClass("comment_feed_item_footer_likes_btn_active");
				$(this).html("좋아요취소");
			}else{
				$(this).parent().children().children().children().removeClass("badge_liked");
				$(this).parent().children().children().children().addClass("badge");
				$(this).removeClass("comment_feed_item_footer_likes_btn_active");
				$(this).addClass("comment_feed_item_footer_likes_btn");
				$(this).html("좋아요");
			} 
		});
		$("button#reply_btn").click(function(){
			var form_name = $(this).parent().parent().parent().parent().parent().parent().children().last().attr("class");
			if($("."+form_name).css("display") == "none"){
				$("."+form_name).show();
			} else {
				$("."+form_name).hide();
			}
		});
		
		$("button#btn_like").click(function(){
			if ($(this).hasClass("btn_action")){
				$(this).removeClass("btn_action");
				$(this).addClass("btn_action_active");
			}else{
				$(this).removeClass("btn_action_active");
				$(this).addClass("btn_action");
			} 
		});
		
		$("button#btn_scrap").click(function(){
			if ($(this).hasClass("btn_action")){
				$(this).removeClass("btn_action");
				$(this).addClass("btn_action_active");
				var output="<div class='toast-message toast-message-transition-enter-done'><button class='toast-message__footer' type='button' id='taost-none2'><div class='toast-message__footer__close'>"
				output +="<svg class='toast-message__footer__close__icon' width='24' height='24' viewBox='0 0 24 24' preserveAspectRatio='xMidYMid meet'>"
				output +="<path fill='#bdbdbd' d='M11.8 9.7l7.8-7.8 2 2.1-7.7 7.8 7.8 7.8-2.1 2-7.8-7.7L4 21.7l-2.1-2.1 7.8-7.8L1.9 4 4 1.9z'></path></svg></div></button>"
				output +="<div class='toast-message__body'>스크랩했습니다</div>"
				output +="<a class='button button--color-blue-inverted button--size-40 button--shape-4 toast-message__button' href='/users/11910649/collections'>스크랩북 보기</a>"
				output +="<button class='button button--color-blue button--size-40 button--shape-4 toast-message__button toast-message__button--last'>폴더에 담기</button></div>"
				if($('div.toast-message').length == 2){
					$('div.toast-message').first().remove();
				}
				$("div.toast-message-root").append(output);
				$('div.toast-message').fadeOut(5000).fadeTo(5000, 0.5);
			}else{
				$(this).removeClass("btn_action_active");
				$(this).addClass("btn_action");
				var output="<div class='toast-message toast-message-transition-enter-done'><button class='toast-message__footer' type='button'>"
				output+="<div class='toast-message__footer__close'><svg class='toast-message__footer__close__icon' width='24' height='24' viewBox='0 0 24 24' preserveAspectRatio='xMidYMid meet'>"
				output+="<path fill='#bdbdbd' d='M11.8 9.7l7.8-7.8 2 2.1-7.7 7.8 7.8 7.8-2.1 2-7.8-7.7L4 21.7l-2.1-2.1 7.8-7.8L1.9 4 4 1.9z'></path></svg></div></button>"
				output+="<div class='toast-message__body'>스크랩북에서 삭제했습니다.</div></div>"
				if($('div.toast-message').length == 2){
					$('div.toast-message').first().remove();
				}
				$("div.toast-message-root").append(output);
				$('div.toast-message').fadeOut(5000).fadeTo(5000, 0.5);
			} 
		});
		
		$(document).on("click","button.toast-message__footer",function(){
			$(this).parent().remove();
		});
		
		
		$("button#btn_follow").click(function(){
			if ($(this).hasClass("card_detail_writer_follow")){
				$(this).removeClass("card_detail_writer_follow");
				$(this).addClass("card_detail_writer_following");
				$(this).html("팔로잉");
			}else{
				$(this).removeClass("card_detail_writer_following");
				$(this).addClass("card_detail_writer_follow");
				$(this).html("팔로우");
			} 
		});
		
	});
</script>
<style>
	div.card_detail{
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
		position: relative;
	}
	
	div.content{
		margin: 0;
		padding: 0;
		margin-right: auto;
		margin-left: auto;
		width: calc(100% - 120px);
		max-width: 100%;
		box-sizing: border-box;
		min-height: 1px;
		width:1100px;
	}
	
	div.row{
		margin: 0;
		padding: 0;
		display: flex;
		flex-wrap: wrap;
		box-sizing: border-box;
		margin-right: -10px;
		margin-left: -10px;
	}
	
	div.card_detail_content{
		margin: 0;
		padding: 0;
		position: relative;
		width: 100%;
		min-height: 1px;
		box-sizing: border-box;
		-webkit-box-flex: 0;
		flex: 0 0 66.6666666667%;
		max-width: 66.6666666667%;
		padding-right: 10px;
		padding-left: 10px;
		padding-bottom: 40px;
	}
	
	header.card_detail_header{
		box-sizing: border-box;
		position: relative;
		display: flex;
		-webkit-box-pack: justify;
		justify-content: space-between;
		color: #757575;
		margin: 40px 0 30px;
		font-size: 15px;
		line-height: 21px;
		border: none;
	}
	div.card_detail_list{
		color: #757575;
		font-size: 15px;
		line-height: 21px;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
	}
	span.header_prop{
		display: inline-block;
	}
	
	span.header_prop:not(:last-child):after {
	    content: "|";
	    margin: 0 5px 0 2px;
	    color: #bdbdbd;
	}
	
	article.card_detail_card{
		margin: 0 0 60px;
	}
	div.card_detail_img_wrap{
		padding: 0; margin: 0;
	}
	

	div.card_detail_img{
		margin: 0;
		padding: 0;
		font-size: 0;
		position: relative;
		display: block;
		background-color: #ededed;
		overflow: hidden;
	}
	div.card_img_content{
		padding-bottom: 100%;
	}
	img.card_img{
		border: 0;
		position: absolute;
		top: 50%;
		left: 50%;
		width: 100%;
		transform: translate(-50%,-50%);
	}
	button.card_scrap{
		position: absolute;
		border: none;
		background: none;
		color: rgba(0,0,0,.3);
		transition: color .1s,opacity .1s;
		right: 20px;
		bottom: 20px;
		opacity: 0;
	}
	
	button.card_scrap_active{
		position: absolute;
		border: none;
		background: none;
		transition: color .1s,opacity .1s;
		right: 20px;
		bottom: 20px;
		color: #35c5f0;
		opacity: 0;
	}
	
	div.card_detail_img_wrap:active .card_detail_img .card_img_tag, 
	div.card_detail_img_wrap:hover .card_detail_img .card_img_tag,
	div.card_detail_img .card_img_tag_active,
	div.card_detail_img_wrap:active .card_scrap, div.card_detail_img_wrap:hover .card_scrap,
	div.card_detail_img_wrap:active .card_scrap_active, div.card_detail_img_wrap:hover .card_scrap_active {
    	opacity: 1;
	}
	
	svg.comm_icon{
		cursor: pointer;
		font-size: inherit;
		-webkit-tap-highlight-color: transparent;
		width: 48px;
		height: 48px;
	}
	div.card_img_tag{
		margin: 0;
		padding: 0;
		display: inline-block;
		position: absolute;
		font-size: 0;
		line-height: 0;
		transition: opacity .1s;
		opacity: 0;
		transform: translate(-50%,-50%);
		top: 35.2657%;
		left: 33.6957%;
	}
	
	button.tag{
		display: inline-block;
		margin: 0;
		padding: 0;
		border: none;
		background: none;
		font-size: 0;
		cursor: pointer;
	}
	
	svg.tag{
		width: 1em;
		height: 1em;
		-webkit-tap-highlight-color: transparent;
		font-size: 24px;
		color: rgba(53,197,240,.8);
		transition: color .1s;
	}
	
	div.card_detail_production_list{
		padding: 0;
		margin: 10px 0 -10px;
	}
	
	p.card_detail_description{
		padding: 0;
		display: block;
		font-size: 15px;
		line-height: 28px;
		color: #424242;
		white-space: pre-line;
		overflow-wrap: break-word;
		margin: 30px 0;
	}
	
	footer.card_detail_footer{
		box-sizing: border-box;
		position: relative;
		display: flex;
		-webkit-box-align: center;
		align-items: center;
		-webkit-box-pack: justify;
		justify-content: space-between;
		margin: 0;
		padding: 0;
		border: none;
	}
	
	span.footer_prop:not(:last-child):after{
		 content: "·";
		 margin: 0 7px 0 4px;
		 color: #bdbdbd;
		 font-size: 13px;
		 font-weight: 400;
	}
	
	p.footer_metadata{
		margin: 0;
		padding: 0;
		color: #757575;
		font-size: 13px;
		line-height: 19px;
	}
	
	span.footer_prop{
		display: inline-block;
		margin: 0;
		padding: 0;
		font: inherit;
		color: inherit;
		background: none;
		border: none;
	
	}
	
	div.comment_section{
		border-top: 1px solid #ededed;
		margin: 60px 0 0;
		padding: 60px 0 0;
	}
	
	h1.comment_feed_header{
		padding: 0;
		font-weight: 700;
		color: #000;
		margin: 10px 0 20px;
		font-size: 18px;
	}
	span.comment_feed_count{
		font-weight: 700;
		font-size: 18px;
		color: #35c5f0;
	}
	
	form.comment_feed_form{
		margin: 0;
		padding: 0;
		display: flex;
		position: relative;
		margin-bottom: 30px;
	}
	
	div.comment_feed_form_user{
		margin: 0;
		padding: 0;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
	}
	
	img.comment_feed_form_user_img{
		border: 0;
		width: 30px;
		height: 30px;
		margin: 5px 10px 0 0;
		border-radius: 100%;
	}
	
	div.comment_feed_form_input{
		margin: 0;
		padding: 0;
		display: flex;
		position: relative;
		max-width: 100%;
		border: 1px solid #dbdbdb;
		border-radius: 4px;
		-webkit-box-flex: 1;
		flex: 1 1 0px;
		min-width: 0;
	}
	
	div.comment_feed_form_content{
		margin: 0;
		padding: 0;
		-webkit-box-flex: 1;
		flex: 1 1 0px;
		min-width: 0;
	}
	
	div.comment_content_input{
		margin: 0;
		padding: 0;
		position: relative;
	}
	
	div.comment_content_input_text{
		display: block;
		width: 100%;
		min-height: 38px;
		border: none;
		background: none;
		color: #424242;
		margin: 0;
		padding: 8px 15px 9px;
		font-family: inherit;
		font-size: 15px;
		line-height: 1.4;
		resize: none;
		overflow: hidden;
		box-sizing: border-box;
	}
	
	div.comment_feed_form_actions{
		display: flex;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
		padding: 7px 15px 7px 0;
		margin: 0 -7.5px;
		font-size: 0;
	}
	button.comment_feed_form_submit{
		touch-action: manipulation;
		margin: 0 7.5px;
		padding: 0;
		border: none;
		background: none;
		transition: opacity .2s;
		font-size: 15px;
		font-weight: 700;
		cursor: default;
		color: #a3e4f8;
	}
	
	ul.comment_feed_list,li.comment_feed_list_item{
		margin: 0;
		padding: 0;
		list-style: none;
	}
	
	article.comment_feed_item{
		padding-left: 40px;
		margin-bottom: 30px;
	}
	
	p.comment_feed_item_content{
		padding: 0;
		position: relative;
		margin: -4px 0 4px;
		min-width: 0;
		max-width: 100%;
		text-overflow: ellipsis;
		overflow-wrap: break-word;
		font-size: 15px;
		line-height: 1.67;
	}
	
	a.comment_feed_author{
		list-style: none;
		overflow-wrap: break-word;
		-webkit-tap-highlight-color: transparent;
		color: inherit;
		text-decoration: none;
		cursor: pointer;
		touch-action: manipulation;
		font-size: 0;
		display: inline;
		margin: 0 10px 0 0;
		line-height: inherit;
	}
	
	a.comment_feed_author:active, 
	a.comment_feed_author:focus, a.comment_feed_author:hover {
 	   text-decoration: underline;
	}
	
	img.comment_feed_author_img{
		border: none;
		position: absolute;
		width: 30px;
		height: 30px;
		left: -40px;
		margin-right: 10px;
		border-radius: 100%;
		background-color: #dbdbdb;
		top: 5px;
	}
	
	span.comment_feed_author_name{
		border:none;
		color:#424242;
		font-weight:700;
		font-size: 15px;
	}
	
	span.comment_feed_content,
	span.comment_feed_item_content_content{
		overflow-wrap: break-word;
		font-size: 15px;
		line-height: 1.67;
		white-space: pre-line;
	}
	
	span.comment_feed_item_content_content a:hover {
    	color: #a3e4f8;
	}
	
	footer.comment_feed_item_footer{
		box-sizing: border-box;
		position: relative;
		display: block;
		color: #757575;
		font-size: 13px;
		font-weight: 700;
	}
	
	footer.comment_feed_item_footer>::after {
	    display: inline-block;
	    color: #bdbdbd;
	    content: "·";
	    margin: 0 5px;
	    font-size: 13px;
	    font-weight: 400;
	}
	footer.comment_feed_item_footer>.comment_feed_item_footer_likes_zero::after{
		display:none;
	}
	
	time.comment_feed_item_footer_time{
		list-style: none;
		color: #757575;
		font-size: 13px;
		font-weight: 400;
	}
	
	span.comment_feed_item_footer_likes,
	span.comment_feed_item_footer_likes_zero{
		font-weight: 700;
	}
	
	button.comment_feed_item_footer_likes_icon{
		cursor: pointer;
		touch-action: manipulation;
		background: none;
		border: none;
		color: inherit;
		padding: 0;
		font-size: 13px;
		font-weight: inherit;
		font-family: inherit;
	}
	
	footer.comment_feed_item_footer>a:active, footer.comment_feed_item_footer>a:focus,
	footer.comment_feed_item_footer>a:hover, footer.comment_feed_item_footer>button:active,
	footer.comment_feed_item_footer>button:focus, footer.comment_feed_item_footer>button:hover {
   		text-decoration: underline;
	}
	
	svg.badge,svg.badge_liked{
		width: 15;
		height: 14;
		vertical-align: -2px;
		margin-right: 3px;
	}
	
	
	svg.badge>path{
		stroke: #757575;
		stroke-width: 1.1px;
		fill: transparent;
		transition: stroke .1s,fill .1s;
	}
	svg.badge_liked>path{
		stroke-width: 1.1px;
		transition: stroke .1s,fill .1s;
		stroke: #35c5f0;
		fill: #35c5f0;
	}
	
	span.comment_feed_item_footer_likes_count{
		list-style: none;
		color: #757575;
		font-size: 13px;
		font-weight: 700;
	}
	
	span.comment_feed_item_footer_likes_zero>span.comment_feed_item_footer_likes_count{
		display: none;
	}
	
	button.comment_feed_item_footer_likes_btn,
	button.comment_feed_item_footer_reply_btn{
		cursor: pointer;
		touch-action: manipulation;
		background: none;
		border: none;
		color: inherit;
		padding: 0;
		font-size: 13px;
		font-weight: inherit;
		font-family: inherit;
	}
	
	button.comment_feed_item_footer_likes_btn_active{
		background: none;
		border: none;
		color: inherit;
		padding: 0;
		font-size: 13px;
		font-family: inherit;
		font-weight: 400;
	}
	
	div.comment_feed_reply_list{
		margin: 0;
		padding: 0;
	}
	
	ul.comment_feed_reply_list{
		margin-top: 20px;
	}
	
	li.comment_feed_reply_item{
		margin: 0;
		padding: 0;
	}
	
	article.comment_feed__item{
		margin-bottom: 10px;
		padding: 20px 20px 20px 61px;
		border-radius: 8px;
		background-color: #f7f8fa;
	}
	a.comment_tag{
		color: #35c5f0;
	}
	
	div.card_detail_sidebar{
		margin: 0;
		padding: 0;
		position: relative;
		width: 100%;
		min-height: 1px;
		box-sizing: border-box;
		-webkit-box-flex: 0;
		flex: 0 0 33.3333333333%;
		max-width: 33.3333333333%;
		padding-right: 10px;
		padding-left: 10px;
	}
	
	div.card_detail_sidebar_wrap{
		margin: 0;
		padding: 0;
		position: relative;
		min-height: 100%;
		padding-left: 40px;
		margin-left: 20px;
		border-left: 1px solid #ededed;
		display: block;
	}
	
	
	div.sticky_container_card_detail_sidebar{
		margin: 0;
		padding: 0;
		position: sticky;
		top: 81px;
	}
	
	div.sticky_container_card_detail_sidebar_inner{
		-webkit-box-orient: vertical;
		flex-direction: column;
		min-height: 600px;
		padding: 40px 0;
		display: flex;
		position: relative;
		box-sizing: border-box;
		height: 690.328px;
	}
	
	div.sticky_container_card_detail_sidebar_action_list{
		padding: 0;
		display: flex;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
		margin: 0 -5px 40px;
	}
	
	button.btn_action,button.btn_action_active{
		touch-action: manipulation;
		user-select: none;
		box-sizing: border-box;
		border: 1px solid transparent;
		background: none;
		font-family: inherit;
		font-weight: 700;
		text-decoration: none;
		transition: color .1s,background-color .1s,border-color .1s;
		cursor: pointer;
		background-color: #f5f5f5;
		border-color: #f5f5f5;
		color: #757575;
		padding: 11px 10px;
		font-size: 17px;
		line-height: 26px;
		border-radius: 8px;
		-webkit-box-flex: 1;
		flex: 1 0 0px;
		position: relative;
		display: block;
		margin: 0 5px;
		text-align: center;
		z-index: 2;
	}
	

	button.btn_action:active, button.btn_action:hover {
	    background-color: #f0f0f0;
	    border-color: #f0f0f0;
	}
	
	button.btn_action>svg.actionIcon{
		width: 24;
		height: 24;
		margin: 0 0 -2px;
		vertical-align: -4px;
		fill: transparent;
		stroke: #424242;
		stroke-width: 1.1px;
		transition: fill .1s,stroke .1s;
	}
	
	button.btn_action_active>svg.actionIcon{
		width: 24;
		height: 24;
		-webkit-tap-highlight-color: transparent;
		margin: 0 0 -2px;
		vertical-align: -4px;
		stroke-width: 1.1px;
		transition: fill .1s,stroke .1s;
		fill: #35c5f0;
		stroke: transparent;
	}
	
	
	span.count{
		text-align: center;
		margin-left: 8px;
		font-size: 15px;
		font-weight: 400;
		color: #424242;
	}
	
	div.card_detail_sidebar_content{
		margin: 0;
		padding: 0;
		-webkit-box-flex: 1;
		flex: 1 0 auto;
	}
	
	div.card_detail_write{
		margin: 0;
		display: flex;
		-webkit-box-align: center;
		align-items: center;
		position: relative;
		padding: 0 0 0 60px;
		min-height: 50px;
	}
	
	div.card_detail_writer_user{
		margin: 0;
		padding: 0;
		-webkit-box-flex: 1;
		flex: 1 0 0px;
		min-width: 0;
	}
	
	a.card_datail_writer_link{
		text-decoration: none;
		cursor: pointer;
		touch-action: manipulation;
		display: inline;
		color: #424242;
		font-size: 15px;
		font-weight: 700;
		line-height: 21px;
		transition: opacity .1s;
	}
	
	a.card_detail_writer_link:active,
	a.card_detail_writer_link:hover {
   		opacity: .5;
	}
	
	img.card_detail_writer_img{
		line-height: 21px;
		border: none;
		position: absolute;
		top: 0;
		left: 0;
		width: 50px;
		height: 50px;
		border-radius: 100%;
		background-color: #ededed;
	}
	span.card_detail_writer_name{
		color: #424242;
		font-size: 15px;
		font-weight: 700;
		line-height: 21px;
		border: none;
		display: inline-block;
		margin: -3px 0 0;
	}
	p.card_detail_writer_intro{
		margin: 0;
		padding: 0;
		display: block;
		color: #757575;
		font-size: 12px;
		line-height: 18px;
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
	}
	button.card_detail_writer_follow,button.card_detail_writer_following{
		touch-action: manipulation;
		user-select: none;
		display: inline-block;
		margin: 0;
		box-sizing: border-box;
		border: 1px solid transparent;
		background: none;
		font-family: inherit;
		text-decoration: none;
		text-align: center;
		transition: color .1s,background-color .1s,border-color .1s;
		border-radius: 4px;
		cursor: pointer;
		background-color: #f5f5f5;
		border-color: #f5f5f5;
		color: #757575;
		padding: 4px 10px;
		line-height: 20px;
		font-weight: 700;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
		margin-left: 6px;
		font-size: 12px;
	}
	
	button.card_detail_writer_following{
		background-color: #35c5f0;
		border-color: #35c5f0;
		color: #fff;
	}
	
	div.card_detail_card_list{
		padding: 0;
		position: relative;
		margin: 20px 0;
	}
	
	ul.card_detail_card_list{
		padding: 0;
		list-style: none;
		display: flex;
		flex-wrap: wrap;
		margin: -1px;
	}
	li.card_detail_card_list_item{
		margin: 0;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
		width: 50%;
		padding: 1px;
		box-sizing: border-box;
	}
	a.card_detail_card_list_item_link{
		color: inherit;
		text-decoration: none;
		cursor: pointer;
		touch-action: manipulation;
		position: relative;
		display: block;
		padding-top: 100%;
		background-color: #ededed;
		overflow: hidden;
		border-top-left-radius: 6px;
	}
	img.card_detail_card_list_item_img{
		border: none;
		position: absolute;
		top: 50%;
		left: 50%;
		width: 100%;
		transform: translate(-50%,-50%);
		transition: transform .2s;
	}
	
	a.card_detail_card_list_item_link:active img.card_detail_card_list_item_img,
	a.card_detail_card_list_item_link:hover img.card_detail_card_list_item_img {
  	  transform: translate(-50%,-50%) scale(1.05);
	}
	
	a.card_detail_card_list_more{
		position: absolute;
		right: 0;
		bottom: 12px;
		width: 80px;
		padding: 6px 0 7px;
		line-height: 19px;
		font-size: 15px;
		font-weight: 700;
		color: #fff;
		background-color: rgba(0,0,0,.5);
		text-align: center;
		transition: background-color .1s;
	}
	
	a.card_detail_card_list_more:hover{
		background-color: rgba(0,0,0,.8);
	}
	
	form.comment_feed_item_reply{
		margin: 0;
		display: flex;
		position: relative;
		padding: 10px 0 0 18px;
		margin-left: 40px;
		border: none;
		margin-bottom: 30px;
	}
	
	div.comment_feed_form_user{
		margin: 0;
		padding: 0;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
	}
	
	div.comment_feed_form_user>img{
		border: 0;
		width: 30px;
		height: 30px;
		margin: 5px 10px 0 0;
		border-radius: 100%;
	}
	a.comment_content_input_text_mention{
		touch-action: manipulation;
		color: #35c5f0;
		font-weight: 700;
		text-decoration: underline;
		cursor: text;
	}
		/* 스크랩 알림창 */
   .toast-message:last-of-type {
       padding-bottom: env(safe-area-inset-bottom);
   }
   .toast-message {
       display: flex;
       -webkit-box-pack: justify;
       justify-content: space-between;
       -webkit-box-align: center;
       align-items: center;
       width: 100%;
       height: 80px;
       border-radius: 8px;
       background-color: #fff;
       color: #424242;
       font-size: 15px;
       line-height: 1.3;
       transition: opacity .3s,transform .3s;
       box-shadow: 0 0 20px 0 rgba(0,0,0,.26);
       margin-bottom:10px;
   }
   .toast-message__footer {
      -webkit-box-flex: 0;
      flex:0 0 52px;
      text-align: center;
      height: 100%;
      position:relative;
      border:0;
      border-radius:8px;
      background-color: #fff;
   }
   .toast-message__footer__close {
      width: 44px;
      height: 44px;
      display: flex;
      -webkit-box-pack: center;
      justify-content: center;
      -webkit-box-align: center;
       align-items: center;
       background-color: #fff;
       border-radius:22px;
       cursor: pointer;
   }
   .toast-message__footer > * {
      position:absolute;
      left:50%;
      top:50%;
      transform : translate(-50%, -50%);
   }
   .toast-message__body {
      -webkit-box-flex: 1;
      flex: 1;
      position: relative;
      white-space: pre-wrap;
      font-weight:500;
   }
   .toast-message > .toast-message__button {
      margin-right : 8px;
   }
   .button--size-40 {
      padding : 9px 10px;
      font-size: 15px;
      line-height: 20px;
      font-weight:bold;
   }
   .button--color-blue-inverted {
      background-color : #fff;
      border: 1px solid #35c5f0;
      color: #35c5f0;
      border-radius:5px;
   }
   .toast-message > .toast-message__button--last {
      margin-right: 16px;
   }
   .button--size-40 {
      padding: 9px 10px;
      font-size:15px;
      line-height:20px;
      font-weight:bold;
   }
   .button--color-blue {
      background-color :#35c5f0;
      border: 1px solid #35c5f0;
      color: #fff;
      border-radius:5px; 
   }
   .toast-message-root {
       position: fixed;
       bottom: 20px;
       left: 50%;
       transform: translateX(-50%);
       z-index: 10000101;
       width: 470px;
       box-sizing: border-box;
       -webkit-box-flex: 0;
		flex: 0 0 auto;
   }
  .toast-message-root.toast-none {
      display:none;
   }
   /*스크랩 취소 */
   .toast-message__body:last-child {
      margin-right: 20px;
   }
   
   div.popout{
	   	color: #424242;
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		-webkit-tap-highlight-color: transparent;
	/* 	margin: 0;
		padding: 0; */
		position: absolute;
		z-index: 100000;
		margin-left:10px;
		transform: translateX(-50%);
   }
   
   div._3nN5n{
   		font-size: 15px;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
		transform-origin: 50% 0;
		box-sizing: border-box;
		pointer-events: auto;
		visibility: visible;
		opacity: 1;
		transform: none;
		transition: opacity .2s,transform .2s;
   }
   
   div._2TAbe{
	   	pointer-events: auto;
		visibility: visible;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
		position: relative;
		border: none;
		box-shadow: 0 2px 6px 0 rgba(0,0,0,.2);
		background-color: hsla(0,0%,100%,.86);
		color: #fff;
		border-radius: 4px;
		margin-top: 15px;
   }
   
   a.tag-item-content__link{
	   	pointer-events: auto;
		visibility: visible;
		-webkit-tap-highlight-color: transparent;
		color: inherit;
		text-decoration: none;
		cursor: pointer;
		touch-action: manipulation;
   }
   
   div._20T1P{
   		margin: 0;
		border: none;
		display: flex;
		align-items: center;
		width: 280px;
		padding: 10px;
		box-sizing: border-box;
		position: relative;
   }
   
   div.asUT1{
   		margin: 0;
		padding: 0;
		border: none;
		position: relative;
		flex: 0 0 auto;
		width: 80px;
		height: 80px;
		margin-right: 12px;
		border-radius: 2px;
		overflow: hidden;
   }
   picture{
   		pointer-events: auto;
		visibility: visible;
		color: inherit;
		cursor: pointer;
   }
   div._3bqx7{
   		margin: 0;
		padding: 0;
		border: none;
		flex: 1 0 0px;
   }
   div._389Yp{
   		padding: 0;
		border: none;
		margin: 0 0 2px;
		font-size: 11px;
		line-height: 17px;
		color: #757575;
   }
   
   div._2WPGa{
   		margin: 0;
		padding: 0;
		border: none;
		height: 36px;
		font-size: 13px;
		line-height: 18px;
		color: #292929;
		display: -webkit-box;
		text-overflow: ellipsis;
		-webkit-line-clamp: 2;
		-webkit-box-orient: vertical;
		overflow: hidden;
   }
   
   div._2WAbO{
   		padding: 0;
		border: none;
		margin: 6px 0 0;
		font-size: 15px;
		font-weight: 800;
		line-height: 17px;
		color: #292929;
		-webkit-box-orient: vertical;
		overflow: hidden;
   }
   
   div._35DZ7{
   		margin: 0;
		padding: 0;
		border: none;
		flex: 0 0 auto;
		margin-left: 6px;
		color: #757575;
   }
   
   div.tag-item-content__icon{
   		
   }
   
   svg.tag_icon{
   		color: #757575;
		width: 1em;
		height: 1em;
		-webkit-tap-highlight-color: transparent;
		border: none;
   }
   svg.tag_icon>path{
   		
   }
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header1.jsp" />

	<!-- content -->
	<div class="card_detail">
		<div class="content">
			<div class="row">
				<div class="card_detail_content">
					<header class="card_detail_header">
						<div class="card_detail_list">
							<span class="header_prop">모던 스타일 &nbsp;</span>
							<span class="header_prop">아파트 </span>
						</div>
						<time class="header_date">이틀 전</time>
					</header>
					<article class="card_detail_card">
						<div class="card_detail_img_wrap">
							<div class="card_detail_img">
								<div class="card_img_content">
									<img class="card_img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/161041249591864651.jpeg?gif=1&w=640&webp=1">
									<button id="card_scrap" class="card_scrap" type="button">
									<svg class="comm_icon" width="36" height="36" viewBox="0 0 36 36" preserveAspectRatio="xMidYMid meet">
									<circle cx="18" cy="18" r="18" fill="#FFF" fill-opacity=".5"></circle>
									<path fill="currentColor" d="M27.15 26.79a.88.88 0 00.1-.41V10.21c0-.73-.59-1.32-1.31-1.32H11.06c-.72 0-1.3.6-1.3 1.32v16.16a.88.88 0 001.28.77l7.05-3.77a.88.88 0 01.82 0l7.05 3.77a.88.88 0 001.19-.36z"></path>
									</svg>
									</button>
								</div>
								<div class="card_img_tag">
									<button class=tag type="button" style="top:35.2657%;left:33.6957%">
									<svg width="1em" height="1em" viewBox="0 0 24 24" class="tag">
									<circle cx="12" cy="12" r="12" fill="currentColor"></circle>
									<path stroke="#FFF" stroke-linecap="square" stroke-width="2" d="M12 16V8m-4 4h8"></path>
									</svg>
									</button>
								</div>
							</div>
						</div>
							<p class="card_detail_description">
							예쁜 조화를 보니
							방안이 싱그러워 지는 느낌이예요~🌈
							블랭킷도 포근해보이게 배치해봤어요^^
							오늘부터 날씨가 누그러진다니
							좀 나아지겠죠?^^
							오늘하루도 화이팅하세요🤩</p>
					</article>
					<footer class="card_detail_footer">
						<p class="footer_metadata">
							<span class="footer_prop">
							조회 <!-- -->1,838<!-- -->&nbsp;
							</span>
							<span class="footer_prop">
							댓글 <!-- -->5<!-- -->&nbsp;
							</span>
						</p>
					</footer>
					
					<div class="comment_section">
						<section class="comment_feed">
							<h1 class="comment_feed_header">
								댓글 <!--  -->&nbsp;
								<span class="comment_feed_count">5</span>
							</h1>
							<form class="comment_feed_form">
								<div class="comment_feed_form_user">
									<img class="comment_feed_form_user_img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1610498514_naver_66cccd579686a4eeed50c3739b9de4b4ffef8b3e4909359b9f11317ba1c2da96.jpg?gif=1&w=72">
								</div>
								<div class="comment_feed_form_input">
									<div class="comment_feed_form_content">
										<div class="comment_content_input">
											<div class="comment_content_input_text" data-ph="칭찬과 격려의 댓글은 작성자에게 큰 힘이 됩니다 :)" contenteditable="true"></div>
										</div>
									</div>
									<div class="comment_feed_form_actions">
										<button class="comment_feed_form_submit">등록</button>
									</div>
								</div>
							</form>
							<ul class="comment_feed_list">
								<li class="comment_feed_list_item">
									<article class="comment_feed_item">
										<p class="comment_feed_item_content">
											<a href="#" class="comment_feed_author">
												<img class="comment_feed_author_img" alt="3색이" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1610546181_bFlu6cwJ5C.jpeg?gif=1&w=72">
												<span class="comment_feed_author_name">3색이</span>
											</a>
											<span class="comment_feed_content">요새 조화도 진짜처럼 잘 나오는거 같아요</span>
										</p>
										<footer class="comment_feed_item_footer">
											<time class="comment_feed_item_footer_time">
												21시간 전
											</time>
											<span class="comment_feed_item_footer_likes">
												<button id="likes_icon_btn"  class="comment_feed_item_footer_likes_icon" type="button">
													<svg class="badge" width="15" height="14" preserveAspectRatio="xMidYMid meet">
														<path fill-rule="evenodd" class="heart" d="M7 12.4c4.8-2.5 6.7-5.2 6.5-8-.3-3-4.1-4-6.1-1.4l-.4.5-.4-.5C4.6.4.8 1.5.6 4.4c-.3 2.8 1.6 5.5 6.4 8z"></path>
													</svg>
												</button>
												<span class="comment_feed_item_footer_likes_count">1</span>
												</span>
												<button id="likes_btn" class="comment_feed_item_footer_likes_btn" type="button">좋아요</button>
												<button class="comment_feed_item_footer_reply_btn" type="button">답글달기</button>
											</footer>
											<div class="comment_feed_reply_list">
												<ul class="comment_feed_reply_list">
													<li class="comment_feed_list_item">
														<article class="comment_feed__item">
															<p class="comment_feed_item_content">
																<a href="#" class="comment_feed_author">
																	<img class="comment_feed_author_img" alt="3색이" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1610546181_bFlu6cwJ5C.jpeg?gif=1&w=72">
																	<span class="comment_feed_author_name">3색이</span></a>
																<span class="comment_feed_item_content_content">
																	<a class="comment_tag" href="#" target="_blank" rel="noopener noreferrer">@3색이 </a>네~ 너무 잘 나오는 것 같아요^^
																</span>
															</p>
															<footer class="comment_feed_item_footer">
																<time class="comment_feed_item_footer_time">
																	21시간 전
																</time>
																<span class="comment_feed_item_footer_likes_zero">
																	<button id="likes_icon_btn" class="comment_feed_item_footer_likes_icon" type="button">
																		<svg class="badge" width="15" height="14" preserveAspectRatio="xMidYMid meet">
																			<path fill-rule="evenodd" class="heart" d="M7 12.4c4.8-2.5 6.7-5.2 6.5-8-.3-3-4.1-4-6.1-1.4l-.4.5-.4-.5C4.6.4.8 1.5.6 4.4c-.3 2.8 1.6 5.5 6.4 8z"></path>
																		</svg>
																	</button>
																	<span class="comment_feed_item_footer_likes_count">0</span>
																</span>
																<button id="likes_btn" class="comment_feed_item_footer_likes_btn" type="button">좋아요</button>
																<button id="reply_btn" class="comment_feed_item_footer_reply_btn" type="button">답글달기</button>
															</footer>
														</article>								
													</li>
												</ul>
											</div>
											<form class="comment_feed_item_reply">
												<div class="comment_feed_form_user">
													<img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/1610498514_naver_66cccd579686a4eeed50c3739b9de4b4ffef8b3e4909359b9f11317ba1c2da96.jpg?gif=1&w=36&webp=1">
												</div>
												<div class="comment_feed_form_input">
													<div class="comment_feed_form_content">
														<div class="comment_content_input">
															<div class="comment_content_input_text" data-ph="칭찬과 격려의 댓글은 작성자에게 큰 힘이 됩니다 :)" contenteditable="true">
																<a href="" class="comment_content_input_text_mention">@3색이</a>&nbsp;
															</div>
														</div>
													</div>
												<div class="comment_feed_form_actions">
													<button class="comment_feed_form_submit">등록</button>
												</div>
												</div>
										   </form>
									</article>
								</li>
							</ul>
						</section>
					</div>
				</div>
				<div class="card_detail_sidebar">
					<div class="card_detail_sidebar_wrap">
						<div class="sticky_container_card_detail_sidebar">
							<div class="sticky_container_card_detail_sidebar_inner">
								<div class="sticky_container_card_detail_sidebar_action_list">
									<button id="btn_like" class="btn_action">
										<svg class="actionIcon" aria-label="좋아요" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
											<path d="M23.22 7.95c.4 4.94-2.92 9.71-10.92 13.85a.47.47 0 0 1-.42 0C3.88 17.66.56 12.9.96 7.93 1.54 2.48 8.28.3 12.1 4.7c3.8-4.4 10.55-2.22 11.13 3.25z"></path>
										</svg>
										<span class="count">57</span>
									</button>
									<button id="btn_scrap" class="btn_action">
										<svg class="actionIcon" aria-label="스크랩" width="24" height="24" fill="currentColor" stroke="currentColor" stroke-width="0.5" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet">
											<path d="M11.53 18.54l-8.06 4.31A1 1 0 0 1 2 21.97V3.5A1.5 1.5 0 0 1 3.5 2h17A1.5 1.5 0 0 1 22 3.5v18.47a1 1 0 0 1-1.47.88l-8.06-4.31a1 1 0 0 0-.94 0z"></path>
										</svg>
										<span class="count">53</span>
									</button>
								</div>
												
								<div class="card_detail_sidebar_content">
									<div class="card_detail_write">
										<div class="card_detail_writer_user">
											<a class="card_detail_writer_link">
												<img class="card_detail_writer_img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/users/profile_images/160345733976486088.jpeg?gif=1&w=72&h=72&c=c">
													<span class="card_detail_writer_name">그래니놀라</span>
											</a>
											<p class="card_detail_writer_intro">인테리어 정보는 인스타 댓글로 부탁드려요^^</p>
										</div>
										<button id="btn_follow" class="card_detail_writer_follow" type="button">팔로우</button>
									</div>
									<div class="card_detail_card_list">
										<ul class="card_detail_card_list">
											<li class="card_detail_card_list_item">
												<a href="#" class="card_detail_card_list_item_link">
													<img class="card_detail_card_list_item_img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/160749189248821539.jpeg?gif=1&w=160&h=160&c=c&webp=1">
												</a>
											</li>
											<li class="card_detail_card_list_item">
												<a href="#" class="card_detail_card_list_item_link">
													<img class="card_detail_card_list_item_img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/160764318034526130.jpeg?gif=1&w=320&h=320&c=c&webp=1">
												</a>
											</li>
											<li class="card_detail_card_list_item">
												<a href="#" class="card_detail_card_list_item_link">
													<img class="card_detail_card_list_item_img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/160773541598130646.jpg?gif=1&w=160&h=160&c=c&webp=1">
												</a>
											</li>
											<li class="card_detail_card_list_item">
												<a href="#" class="card_detail_card_list_item_link">
													<img class="card_detail_card_list_item_img" src="https://image.ohou.se/i/bucketplace-v2-development/uploads/cards/snapshots/160790505690871314.jpeg?gif=1&w=160&h=160&c=c&webp=1">
												</a>
											</li>
										</ul>
										<a class="card_detail_card_list_more">더보기</a>
									</div> 
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 스크랩 팝업 -->
	<div class="toast-message-root" id="toast-none"> 
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp"/>
</body>
</html>