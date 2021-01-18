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
		$('input.form_control').click(function(){
			if ($(this).hasClass("form_control")){
				$(this).removeClass("form_control");
				$(this).addClass("form_control_visible");
			}
		});
		
		$('input[name=category]').click(function(){
			if($('input[name=category]:checked').val() == "가구"){
				$('div.furniture').css('display','block');
				$('div.fabric').css('display','none');
			}else if($('input[name=category]:checked').val() == "패브릭"){
				$('div.furniture').css('display','none');
				$('div.fabric').css('display','block');
			}else{
				$('div.furniture').css('display','none');
				$('div.fabric').css('display','none');
			}
		});
		
		$('button#product_add').click(function(){
			var name = $(this).parent().parent().parent().attr('class').split(" ");
			var output="<div class='row sales_form_group sales_product'><div class='offset1 offset1_1'><label for='sales_application_brand' class='form_label form_label_sales_form'></label></div>"
			output+="<div class='col-8 product_add'><div class='sales_form_control_wrap_product'><div class='product'><div class='pro_label'><label class='product'>상품명</label></div><div><input type='text' id='sales_application_product_name' class='form_control_product' placeholder='라인 벨벳 소파 1인용' value></div></div>"
			output += "<div class='product'><div class='pro_label'><label class='product'>상품가격</label></div><div><input type='text' id='sales_application_product_price' class='form_control_product' placeholder='178000' value></div></div>"
			output += "<div class='product'><div class='pro_label'><label class='product'>상품사진</label></div><div><label class='sales_product_file_btn'>사진 추가<input type='file' id='sales_application_product_photo' class='form_control_product sales-form__file--uploader'></label></div></div></div></div></div>"
			$('div.'+name[2]).last().after(output);
		});
		
		$('button#product_del').click(function(){
			var name = $(this).parent().parent().parent().attr('class').split(" ");
			if($('div.'+name[2]).length==1){
				alert("상품을 하나 이상 입력해주세요")
			}else{
				$('div.'+name[2]).last().remove();
			}
		});
		
	});
</script>
<style>
	header.sales_application{
		color: #424242;
		line-height: 1;
		font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
		-webkit-font-smoothing: antialiased;
		letter-spacing: -0.4px;
		font-size: 15px;
		-webkit-tap-highlight-color: transparent;
		box-sizing: border-box;
		position: relative;
		display: block;
		padding: 60px 0 40px;
		text-align: center;
		-webkit-box-flex: 0;
		flex: 0 0 auto;
	}
	
	span.icon_page_sales_application{
		background-repeat: no-repeat;
		display: inline-block;
		background-image: url("http://localhost:9000/myhouse/images/sales-application.png");
		background-size: 320px auto;
		width: 200px;
		height: 30px;
		background-position: left 0px top 0px;
	}
	
	main.root{
		box-sizing: border-box;
		position: relative;
		display: block;
		-webkit-box-flex: 1;
		flex: 1 0 auto;
	}
	
	div.seller_layout_application{
		margin: 0;
		padding: 0;
		margin-bottom: 100px;
	}
	div.container{
		margin: 0;
		padding: 0;
		margin-right: auto;
		margin-left: auto;
		width: 1100px;
		max-width: 100%;
		box-sizing: border-box;
		min-height: 1px;
		min-width: 688px;
	}
	div.seller_layout_header{
		margin: 0;
		padding: 0;
		text-align: center;
		margin-bottom: 80px;
	}
	
	h1.seller_layout_header_title{
		margin: 0;
		padding: 0;
		display: block;
		font-size: 40px;
		font-weight: 700;
		color: #292929;
	}
	div.seller_layout_header_explain{
		margin: 0;
		padding: 0;
		display: flex;
		flex-wrap: wrap;
		box-sizing: border-box;
		margin-right: -10px;
		margin-left: -10px;
		text-align: left;
	}
	ul.seller_layout_header_explain_list{
		padding: 0;
		list-style: none;
		margin: 60px auto -30px;
		list-style-type: disc;
		font-size: 15px;
		color: #292929;
		font-weight: 700;
	}
	
	ul.seller_layout_header_explain_list>li{
		list-style: none;
		list-style-type: disc;
		font-size: 15px;
		color: #292929;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
		line-height: 38px;
		font-weight: 700;
	}
	
	::marker {
	    unicode-bidi: isolate;
	    font-variant-numeric: tabular-nums;
	    text-transform: none;
	    text-indent: 0px !important;
	    text-align: start !important;
	    text-align-last: start !important;
	}
	div.seller_layout_body{
		margin: 0;
		padding: 0;
		margin-right: auto;
		margin-left: auto;
		width: 1136px;
		max-width: 100%;
		box-sizing: border-box;
		min-height: 1px;
		min-width: 688px;
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
	
	div.offset1{
		margin: 0;
		padding: 0;
		position: relative;
		width: 100%;
		min-height: 1px;
		box-sizing: border-box;
		-webkit-box-flex: 0;
		flex: 0 0 83.3333333333%;
		max-width: 83.3333333333%;
		padding-right: 10px;
		padding-left: 10px;
		margin-left: 8.3333333333%;
	}
	
	p.sales_form_section_title{
		margin: 0;
		padding: 0;
		font-size: 20px;
		color: #000;
		margin-bottom: 40px;
		font-weight: 700;
	}
	
	div.sales_form_group{
		margin: 0;
		padding: 0;
		display: flex;
		flex-wrap: wrap;
		box-sizing: border-box;
		margin-right: -10px;
		margin-left: -10px;
		margin-bottom: 20px;
	}
	
	div.offset1_1{
		margin: 0;
		padding: 0;
		position: relative;
		width: 100%;
		min-height: 1px;
		box-sizing: border-box;
		-webkit-box-flex: 0;
		flex: 0 0 16.6666666667%;
		max-width: 16.6666666667%;
		padding-right: 10px;
		padding-left: 10px;
		margin-left: 8.3333333333%;
	}
	
	label.form_label_sales_form{
		flex-basis: 100%;
		font-weight: 700;
		line-height: 40px;
	}
	
	span.sales_form_group_required{
		color: #f77;
	}
	
	div.col-8{
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
	}
	div.sales_form_control_wrap{
		margin: 0;
		padding: 0;
		width: 290px;
		display: flex;
		flex-flow: wrap;
		-webkit-box-align: center;
		align-items: center;
	}
	
	label.product{
		font-size:13px;
		cursor: pointer;
	    display: block;
	    margin-bottom:10px;
	    min-height: 22px;
	    line-height: 22px;
	    position: relative;
	    margin-top:7px;
	    margin-left:7px;
	    font-weight:700;
	}
	
	input.form_control_product{
		margin: 0;
		font-weight: inherit;
		transition: .2s border-color, .2s box-shadow, .2s background-color;
		box-sizing: border-box;
		height: 40px;
		width: 250px;
		padding: 0 15px;
		line-height: 40px;
		border-radius: 4px;
		border: solid 1px #dbdbdb;
		background-color: #ffffff;
		color: #424242;
		font-size: 13px;
		-webkit-box-flex: 1;
		flex: 1;	
	}
	
	div.product{
		margin: 0;
		padding: 0;
		display: flex;
		flex-wrap: wrap;
		box-sizing: border-box;
		margin-right: -10px;
		margin-left: -10px;
		margin-bottom: 20px;
	}
	
	div.pro_label{
		margin: 0;
		padding: 0;
		position: relative;
		width: 100%;
		min-height: 1px;
		box-sizing: border-box;
		-webkit-box-flex: 0;
		flex: 0 0 16.6666666667%;
		max-width: 10.6666666667%;
		padding-right: 10px;
	}
	
	div.product input[type='file']{
		border:none;	
	}
	
	input[type='number']:focus, input[type='text']:focus, 
	input[type='password']:focus, input[type='file']:focus, 
	input[type='tel']:focus, input[type='email']:focus, 
	select:focus, option:focus, textarea:focus, 
	input[type='submit']:focus, button:focus {
    	outline: 0;
	}
	
	input.form_control,input.form_control_visible{
		margin: 0;
		font-weight: inherit;
		transition: .2s border-color, .2s box-shadow, .2s background-color;
		display: block;
		box-sizing: border-box;
		height: 40px;
		width: 100%;
		padding: 0 15px;
		line-height: 40px;
		border-radius: 4px;
		border: solid 1px #dbdbdb;
		background-color: #ffffff;
		color: #424242;
		font-size: 13px;
		-webkit-box-flex: 1;
		flex: 1;
	}
	
	input.form_control:hover, input.form_control:active,
	input.form_control_product:hover, input.form_control_product:active {
	    background-color: #fafafa;
	    border-color: #bdbdbd;
	}
	
	input.form_control_visible:focus{
		outline:none;
		box-shadow: 0 0 0 3px rgba(130,224,250,0.5);
	}
	
	span.sales-form__divider{
		margin: 0 5px;
	}
	
	div.row_divider{
		padding: 0;
		display: flex;
		flex-wrap: wrap;
		box-sizing: border-box;
		margin-right: -10px;
		margin-left: -10px;
		margin-top: 60px;
		margin-bottom: 60px;
		-webkit-box-pack: center;
		justify-content: center;
	}
	
	hr.seller_layout_hr{
		position: relative;
		width: 100%;
		min-height: 1px;
		box-sizing: border-box;
		-webkit-box-flex: 0;
		flex: 0 0 83.3333333333%;
		max-width: 83.3333333333%;
		padding-right: 10px;
		padding-left: 10px;
		margin: 0;
		border: none;
		border-bottom: 1px solid #dbdbdb;
	}
	
	div.sales_form_groupsales_form_private_policy{
		margin: 0;
		padding: 0;
		display: flex;
		flex-wrap: wrap;
		box-sizing: border-box;
		margin-right: -10px;
		margin-left: -10px;
		text-align: center;
	}
	p.sales_form_private_policy_caption{
		margin: 0;
		padding: 0;
		font-size: 12px;
		line-height: 18px;
		margin-bottom: 20px;
		text-align: left;
	}
	table.sales_form_private_policy_info{
		font-size: 15px;
		text-align: center;
		-webkit-tap-highlight-color: transparent;
		border-collapse: collapse;
		border-spacing: 0;
		width: 100%;
		margin-bottom: 40px;
		line-height: 21px;
	}
	table.sales_form_private_policy_info>thead{
		background-color: #fafafa;
	}
	table.sales_form_private_policy_info>thead>tr>td{
		border-spacing: 0;
		line-height: 21px;
		margin: 0;
		width: 33.33333%;
		border: 1px solid #dbdbdb;
		margin-top: 40px;
		padding: 10px 13px;
	}
	table.sales_form_private_policy_info>tbody>tr>td{
		line-height: 21px;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		width: 33.33333%;
		border: 1px solid #dbdbdb;
		margin-top: 40px;
		padding: 10px 13px;
	}
	
	div.sales_form_private_policy_agree{
		text-align: center;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
		-webkit-box-flex: 1;
		flex: 1 1 auto;
		font-size: 18px;
		display: inline-block;
	}
	div.furniture, div.fabric{
		padding:5px 0;
		display:none;
	}
	select{
		font-weight: inherit;
		box-sizing: border-box;
		height: 40px;
		width: 200px;
		padding: 0px 15px;
		line-height: 40px;
		border-radius: 4px;
		border: solid 1px #dbdbdb;
		background-color: #ffffff;
		color: #424242;
		font-size: 13px;
		-webkit-box-flex: 1;
		flex: 1;
	}
	div.product_btn{
		width:130px;
		padding:5px;
	}
	button#product_add,button#product_del{
		font-weight: inherit;
		box-sizing: border-box;
		height: 30px;
		width:50px;
		line-height: 30px;
		border-radius: 4px;
		border: solid 1px #dbdbdb;
		color: #424242;
		font-size: 12px;
		font-weight:700;
		-webkit-box-flex: 1;
		flex: 1;
	}
	
	.form_radio>.form_radio_label,
	.form_radio .form_check_label, 
	.form_check>.form_radio_label, 
	.form_check .form_check_label {
	    cursor: pointer;
	    display: block;
	    margin-bottom:10px;
	    padding-left:32px;
	    min-height: 22px;
	    line-height: 22px;
	    position: relative;
	}
		
	.form_radio>.form_radio_label .check_img, 
	.form_radio .form_check_label .check_img, 
	.form_check>.form_radio_label .check_img,
	.form_check .form_check_label .check_img {
	 	box-sizing: border-box;
		height: 22px;
		width: 22px;
		border-radius: 4px;
		background-color: #ffffff;
		border: solid 1px #dbdbdb;
		display: block;
		transition: .2s ease;
		position: absolute;
		left: 0;
		top: 0;
	}
	
	.form-radio>.form-radio-label>.form-radio, 
	.form-radio>.form-radio-label .form_check, 
	.form-radio .form-check-label>.form-radio, 
	.form-radio .form-check-label .form_check,
	.form_check>.form-radio-label>.form-radio, 
	.form_check>.form-radio-label .form_check, 
	.form_check .form-check-label>.form-radio, 
	.form_check .form_check_label .form_check {
		left: -1000px;
		position: absolute;
		opacity: 0;
	}
	
	.form_radio>.form_radio_label .form_check:focus+.check_img, 
	.form_radio .form_check_label .form_check:focus+.check_img,
	.form_check>.form_radio_label .form_check:focus+.check_img, 
	.form_check .form_check_label .form_check:focus+.check_img {
	 	box-shadow: 0 0 0 3px rgba(130,224,250,0.5);
	 }
	 
	.form_radio>.form_radio_label .form_check:not(:disabled):checked+.check_img,
	.form_radio .form_check_label .form_check:not(:disabled):checked+.check_img,
	.form_check>.form_radio_label .form_check:not(:disabled):checked+.check_img, 
	.form_check .form_check_label .form_check:not(:disabled):checked+.check_img {
	    background-color: #35c5f0;
	    border-color: #35c5f0;
	}
	.form_radio>.form_radio_label .check_img:after,
	.form_radio .form_check_label .check_img:after,
	.form_check>.form_radio_label .check_img:after,
 	.form_check .form_check_label .check_img:after {
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
	    background-image: url(http://localhost:9000/myhouse/images/ic-checkbox.png);
	    opacity: 0;
	}
	
	.form_radio>.form_radio_label .form_check:not(:disabled):checked+.check_img:after, 
	.form_radio .form_check_label .form_check:not(:disabled):checked+.check_img:after, 
	.form_check>.form_radio_label .form_check:not(:disabled):checked+.check_img:after,
	.form_check .form_check_label .form_check:not(:disabled):checked+.check_img:after {
    	opacity: 1;
	}
	
	div.sales-form__form-check{
		margin: 0;
		padding: 0;
		-webkit-box-flex: 1;
		font-size: 15px;
		flex: unset;
		display: inline-block;
		margin-right: 30px;
		margin-top: 8px;
		margin-bottom: 2px;
	}
	
	label.sales-form__file__btn{
		box-sizing: border-box;
		display: inline-block;
		border-width: 1px;
		border-style: solid;
		text-align: center;
		border-radius: 4px;
		font-weight: bold;
		line-height: 1;
		height: 40px;
		padding: 12px 0 13px;
		font-size: 15px;
		transition: .2s ease;
		background-color: #35c5f0;
		border-color: #35c5f0;
		color: #ffffff;
		user-select: none;
		width: 135px;
	}
	
	label.sales_product_file_btn{
		box-sizing: border-box;
		display: inline-block;
		border-width: 1px;
		border-style: solid;
		text-align: center;
		border-radius: 4px;
		font-weight: bold;
		line-height: 1;
		height: 40px;
		padding: 12px 0 13px;
		font-size: 13px;
		transition: .2s ease;
		background-color: #35c5f0;
		border-color: #35c5f0;
		color: #ffffff;
		user-select: none;
		width: 100px;
	}
	input.sales-form__file--uploader{
		margin: 0;
		padding: 0;
		font-family: inherit;
		font-weight: inherit;
		font-size: inherit;
		display: none;
	}
	p.sales-form__file__name{
		margin: 0;
		padding: 0;
		margin-left: 15px;
		display: inline-block;
	}
	p.sales-form__file__caption{
		margin: 0;
		padding: 0;
		font-size: 12px;
		line-height: 16px;
		color: #757575;
		margin-top: 15px;
	}
	
	div.sales_form_private_policy_agree{
		text-align: center;
		-webkit-tap-highlight-color: transparent;
		margin: 0;
		padding: 0;
		-webkit-box-flex: 1;
		flex: 1 1 auto;
		font-size: 18px;
		display: inline-block;
	}
	
	div.sales_form_private_policy_agree label{
		margin-left:230px;
	}
	span.sales_form_private_policy_agree_require{
		text-align: center;
		font-size: 18px;
		cursor: pointer;
		line-height: 22px;
		-webkit-tap-highlight-color: transparent;
		color: #35c5f0;
		font-weight: 700;
	}
	
	div.sales_form_btn_apply{
		margin: 0;
		padding: 0;
		margin-top: 60px;
		text-align: center;
	}
	
	button.btn_priority{
		cursor: pointer;
		touch-action: manipulation;
		box-sizing: border-box;
		border-width: 1px;
		border-style: solid;
		text-align: center;
		border-radius: 4px;
		font-weight: bold;
		line-height: 1;
		height: 70px;
		padding: 26px 0;
		font-size: 18px;
		transition: .2s ease;
		background-color: #35c5f0;
		border-color: #35c5f0;
		color: #ffffff;
		user-select: none;
		width: 360px;
		display: inline-block;
	}
</style>
</head>
<body>
	<header class="sales_application">
		<span class='icon_page_sales_application'>
		</span>
	</header>
	
	<main role="main" id="root">
		<div>
			<div class="seller_layout_application">
				<div class="container">
					<div class="seller_layout_header">
						<h1 class="seller_layout_header_title">상품등록 신청</h1>
						<div class="seller_layout_header_explain">
							<ul class="seller_layout_header_explain_list">
								<li>
									작성해주신 정보를 바탕으로 카테고리별 담당 MD가 입점을 검토하여 이메일을 드립니다
								</li>
								<li>
									상품 등록 불가에 대한 통보는 불가 사유와 함께 이메일로 보내드립니다. 회신을 주셔도 답변이 불가한 점 양해 부탁드립니다.
								</li>
								<li>
									상품 등록 신청과 관련된 내용은 일반 고객센터 접수가 불가능합니다. 참고 바랍니다.
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="seller_layout_body">
					<form class="sales_form_application">
						<div class="sales_form_section">
							<div class="row">
								<div class="offset1">
									<p class="sales_form_section_title">회사 정보</p>
								</div>
							</div>
							<div class="row sales_form_group">
								<div class="offset1_1">
									<label for="sales_application_company" class="form_label form_label_sales_form">
										회사이름
										<span class="sales_form_group_required">*</span>
									</label>
								</div>
								<div class ="col-8">
									<div class="sales_form_control_wrap">
										<input type="text" id="sales_application_company" class="form_control" placeholder='오늘의집' value>
									</div>
								</div>
							</div>
							
							<div class="row sales_form_group">
								<div class="offset1_1">
									<label for="sales_application_license1" class="form_label form_label_sales_form">
										사업자 등록번호
										<span class="sales_form_group_required">*</span>
									</label>
								</div>
								<div class ="col-8">
									<div class="sales_form_control_wrap">
										<input type="tel" id="slaes_application_license1" class="form_control" placeholder='123' value>
										<span class="sales-form__divider">-</span>
										<input type="tel" id="slaes_application_license2" class="form_control" placeholder='45' value>
										<span class="sales-form__divider">-</span>
										<input type="tel" id="sales_application_license3" class="form_control" placeholder='67890' value>
									</div>
								</div>
							</div>
							
							<div class="row sales_form_group">
								<div class="offset1_1">
									<label for="sales_application_homepage" class="form_label form_label_sales_form">
										홈페이지
									</label>
								</div>
								<div class ="col-8">
									<div class="sales_form_control_wrap">
										<input type="text" id="sales_application_homepage" class="form_control" placeholder='www.ohou.se' value>
									</div>
								</div>
							</div>
							<div class="row_divider">
								<hr class="seller_layout_hr">
							</div>
						</div>
						
						
						<div class="sales_form_section">
							<div class="row">
								<div class="offset1">
									<p class="sales_form_section_title">영업담당자 정보</p>
								</div>
							</div>
							<div class="row sales_form_group">
								<div class="offset1_1">
									<label for="sales_application_sales" class="form_label form_label_sales_form">
										이름
										<span class="sales_form_group_required">*</span>
									</label>
								</div>
								<div class ="col-8">
									<div class="sales_form_control_wrap">
										<input type="text" id="sales_application_slaes" class="form_control" placeholder='집냥이' value>
									</div>
								</div>
							</div>
							
							<div class="row sales_form_group">
								<div class="offset1_1">
									<label for="sales_application_phone1" class="form_label form_label_sales_form">
										전화번호
										<span class="sales_form_group_required">*</span>
									</label>
								</div>
								<div class ="col-8">
									<div class="sales_form_control_wrap">
										<input type="tel" id="slaes_application_phone1" class="form_control" placeholder='010' value>
										<span class="sales-form__divider">-</span>
										<input type="tel" id="slaes_application_phone2" class="form_control" placeholder='1234' value>
										<span class="sales-form__divider">-</span>
										<input type="tel" id="slaes_application_phone3" class="form_control" placeholder='5678' value>
									</div>
								</div>
							</div>
							
							<div class="row sales_form_group">
								<div class="offset1_1">
									<label for="sales_application_email" class="form_label form_label_sales_form">
										이메일
										<span class="sales_form_group_required">*</span>
									</label>
								</div>
								<div class ="col-8">
									<div class="sales_form_control_wrap">
										<input type="text" id="sales_application_email" class="form_control" placeholder='zipnyang@ohou.se' value>
									</div>
								</div>
							</div>
							<div class="row_divider">
								<hr class="seller_layout_hr">
							</div>
						</div>
					
						<div class="sales_form_section">
							<div class="row">
								<div class="offset1">
									<p class="sales_form_section_title">상품 정보</p>
								</div>
							</div>
							<div class="row sales_form_group">
								<div class="offset1 offset1_1">
									<label for="sales_application_brand" class="form_label form_label_sales_form">
										대표 상품명
										<span class="sales_form_group_required">*</span>
									</label>
								</div>
								<div class ="col-8">
									<div class="sales_form_control_wrap">
										<input type="text" id="sales_application_product_name" class="form_control" placeholder='라인 벨벳 소파 3size' value>
									</div>
								</div>
							</div>
							
							<div class="row sales_form_group">
								<div class="offset1 offset1_1">
									<label for="sales_application_categories" class="form_label form_label_sales_form">
										취급 카테고리
										<span class="sales_form_group_required">*</span>
									</label>
								</div>
								<div class="col-8">
								<input type="hidden" id="sales_application__product_categories" name="sales_application[product_categories]" value="">
								<div class="form_check sales-form__form-check">
									<label class="form_check_label" for="sales_application__category--주방">
									<input type="radio" name="category" id="sales_application__category--주방" name="sales_application[category--주방]" class="form_check category__checkbox" value="주방">
									<span class="check_img"></span>주방</label>
								</div>
								<div class="form_check sales-form__form-check">
									<label class="form_check_label" for="sales_application__category--생활용품">
									<input type="radio" name="category" id="sales_application__category--생활용품" name="sales_application[category--생활용품]" class="form_check category__checkbox" value="생활용품">
									<span class="check_img"></span>생활용품</label>
								</div>
								<div class="form_check sales-form__form-check">
									<label class="form_check_label" for="sales_application__category--가구">
									<input type="radio" name="category" id="sales_application__category--가구" name="sales_application[category--가구]" class="form_check category__checkbox" value="가구">
									<span class="check_img"></span>가구</label>
								</div>
								<div class="form_check sales-form__form-check">
									<label class="form_check_label" for="sales_application__category--홈데코/조명">
									<input type="radio" name="category" id="sales_application__category--홈데코/조명" name="sales_application[category--홈데코/조명]" class="form_check category__checkbox" value="홈데코/조명">
									<span class="check_img"></span>홈데코/조명</label>
								</div>
								<div class="form_check sales-form__form-check">
									<label class="form_check_label" for="sales_application__category--반려동물">
									<input type="radio" name="category" id="sales_application__category--반려동물" name="sales_application[category--반려동물]" class="form_check category__checkbox" value="반려동물">
									<span class="check_img"></span>반려동물</label>
								</div>
								<div class="form_check sales-form__form-check">
									<label class="form_check_label" for="sales_application__category--패브릭">
									<input type="radio" name="category" id="sales_application__category--패브릭" name="sales_application[category--패브릭]" class="form_check category__checkbox" value="패브릭">
									<span class="check_img"></span>패브릭</label>
								</div>
								<div class="form_check sales-form__form-check">
									<label class="form_check_label" for="sales_application__category--수납/정리">
									<input type="radio" name="category" id="sales_application__category--수납/정리" name="sales_application[category--수납/정리]" class="form_check category__checkbox" value="수납/정리">
									<span class="check_img"></span>수납/정리</label>
								</div>
								<div class="form_check sales-form__form-check">
									<label class="form_check_label" for="sales_application__category--가전">
									<input type="radio" name="category" id="sales_application__category--가전" name="sales_application[category--가전]" class="form_check category__checkbox" value="가전">
									<span class="check_img"></span>가전</label>
								</div>
								<div class="form_check sales-form__form-check">
									<label class="form_check_label" for="sales_application__category--DIY/공구">
									<input type="radio" name="category" id="sales_application__category--DIY/공구" name="sales_application[category--DIY/공구]" class="form_check category__checkbox" value="DIY/공구">
									<span class="check_img"></span>DIY/공구</label>
								</div>
								
								<div class="furniture">
									<select>
										<option value="선택">우드톤</option>
										<option value="밝은톤">밝은톤</option>
										<option value="중간톤">중간톤</option>
										<option value="어두운톤">어두운톤</option>
									</select>
									<select>
										<option value="선택">색상</option>
										<option value="화이트">화이트</option>
										<option value="블랙">블랙</option>
										<option value="브라운">브라운</option>
										<option value="골드">골드</option>
										<option value="오렌지">오렌지</option>
										<option value="그린">그린</option>
										<option value="네이비">네이비</option>
										<option value="그레이">그레이</option>
										<option value="베이지">베이지</option>
										<option value="실버">실버</option>
										<option value="레드">레드</option>
										<option value="옐로우">옐로우</option>
										<option value="블루">블루</option>
										<option value="바이올렛">바이올렛</option>
										<option value="핑크">핑크</option>
										<option value="투명">투명</option>
										<option value="멀티(혼합)">멀티(혼합)</option>
									</select>
								</div>
								
								<div class="fabric">
									<select>
										<option value="선택">사용계절</option>
										<option value="봄/가을(간절기)">봄/가을(간절기)</option>
										<option value="여름">여름</option>
										<option value="겨울">겨울</option>
										<option value="사계절">사계절</option>
									</select>
									<select>
										<option value="선택">색상</option>
										<option value="화이트">화이트</option>
										<option value="블랙">블랙</option>
										<option value="브라운">브라운</option>
										<option value="골드">골드</option>
										<option value="오렌지">오렌지</option>
										<option value="그린">그린</option>
										<option value="네이비">네이비</option>
										<option value="그레이">그레이</option>
										<option value="베이지">베이지</option>
										<option value="실버">실버</option>
										<option value="레드">레드</option>
										<option value="옐로우">옐로우</option>
										<option value="블루">블루</option>
										<option value="바이올렛">바이올렛</option>
										<option value="핑크">핑크</option>
										<option value="투명">투명</option>
										<option value="멀티(혼합)">멀티(혼합)</option>
									</select>
								</div>
							</div>
						</div>
						<div class="row sales_form_group sales_product">
							<div class="offset1 offset1_1">
								<label for="sales_application_brand" class="form_label form_label_sales_form">
									상품
								<span class="sales_form_group_required">*</span>
								</label>
								<div class="product_btn">
								<button id="product_add" type="button">추가</button>
								<button id="product_del" type="button">삭제</button>
								</div>
							</div>
							<div class="col-8 product_add">
								<div class="sales_form_control_wrap_product">
									<div class="product"><div class="pro_label"><label class="product">상품명</label></div>
									<div><input type="text" id="sales_application_product_name" class="form_control_product" placeholder='라인 벨벳 소파 1인용' value></div></div>
									<div class="product"><div class="pro_label"><label class="product">상품가격</label></div>
									<div><input type="text" id="sales_application_product_price" class="form_control_product" placeholder='178000' value></div></div>
									<div class="product"><div class="pro_label"><label class="product">상품사진</label></div>
									<div><label class="sales_product_file_btn">사진 추가
									<input type="file" id="sales_application_product_photo" class="form_control_product sales-form__file--uploader"></label></div></div>
								</div>
							</div>
						</div>
						
						
						<div class="row sales_form_group">
							<div class="offset1 offset1_1">
								<label for="sales_application_sale_file" class="form_label form_label_sales_form">
									상품 정보 파일
									<span class="sales_form_group_required">*</span>
								</label>
							</div>
							<div class="col-8 pro">
								<label class="btn btn-sm btn-priority sales-form__file__btn">파일 업로드
								<input type="file" id="sales-form__file__uploader" class="sales-form__file--uploader" data-max-size="1048" accept=".png,.jpg,.jpeg,.pdf,.ppt">
								</label>
								<p class="sales-form__file__name">선택된 파일이 없습니다.</p>
								<p class="sales-form__file__caption">※ 상품정보란에 쓰일 사진을 첨부해주세요</div>	
						</div>
							
						<div class="row_divider">
							<hr class="seller_layout_hr">
						</div>
					</div> 
						
						
						<div class="sales_form_section">
							<div class="row">
								<div class="offset1">
									<p class="sales_form_section_title">개인정보 수집 및 이용 동의</p>
								</div>
							</div>
							<div class="row sales_form_private_policy">
								<div class="offset1">
									<p class="sales_form_private_policy_caption">
										㈜버킷플레이스는 개인정보보호법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관련 법령상의 개인정보보호 규정을 준수하며, 판매자님이 입점신청 시 필요한 최소한의 개인 정보를 수집합니다.
									</p>
									<table class="sales_form_private_policy_info">
										<thead>
											<tr>
												<td>목적</td>
												<td>항목</td>
												<td>보유기간</td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>판매자 식별,상품 검토,공지사항의 전달</td>
												<td>영업담당자의 이름/전화번호/이메일</td>
												<td>상품 등록처리기간이 종료되는 시점</td>
											</tr>
										</tbody>
									</table>
									<div id="sales_form_private_policy_agree" class="form_check sales_form_private_policy_agree">
										<label class="form_check_label" for="sales_form_private_policy_agree_check">
											<input type="checkbox" id="sales_form_private_policy_agree_check" class="form_check">
											<span class="check_img"></span>입점신청을 위한 개인정보 수집 및 이용에 동의
											<span class="sales_form_private_policy_agree_require">(필수)</span>
										</label>
									</div>
								</div>
							</div>
						</div>
						<div class="sales_form_btn_apply">
							<button class="btn_priority" type="submit">상품등록 신청 완료</button>						
						</div>	
					</form>
				</div>
			</div>
		</div>
	</main>
	
</body>
</html>