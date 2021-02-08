<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/One_day_class/js_minsu/jquery-3.5.1.min.js"></script>
<script>
   $(document).ready(function(){
      
      /** 삭제 알림  **/
      $("#and_del").click(function(){
         alert("삭제 하시겠습니까?");
         
         
      });//and_del
      
      
      
   });//ready


</script>
<style>
   
   #newsroom-main {
		display:inline-block;
		margin:0 auto;
		overflow:hidden;
		height:970px;
		width:853px;
		padding: 10px 18px 80px 17px;
		border:1px #e3e3e3 solid;
		margin-bottom:40px;
		position:absolute;
	}
	div {
		border: 0;
	    margin: 0;
	    padding: 0;
	    font-size: 11px;
	}
	.main-logo{
		display:inline-block;
		margin:20px 0 30px 117px;
    	font-size:50px;
	}
	.main-logo span {
		font-weight:bold;
	}
	.main-section1 {
	    margin: 0 auto;
	    width: 820px;
	    height: 50px;
	}
	 .main-section1 .section1-category {
	    height: 41px;
	    border-bottom: 1px #ff0045 solid;
	    padding-left:24px;
	    margin-left:0;
	}
	ul, li {
	    list-style: none;
	    border: 0;
	    margin: 0;
	    padding: 0;
	    font-size: 12px;
	}
	
	.main-section1 .section1-category li {
	    position: relative;
	    float: left;
	    width: 385px;
	    height: 40px;
	    border-top: 1px #dadada solid;
	    border-left: 1px #dadada solid;
	    border-right: 1px #dadada solid;
	    text-align: left;
	    
	}
	.main-section1 .section1-category .selected {
	    margin-left: -1px;
	    border-left: 1px #ff0045 solid;
	    border-top: 1px #ff0045 solid;
	    border-right: 1px #ff0045 solid;
	    border-bottom:none;
	    
	}
	/* #newsroom-main .main-section1 .section1-category li.first {
	    margin-left: 0 !important;
	} */
	.main-section1 .section1-category li a {
	    position: absolute;
	    display: block;
	    width: 383px;
	    height: 30px;
	    padding-top:12px;
	    letter-spacing: -1px;
	    font-weight: bold;
	    text-align: center;
	    font-size:15px;
	    
	}
	.main-section1 .section1-category .selected a {
	    height: 40px;
	    color: #333;
	    background-color: #fff;
	}
	a, a:visited {
	    border: 0;
	    margin: 0;
	    padding: 0;
	    color: #666;
	    text-decoration: none;
	    cursor: pointer;
	}
	.main-section2 {
	    position: relative;
	    display: inline-block;
	    float: left;
	    width: 853px;
	    margin-top: 15px;
	}
   .main-section2 .section2-title {
       display: inline-block;
       float: left;
       width: 815px;
       height: 35px;
       border-top: 1px #cbcbcb solid;
       border-bottom: 1px #ebebeb solid;
   }
   .main-section2 .section2-title li {
       float: left;
       height: 19px;
       padding: 10px 3px 5px 5px;
       text-align: center;
       color: #999;
       font-size: 11px;
   }
   .main-section2 .section2-title .title-0 {
      width:40px;
      padding-left:20px;
   }
   .main-section2 .section2-title .title-1 {
      width: 80px;
      padding-left:0;
   }
   .main-section2 .section2-title .title-2 {
      width: 440px;
   }
   .main-section2 .section2-title .title-3 {
      width: 85px;
   }
   .main-section2 .section2-title .title-4 {
      width: 90px;
   }
   .main-section2 .section2-title .title-5 {
      width: 50px;
   }
   .main-section2 .section2-cont {
      display: inline-block;
       float: left;
       padding: 10px 35px 10px 0;
       background-position: 0 bottom;
       background-image: url(http://localhost:9000/One_day_class/images/newsroom201301_dot.gif);
       background-repeat: repeat-x;
   }
   .main-section2 .section2-cont li {
      float: left;
       text-align: center;
       color: #999;
       font-size: 11px;
   }
   .main-section2 .section2-cont li.cont-0 {
      width: 39px;
      padding-left:20px;
   }
   .main-section2 .section2-cont li.cont-1 {
      width: 72px;
      padding-left:5px;
       padding-top: 2px;
   }
   .main-section2 .section2-cont li.cont-2 {
       padding-top: 3px;
      width: 46px;
   }
   .main-section2 .section2-cont li.cont-2 .cont2-btn  {
       width: 37px;
       height: 15px; 
       display: block;
   }
   .main-section2 .section2-cont li.cont-2 .cont2-btn img {
      width: 37px;
       height: 17px;
   }
   .main-section2 .section2-cont li.cont-2 .cont2-btn label {
      display: none; 
       position: absolute;
       width: 70px;
       height: 20px;
       margin: -18px 0 0 -12px;
       background-image:url(http://localhost:9000/One_day_class/images/notice_label.png);
       background-repeat:no-repeat;
       background-size: 70px 20px;
   }
   
   .main-section2 .section2-cont li.cont-3 {
      padding-top: 2px;
      width: 44px;
      padding-left:15px;
   }
   .main-section2 .section2-cont li.cont-3 .cont3-label {
      width: 31px;
       height: 15px;
       display: block;
       background-image:url(http://localhost:9000/One_day_class/images/notice_con1.png);
       background-repeat:no-repeat;
       background-size: 28px 18px;
   }
   .main-section2 .section2-cont li.cont-3 .cont3-label.normal {
      width: 31px;
       height: 15px;
       display: block;
       background-image:url(http://localhost:9000/One_day_class/images/notice_con3.png);
       background-repeat:no-repeat;
       background-size: 28px 18px;
   }
   .main-section2 .section2-cont li.cont-4 {
      width: 365px;
       padding: 2px 50px 0 30px;
       text-align: left;
   }
   .main-section2 .section2-cont li.cont-5 {
      width: 75px;
       padding-top: 2px;
   }
   .main-section2 .section2-cont li.cont-6 {
      width: 99px;
       padding-top: 2px;
   }
   .main-section2 .section2-cont li.cont-7 {
      width: 48px;
       padding-top: 2px;
   }
   
   a {
       border: 0;
       margin: 0;
       padding: 0;
       color: #636363;
       text-decoration: none;
       cursor: pointer;
   }
   label {
      cursor:default;
   }
   .main-section2 .section2-cont li.cont-8 {
      display:none;
       width: 831px;
       height: 430px;
       overflow-y: auto !important;
   }
   .main-section2 .section2-cont li.cont-8 .cont8-wrap {
       margin: 20px 0;
       font-size: 12px;
       color: #777;
       text-align: left;
   }
   .main-section3 {
       position: relative;
       display: inline-block;
       float: left;
       width: 853px;
       height:10px;
       margin-left:-17px;
   }
   .main-section3 .section-paging {
       width: 853px;
       height: 39px;
       margin-top: 30px;
   }
   .section-paging {
       position: relative;
       display: inline-block;
       float: left;
       text-align: left;
       padding-top: 0;
   }
   .paging-page {
       position: relative;
       width: 50%;
       height: 22px;
       text-align: center;
       z-index: 2;
       margin-left:210px;
   }
   .main-section3 .paging-page .prev-off {
       width: 20px;
       height: 20px !important;
       margin-top: 4px;
       padding: 0 !important;
       vertical-align: top;
       background-image: url(http://localhost:9000/One_day_class/images/arrow_left.png);
       background-repeat:no-repeat;
       background-size: 15px 15px;
   }
   .main-section3 .paging-page .next {
       background-image: url(http://localhost:9000/One_day_class/images/arrow_right.png);
       width: 20px;
       height: 20px !important;
       margin-top: 4px;
       margin-left:4px;
       padding: 0 !important;
       vertical-align: top;
       background-repeat: no-repeat;
       background-size: 15px 15px;
   }
   .main-section3 .paging-page a {
       height: 16px;
       padding-top: 3px;
       color: #ababab;
       font-size: 11px;
   }
   .main-section3 .paging-page a.selected, .main-section3 .paging-page a:hover {
      color: #333;
       padding-top: 3px;
       border: 0;
       background-color: #fff;
   }
   .paging-page a {
       display: inline-block;
       height: 17px;
       color: #666;
       padding: 5px 7px 0 7px;
       margin-left: 1px;
       font-size: 12px;
       font-weight: bold;
       text-align: center;
       overflow: hidden;
   }
   .paging-page a.selected {
       height: 16px;
       padding: 4px 7px 0 7px;
       margin-left: 1px;
       color: #fff;
       background-color: #767676;
   }
   a {
       border: 0;
       margin: 0;
       padding: 0;
       color: #636363;
       text-decoration: none;
       cursor: pointer;
   }
   a, a:visited {
       border: 0;
       margin: 0;
       padding: 0;
       color: #666;
       text-decoration: none;
       cursor: pointer;
   }
   
   
   /* aside */
   .content {
      width:1040px;
      margin: 0 auto;
   }
   .content .admin_main {
      float:left;
      width:100px; height:970px;
      background-color:white;
      padding:20px 0 0 15px;
   }
   
   .content .admin_main ul {
      width:195px;
      height:200px;
      margin-top:20px;
   }
   .content .admin_main ul li {
      list-style-type:none;
      padding: 4px 0;
      margin:25px 0 5px 15px;
   }   
   .content .admin_main ul li img {
      width:15px;
      height:15px;
   }
   .content .admin_main ul li a {
      color:black;
      font-size:17px;
      font-weight:bold;
      text-align:center;
      text-decoration:none;
      margin-left:10px;
   }   
   
   .content .admin_main ul li a:hover {
      text-decoration:underline;
   }
   .content .admin_main div {
      background-color: #fff;
      padding-top:7px;
      width:195px;
      height:145px;
   }
   .content .admin_main div img{
      margin:10px 0 0 62px;
      width:80px; 
      height:80px;
   }
   .content .admin_main .admin_icon2 {
      display:inline-block;
      font-size:20px;
      margin:7px 0 0 27px;
      color: #333;
      text-align:center;
      font-weight:bold;
   }
   /** 수정본  **/
   .udp_text{
   	height:600px;
   	width:810px;
   	overflow: auto;
   }
   .udp_title1{
		display:inline-block;
		width:800px;
		text-align:center;
		margin-left:20px;
		margin-top:10px;
		border-bottom:1px solid lightgray;
		padding-bottom:5px;
	}
	.udp_title1>ul>li {
		display:inline-block;
	}
	.udp_title1>ul>li.udp_t3 {
		float:left;
		color:black;
		font-size:14px;
		font-weight:bold;
	}
	.udp_title1>ul>li.udp_t4,
	.udp_title1>ul>li.udp_t5,
	.udp_title1>ul>li.udp_t6 {
		float:right;
		color:#999999;
		font-size:11px;
		margin-left:30px;
	}
	/** 내용 글자 **/
	.udp_text>p {
	margin-left:40px;
	}
	/** 버튼 **/
	.udp_btnbox {
		display:inline-block;
		float:right;
	}
	.udp_btnbox>a>button {
		display:inline-block;
		width:60px;
		height:30px;
		margin-right:50px;
		margin-top:20px;
		padding:4px 10px;
     	border-radius:5px;
      	border:none;
	}
	.udp_btnbox>a>button:hover {
		color:white;
	}
	.udp_btnbox>a>button:hover {
		background-color:#333;
      	color:white;
	}
	.udp_btnbox>a>button {
		text-decoration:none;
	}
	.udp_btnbox>a>button {
		color:black;
		font-weight:bold;
     	font-size:14px;
	}
   
   </style>
<script>
    $(document).ready(function(){
      // 공지사항/이벤트 페이지 변경
      $("#first").click(function(){
         $("#first").addClass('selected');
         $("#second").removeClass('selected');
      });
      $("#second").click(function(){
         $("#second").addClass('selected');
         $("#first").removeClass('selected');
      });
      //open/close 변경
      $("#open").click(function(){
         var status = $(this).attr("src");
         if(status == "http://localhost:9000/One_day_class/images/notice_open.png") {
            $("#cont-8").css("display","block").height("450px");
            $("#open").attr("src","http://localhost:9000/One_day_class/images/notice_close.png");
            $("#cont8-wrap").load("notice_content.jsp .section2-cont");
            
         } else {
            $("#cont-8").css("display","none").height("0px");
            $("#open").attr("src","http://localhost:9000/One_day_class/images/notice_open.png");
         }
      });
   });
   
   function allCheck() { 
      var all = document.getElementById("checkAll");
      var chk_list = document.getElementsByName("checkTerms");
      
      if(all.checked) {
         for(var i=0;i<chk_list.length;i++) {
            chk_list[i].checked = true;
         }
         
      }   else {
         for(var i=0;i<chk_list.length;i++) {
            chk_list[i].checked = false;
         }
      }
      
   }
   
   /* function partCheck() {

      var cnt = 0;
      var all = document.getElementById("checkAll");
      var chk_list = document.getElementsByName("checkTerms");

      if(chk_list.checked)
           {
         all.checked = true;
           } else {
                   for(var i=0; i < chk_list.length; i++)  {
                         if(chk_list[i].checked == true)
                              cnt ++;
                   }
                    if(cnt == 0)  all.checked = false;
      }

   } */
</script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>

   <!-- content -->
   <div style="margin:0 auto;">
   <div style="width:100%; height:50px;"></div>
   <div class="content">
      <aside class="admin_main">
         
      </aside>

   
   </div>
   <div class="board_wrap" id="newsroom-main">
      <span class="main-logo">TALMUNG <span>'NEWS'</span> ROOM</span>
      <div class="main-section1">
         <ul class="section1-category">
            <li id="first" class="first selected"><a href="notice_list_admin.jsp">공지사항</a></li>
            <li id="second"><a href="notice_list_admin2.jsp">이벤트</a></li>
         </ul>
      </div>
      <div class="main-section2">
          <div class="udp_title1">
			<ul>
				<li class="udp_t3">· 탈멍 개인정보처리방침 변경 안내</li>
				<li class="udp_t4">조회 63</li>
				<li class="udp_t5">탈멍</li>
				<li class="udp_t6">2020.12.03</li>
			</ul>
	  </div>
			<div class="udp_text">
				<p>안녕하십니까. ㈜탈멍 입니다.<br><br>

					현행 개인정보처리방침을 아래와 같이 개정하여 공지합니다.<br>
					회원 여러분께서는 변경 내용을 꼭 확인하시고 서비스 이용에 차질이 없으시기 바랍니다.<br>
					개정된 이용약관 2020년 12월 10일부터 시행됩니다.<br><br>
					
					- 아래 -<br><br>
					
					■ 개정 목적<br><br>
					
					- 관세행정 법안 변경으로 인한 반영 적용<br><br>
					
					■ 개인정보처리방침 개정<br><br>
					<div align="center">
						<table class="MsoNormalTable" style="BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 87%; BORDER-COLLAPSE: collapse; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 480; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt; mso-border-insideh: .5pt solid windowtext; mso-border-insidev: .5pt solid windowtext" cellspacing="0" cellpadding="0" width="89%" border="1">
						    <tbody>
						        <tr style="HEIGHT: 25.3pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes">
						            <td style="BORDER-TOP: windowtext 1pt solid; HEIGHT: 25.3pt; BORDER-RIGHT: windowtext 1pt solid; WIDTH: 100%; BACKGROUND: #d9d9d9; BORDER-BOTTOM: windowtext 1pt solid; PADDING-BOTTOM: 0cm; PADDING-TOP: 0cm; PADDING-LEFT: 5.4pt; BORDER-LEFT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; mso-border-alt: solid windowtext .5pt; mso-background-themecolor: background1; mso-background-themeshade: 217" width="100%">
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><strong style="mso-bidi-font-weight: normal"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%; mso-bidi-font-size: 10.0pt" 맑은=""><font face="맑은 고딕">개정전<span lang="EN-US"><o:p></o:p></span></font></span></strong></p>
						            </td>
						        </tr>
						        <tr style="HEIGHT: 25.3pt; mso-yfti-irow: 1">
						            <td style="BORDER-TOP: #000000; HEIGHT: 25.3pt; BORDER-RIGHT: windowtext 1pt solid; WIDTH: 100%; BACKGROUND: white; BORDER-BOTTOM: windowtext 1pt solid; PADDING-BOTTOM: 0cm; PADDING-TOP: 0cm; PADDING-LEFT: 5.4pt; BORDER-LEFT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; mso-border-alt: solid windowtext .5pt; mso-background-themecolor: background1; mso-border-top-alt: solid windowtext .5pt" width="100%">
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 15pt 0cm 0pt 18pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><font face="맑은 고딕"><strong><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">1. </span></strong><strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">개인정보의 처리 목적</span></strong><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p></o:p></span></font></p>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; TEXT-INDENT: 18pt; mso-pagination: widow-orphan; mso-char-indent-count: 2.0" align="left"><font face="맑은 고딕"><strong><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">(1) </span></strong><strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">전체회원</span></strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""> <span lang="EN-US"><o:p></o:p></span></span></font></p>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt 23.25pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p><font face="맑은 고딕">&nbsp;</font></o:p></span></p>
						            <table style="BORDER-COLLAPSE: collapse; MARGIN: auto auto auto 16pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 0cm 0cm 0cm" cellspacing="0" cellpadding="0" border="0" class="MsoNormalTable">
						                <tbody>
						                    <tr style="mso-yfti-irow: 0; mso-yfti-firstrow: yes">
						                        <td style="BORDER-TOP: #cccccc 1pt solid; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">수집목적<span lang="EN-US"><o:p></o:p></span></font></span></strong></p>
						                        </td>
						                        <td style="BORDER-TOP: #cccccc 1pt solid; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">수집항목<span lang="EN-US"><o:p></o:p></span></font></span></strong></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 1">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">이용자 식별 및 본인여부 확인<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">성명<span lang="EN-US">, </span>휴대전화번호<span lang="EN-US">, </span>이메일<span lang="EN-US">, </span>아이디<span lang="EN-US">, </span>비밀번호<span lang="EN-US"> : </span>회원가입시 수집</font><span lang="EN-US"><br></span><font face="맑은 고딕">생년월일<span lang="EN-US">, </span>성별<span lang="EN-US">, </span>아이핀<span lang="EN-US">, </span>연계정보<span lang="EN-US">(CI), </span>중복가입확인정보<span lang="EN-US">(DI) : </span>본인인증시 수집<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 2">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">회원정보관리를 위한 연락 및 안내<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">이메일<span lang="EN-US">, </span>연락처<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 3">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">만<span lang="EN-US"> 14</span>세 미만 아동에 대한 법정대리인 동의 확인을 위한 목적 <span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">법정대리인의 이름<span lang="EN-US">/</span>이메일<span lang="EN-US">/</span>휴대전화번호<span lang="EN-US">/</span>통신사<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 4">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">부정이용방지<span lang="EN-US">, </span>비인가 사용 방지<span lang="EN-US">, </span>안전한 결제 서비스 제공<span lang="EN-US">, </span>분쟁조정 해결을 위한 기록보존<span lang="EN-US"><span style="mso-tab-count: 1"> </span><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">휴대폰번호<span lang="EN-US">, </span>가상카드번호<span lang="EN-US">, </span>생년월일<span lang="EN-US">, </span>아이디<span lang="EN-US">, </span>이름<span lang="EN-US">, CI, DI, IP Address, </span>방문일시<span lang="EN-US">, </span>서비스 이용기록<span lang="EN-US"> (</span>자동으로 생성되는 개인정보<span lang="EN-US">)<o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 5">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">고객이 주문하신 상품 및 경품 배송을 위한 목적<span lang="EN-US">, </span>채권추심<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">기본배송지<span lang="EN-US">, </span>연락처<span lang="EN-US">, </span>수취인의 성명<span lang="EN-US">/ </span>전화번호<span lang="EN-US">/</span>휴대폰 번호<span lang="EN-US">/</span>배송주소<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 6">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">계약이행에 대한 연락 및 안내 등의 고지를 위한 목적<span lang="EN-US">, </span>서비스 판매 정보제공 홍보 가입권유활동<span lang="EN-US"> (</span>할인쿠폰<span lang="EN-US">, </span>특가상품정보<span lang="EN-US">, I-Point </span>혜택<span lang="EN-US">, </span>판촉광고 포함<span lang="EN-US">) </span>안내 등의 고지를 위한 목적 <span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">연락처<span lang="EN-US">, SMS</span>수신여부<span lang="EN-US">, </span>이메일<span lang="EN-US">, </span>이메일수신여부<span lang="EN-US">, DM</span>수신 여부<span lang="EN-US">, </span>유선안내<span lang="EN-US">(TM)</span>수신여부<span lang="EN-US">, </span>성명<span lang="EN-US">, </span>생년월일<span lang="EN-US">, </span>성별<span lang="EN-US">, </span>우편번호<span lang="EN-US">, CI, </span>설문결과 <span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 7">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">대금결제서비스 제공용<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">카드번호<span lang="EN-US">, </span>유효기간<span lang="EN-US">, </span>성명<span lang="EN-US">, </span>생년월일<span lang="EN-US">, </span>성별<span lang="EN-US">, </span>카드비밀번호 앞<span lang="EN-US">2</span>자리<span lang="EN-US">, </span>계약자와의 관계 증빙<span lang="EN-US">(</span>타인 명의 카드 이용 시<span lang="EN-US">), </span>은행계좌번호<span lang="EN-US">, </span>입금자명<span lang="EN-US">, </span>은행명<span lang="EN-US">, </span>휴대전화번호<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 8">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">계좌<span lang="EN-US">/</span>카드 간편결제서비스 가입을 통한 전자금융서비스 제공 목적<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><font face="맑은 고딕"><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">ID, </span><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">비밀번호<span lang="EN-US">, </span>이름<span lang="EN-US">, </span>생년월일<span lang="EN-US">, </span>휴대폰번호<span lang="EN-US">, </span>이메일<span lang="EN-US">, </span>성별<span lang="EN-US">, </span>통신사명<span lang="EN-US">, </span>내외국인정보<span lang="EN-US">, </span>본인인증정보<span lang="EN-US">(CI, DI), </span>서비스 이용정보<span lang="EN-US">(IP, </span>이용 기록<span lang="EN-US">)<o:p></o:p></span></span></font></p>
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">계좌 간편결제<span lang="EN-US"> : </span>은행명<span lang="EN-US">, </span>계좌번호<span lang="EN-US">, </span>결제 비밀번호<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">신용카드 간편결제<span lang="EN-US"> : </span>신용카드정보<span lang="EN-US">(</span>카드사명<span lang="EN-US">, </span>신용카드번호<span lang="EN-US">, </span>유효기간<span lang="EN-US">, CVC), </span>결제 비밀번호<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 9">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">인터파크의 상품<span lang="EN-US">/</span>서비스의 이용 실적 정보 통계<span lang="EN-US">/</span>분석 및 상품<span lang="EN-US">/</span>서비스 추천<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">성별<span lang="EN-US">, </span>생년월일<span lang="EN-US">, </span>휴대폰번호<span lang="EN-US">, </span>전화번호<span lang="EN-US">, </span>이메일<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 10">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">고객 상담 및 민원의 접수 및 처리 결과 안내 목적<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">이름<span lang="EN-US">, </span>연락처<span lang="EN-US">, </span>이메일<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 11">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">비회원 물품 및 서비스 상품 구매 서비스 제공 목적<span lang="EN-US">, </span>부정이용방지<span lang="EN-US">, </span>비인가 사용방지<span lang="EN-US">, </span>분쟁조정 해결을 위한 기록보존 및 자동로그인 기능 제공 목적<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">성명<span lang="EN-US">, </span>휴대전화번호<span lang="EN-US">, </span>주문비밀번호<span lang="EN-US">, </span>수령인정보<span lang="EN-US">(</span>성명<span lang="EN-US">, </span>주소<span lang="EN-US">, </span>전화번호<span lang="EN-US">, </span>휴대전화번호<span lang="EN-US">), </span>이메일<span lang="EN-US">, </span>이메일 수신여부<span lang="EN-US">, </span>대금결제서비스 제공 목적 정보<span lang="EN-US">, </span>현금영수증 발급 목적 정보<span lang="EN-US">, IP, </span>방문일시<span lang="EN-US">, </span>거래내역<span lang="EN-US">, </span>서비스 이용기록<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 12">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">회원님의 편의를 위한 맞춤광고 및 서비스 제공<span lang="EN-US">, </span>기념일 행사쿠폰 발송 및 서비스 품질 향상을 위한 제휴서비스를 제공하기 위한 목적<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">생년월일<span lang="EN-US">, </span>성별<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 13">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">경품 제세공과금처리 목적<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">주민등록번호<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 14">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">여행자보험 가입 목적 <span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">성명<span lang="EN-US">, </span>영문성명<span lang="EN-US">, </span>생년월일<span lang="EN-US">, </span>성별<span lang="EN-US">, </span>전화번호<span lang="EN-US">, </span>이메일<span lang="EN-US">, </span>주민등록번호<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 15">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><font face="맑은 고딕"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%; mso-bidi-font-size: 11.0pt; mso-themecolor: text1">항공사 부가서비스 구매</span><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p></o:p></span></font></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%; mso-bidi-font-size: 11.0pt; mso-themecolor: text1"><font face="맑은 고딕">예약자 및 동반 탑승객 전원의<span lang="EN-US">&nbsp;</span>인터파크 회원번호<span lang="EN-US">, </span>성명<span lang="EN-US">, </span>예약번호<span lang="EN-US">, </span>여정정보<span lang="EN-US">(</span>항공사<span lang="EN-US">, </span>노선정보<span lang="EN-US">, </span>출발일시<span lang="EN-US">, </span>도착지 정보 등<span lang="EN-US">), </span>휴대폰 번호<span lang="EN-US">, </span>이메일<span lang="EN-US">(CS</span>처리용</font><font face="맑은 고딕"><span lang="EN-US">)<br></span>예약자는 탑승객의 적법한 동의를 얻어 당사에 해당 정보 제공해야함</font></span><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p></o:p></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 16">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">투어 상품 예약 및 상담<span lang="EN-US">, </span>출입국 가능 여부 확인 목적<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">예약자 정보<span lang="EN-US">(</span>성명<span lang="EN-US">, </span>이메일<span lang="EN-US">, </span>휴대전화번호<span lang="EN-US">, </span>일반전화번호<span lang="EN-US">)<o:p></o:p></span></font></span></p>
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">여행자 정보<span lang="EN-US">(</span>성명<span lang="EN-US">, </span>영문성명<span lang="EN-US">, </span>생년월일<span lang="EN-US">, </span>성별<span lang="EN-US">, </span>여권번호<span lang="EN-US">, </span>여권만료일<span lang="EN-US">, </span>국적<span lang="EN-US">, </span>여권발행국<span lang="EN-US">, </span>여권사본 및 항공운임 할인증빙<span lang="EN-US">, </span>휴대전화번호<span lang="EN-US">, </span>체류국가<span lang="EN-US">, </span>주소<span lang="EN-US">, </span>우편번호<span lang="EN-US">, </span>현지연락처<span lang="EN-US">)<o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 17">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">마일리지 적립 목적<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">마일리지번호<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 18">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">해외 직배송 상품 통관업무처리 목적<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">개인통관고유부호<span lang="EN-US">, </span>생년월일<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 19">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">현금영수증 발급 목적<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">현금영수증카드번호<span lang="EN-US">, </span>휴대전화번호<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 20">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">주류 통신판매기록부 관리 및 신고 목적<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">성명<span lang="EN-US">, </span>생년월일<span lang="EN-US">, </span>배송지주소<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 21; mso-yfti-lastrow: yes">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><font face="맑은 고딕"><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">SNS </span><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">이용자 식별<span lang="EN-US"><o:p></o:p></span></span></font></p>
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><font face="맑은 고딕"><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">(</span><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">네이버<span lang="EN-US">, </span>카카오<span lang="EN-US">, </span>페이코<span lang="EN-US">, </span>구글<span lang="EN-US">)<o:p></o:p></span></span></font></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">성명<span lang="EN-US">, </span>이메일<span lang="EN-US">, </span>성별<span lang="EN-US"> : </span>회원가입시 수집<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                </tbody>
						            </table>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt 23.25pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p><font face="맑은 고딕">&nbsp;</font></o:p></span></p>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 15pt 0cm 0pt 18pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><font face="맑은 고딕"><strong><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">6. </span></strong><strong style="mso-bidi-font-weight: normal"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">개인정보의 제<span lang="EN-US">3</span>자 제공 및 위탁에 관한 사항<span style="mso-bidi-font-weight: bold"> </span></span></strong><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p></o:p></span></font></p>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt 23.25pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">① 회사는 회원님의 동의가 있거나 법률의 규정에 의한 경우를 제외하고는 어떠한 경우에도 회원님의 개인정보를 이용하거나 타인 또는 타기업<span lang="EN-US">, </span>기관에 제공하지 않습니다<span lang="EN-US">.<o:p></o:p></span></font></span></p>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt 23.25pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">② 회사가 제공하는 서비스를 통하여 회원간의 거래관계가 이루어진 경우<span lang="EN-US">, </span>배송 등 거래이행을 위하여 관련 정보는 필요한 범위내에서 회원님이 동의한 경우 아래와 같이 거래 당사자에게 제공합니다<span lang="EN-US">. <o:p></o:p></span></font></span></p>
						            <table style="BORDER-COLLAPSE: collapse; MARGIN: auto auto auto 16pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 0cm 0cm 0cm" cellspacing="0" cellpadding="0" border="0" class="MsoNormalTable">
						                <tbody>
						                    <tr style="mso-yfti-irow: 0; mso-yfti-firstrow: yes">
						                        <td style="BORDER-TOP: #cccccc 1pt solid; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">구분<span lang="EN-US"><o:p></o:p></span></font></span></strong></p>
						                        </td>
						                        <td style="BORDER-TOP: #cccccc 1pt solid; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">개인정보 제공받는 자<span lang="EN-US"><o:p></o:p></span></font></span></strong></p>
						                        </td>
						                        <td style="BORDER-TOP: #cccccc 1pt solid; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">개인정보 이용 목적<span lang="EN-US"><o:p></o:p></span></font></span></strong></p>
						                        </td>
						                        <td style="BORDER-TOP: #cccccc 1pt solid; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">개인정보 제공 항목<span lang="EN-US"><o:p></o:p></span></font></span></strong></p>
						                        </td>
						                        <td style="BORDER-TOP: #cccccc 1pt solid; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">보유 및 이용 기간<span lang="EN-US"><o:p></o:p></span></font></span></strong></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 1">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">쇼핑<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><span lang="EN-US"><a><font face="맑은 고딕"><span style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은="">[</span><span lang="EN-US" style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><span lang="EN-US">업체</span></span><span lang="EN-US" style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><span lang="EN-US"> </span></span><span lang="EN-US" style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><span lang="EN-US">리스트]</span></span></font></a></span><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p></o:p></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt" rowspan="3">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">청약의사의 확인<span lang="EN-US">, </span>거래이행<span lang="EN-US">, </span>배송<span lang="EN-US">, </span>고객상담<span lang="EN-US">, AS </span>등 불만 처리<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt" rowspan="3">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">성명<span lang="EN-US">, </span>아이디<span lang="EN-US">, </span>주소<span lang="EN-US">, </span>전화번호<span lang="EN-US">, </span>휴대폰번호<span lang="EN-US">, </span>주문정보<span lang="EN-US">, </span>개인통관고유부호<span lang="EN-US">(</span>선택 시<span lang="EN-US">), </span>생년월일<span lang="EN-US">(</span>선택 시<span lang="EN-US">), </span>수취인 정보<span lang="EN-US">(</span>성명<span lang="EN-US">, </span>전화번호<span lang="EN-US">, </span>휴대폰번호<span lang="EN-US">, </span>주소<span lang="EN-US">)<o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt" rowspan="3">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">배송완료 혹은 티켓 사용완료 후<span lang="EN-US"> 3</span>개월까지<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 2">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">도서<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><span lang="EN-US"><a><font face="맑은 고딕"><span style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은="">[</span><span lang="EN-US" style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><span lang="EN-US">업체</span></span><span lang="EN-US" style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><span lang="EN-US"> </span></span><span lang="EN-US" style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><span lang="EN-US">리스트]</span></span></font></a></span><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p></o:p></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 3">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">티켓<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><span lang="EN-US"><a><font face="맑은 고딕"><span style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은="">[</span><span lang="EN-US" style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><span lang="EN-US">업체</span></span><span lang="EN-US" style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><span lang="EN-US"> </span></span><span lang="EN-US" style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><span lang="EN-US">리스트]</span></span></font></a></span><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p></o:p></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 4">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">투어<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><span lang="EN-US"><a><font face="맑은 고딕"><span style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은="">[</span><span lang="EN-US" style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><span lang="EN-US">업체</span></span><span lang="EN-US" style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><span lang="EN-US"> </span></span><span lang="EN-US" style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><span lang="EN-US">리스트]</span></span></font></a></span><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p></o:p></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">청약의사의 확인<span lang="EN-US">, </span>거래이행<span lang="EN-US">, </span>배송<span lang="EN-US">, </span>고객상담<span lang="EN-US">, AS </span>등 불만 처리<span lang="EN-US">, </span>여행자보험 가입<span lang="EN-US">, </span>결제 및 환불<span lang="EN-US">, </span>보험금지급 서비스 제공<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">성명<span lang="EN-US">, </span>아이디<span lang="EN-US">, </span>주소<span lang="EN-US">, </span>이메일<span lang="EN-US">, </span>전화번호<span lang="EN-US">, </span>휴대폰번호<span lang="EN-US">, </span>주문정보<span lang="EN-US">, </span>수취인 정보<span lang="EN-US">(</span>성명<span lang="EN-US">, </span>전화번호<span lang="EN-US">, </span>휴대폰번호<span lang="EN-US">, </span>주소<span lang="EN-US">), </span>여권정보<span lang="EN-US">, </span>영문명<span lang="EN-US">, </span>생년월일<span lang="EN-US">, </span>성별<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">투어 이용 완료 후<span lang="EN-US"> 3</span>개월까지<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 5; mso-yfti-lastrow: yes">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">원페이<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><font face="맑은 고딕"><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">[</span><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">업체 리스트<span lang="EN-US">]<o:p></o:p></span></span></font></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">결제계좌 등록<span lang="EN-US">, </span>예금주 확인<span lang="EN-US">, </span>출금이체<span lang="EN-US">, </span>신용카드 결제<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">계좌 간편결제 <span lang="EN-US">: </span>성명<span lang="EN-US">, </span>생년월일<span lang="EN-US">, </span>계좌번호<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">카드 간편결제 <span lang="EN-US">: </span>신용카드 정보<span lang="EN-US">(</span>신용카드번호<span lang="EN-US">, </span>유효기간<span lang="EN-US">, CVC), IP(</span>비씨카드에 한함<span lang="EN-US">)<o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">원페이 이용 완료 후<span lang="EN-US"> 3</span>개월까지<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                </tbody>
						            </table>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt 23.25pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p><font face="맑은 고딕">&nbsp;</font></o:p></span></p>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 15pt 0cm 0pt 18pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><font face="맑은 고딕"><strong><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">16. </span></strong><strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">방침변경등에 대한 고지</span></strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""> <span lang="EN-US"><o:p></o:p></span></span></font></p>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt 36pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">현 개인정보처리방침은<span lang="EN-US"> 2020</span>년<span lang="EN-US"> 11</span>월<span lang="EN-US"> 12</span>일부터 적용됩니다<span lang="EN-US">. </span>내용의 추가<span lang="EN-US">, </span>삭제 및 수정이 있을 경우에는 시행일의<span lang="EN-US"> 7</span>일 전부터 웹사이트의 공지사항을 통하여 고지할 것이며 중요한 사항일 경우 시행일<span lang="EN-US"> 30</span>일전부터 웹사이트의 공지사항을 통한 고지 및 이메일 고지를 할 것입니다<span lang="EN-US">. </span>단<span lang="EN-US">, </span>개인정보 수집 및 활용<span lang="EN-US">, </span>제<span lang="EN-US">3</span>자제공 등이 변경될 경우 별도의 동의를 받겠습니다<span lang="EN-US">. </span>또한 개인정보 처리방침에 버전번호 및 변경공고일자 및 그 시행일자 등을 부여하여 개정여부를 쉽게 알 수 있도록 하고 있습니다<span lang="EN-US">. <o:p></o:p></span></font></span></p>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt 18pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p><font face="맑은 고딕">&nbsp;</font></o:p></span></p>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt 23.25pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">개인정보처리방침 버전번호<span lang="EN-US">: v79<o:p></o:p></span></font></span></strong></p>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt 23.25pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">개인정보처리방침 변경 일자<span lang="EN-US">: 2020-11-05<o:p></o:p></span></font></span></strong></p>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt 23.25pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><font face="맑은 고딕"><strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">개인정보처리방침 시행 일자<span lang="EN-US">: 2020-11-12</span></span></strong><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p></o:p></span></font></p>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p><font face="맑은 고딕">&nbsp;</font></o:p></span></p>
						            </td>
						        </tr>
						        <tr style="HEIGHT: 25.3pt; mso-yfti-irow: 2">
						            <td style="BORDER-TOP: #000000; HEIGHT: 25.3pt; BORDER-RIGHT: windowtext 1pt solid; WIDTH: 100%; BACKGROUND: #d9d9d9; BORDER-BOTTOM: windowtext 1pt solid; PADDING-BOTTOM: 0cm; PADDING-TOP: 0cm; PADDING-LEFT: 5.4pt; BORDER-LEFT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; mso-border-alt: solid windowtext .5pt; mso-background-themecolor: background1; mso-background-themeshade: 217; mso-border-top-alt: solid windowtext .5pt" width="100%">
						            <p class="MsoNormal" style="TEXT-ALIGN: center; MARGIN: 0cm 0cm 8pt" align="center"><font face="맑은 고딕"><strong style="mso-bidi-font-weight: normal"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 107%; mso-bidi-font-size: 10.0pt" 맑은="">개정후</span></strong><strong style="mso-bidi-font-weight: normal"><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 107%" 맑은=""><o:p></o:p></span></strong></font></p>
						            </td>
						        </tr>
						        <tr style="HEIGHT: 275.95pt; mso-yfti-irow: 3; mso-yfti-lastrow: yes">
						            <td style="BORDER-TOP: #000000; HEIGHT: 275.95pt; BORDER-RIGHT: windowtext 1pt solid; WIDTH: 100%; BACKGROUND: white; BORDER-BOTTOM: windowtext 1pt solid; PADDING-BOTTOM: 0cm; PADDING-TOP: 0cm; PADDING-LEFT: 5.4pt; BORDER-LEFT: windowtext 1pt solid; PADDING-RIGHT: 5.4pt; mso-border-alt: solid windowtext .5pt; mso-background-themecolor: background1; mso-border-top-alt: solid windowtext .5pt" width="100%">
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 15pt 0cm 0pt 18pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><font face="맑은 고딕"><strong><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">1. </span></strong><strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">개인정보의 처리 목적</span></strong><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p></o:p></span></font></p>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; TEXT-INDENT: 18pt; mso-pagination: widow-orphan; mso-char-indent-count: 2.0" align="left"><font face="맑은 고딕"><strong><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">(1) </span></strong><strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">전체회원</span></strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""> <span lang="EN-US"><o:p></o:p></span></span></font></p>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p><font face="맑은 고딕">&nbsp;</font></o:p></span></p>
						            <table style="BORDER-COLLAPSE: collapse; MARGIN: auto auto auto 16pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 0cm 0cm 0cm" cellspacing="0" cellpadding="0" border="0" class="MsoNormalTable">
						                <tbody>
						                    <tr style="mso-yfti-irow: 0; mso-yfti-firstrow: yes">
						                        <td style="BORDER-TOP: #cccccc 1pt solid; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">수집목적<span lang="EN-US"><o:p></o:p></span></font></span></strong></p>
						                        </td>
						                        <td style="BORDER-TOP: #cccccc 1pt solid; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">수집항목<span lang="EN-US"><o:p></o:p></span></font></span></strong></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 1">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">이용자 식별 및 본인여부 확인<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">성명<span lang="EN-US">, </span>휴대전화번호<span lang="EN-US">, </span>이메일<span lang="EN-US">, </span>아이디<span lang="EN-US">, </span>비밀번호<span lang="EN-US"> : </span>회원가입시 수집</font><span lang="EN-US"><br></span><font face="맑은 고딕">생년월일<span lang="EN-US">, </span>성별<span lang="EN-US">, </span>아이핀<span lang="EN-US">, </span>연계정보<span lang="EN-US">(CI), </span>중복가입확인정보<span lang="EN-US">(DI) : </span>본인인증시 수집<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 2">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">회원정보관리를 위한 연락 및 안내<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">이메일<span lang="EN-US">, </span>연락처<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 3">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">만<span lang="EN-US"> 14</span>세 미만 아동에 대한 법정대리인 동의 확인을 위한 목적 <span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">법정대리인의 이름<span lang="EN-US">/</span>이메일<span lang="EN-US">/</span>휴대전화번호<span lang="EN-US">/</span>통신사<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 4">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">부정이용방지<span lang="EN-US">, </span>비인가 사용 방지<span lang="EN-US">, </span>안전한 결제 서비스 제공<span lang="EN-US">, </span>분쟁조정 해결을 위한 기록보존<span lang="EN-US"><span style="mso-tab-count: 1"> </span><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">휴대폰번호<span lang="EN-US">, </span>가상카드번호<span lang="EN-US">, </span>생년월일<span lang="EN-US">, </span>아이디<span lang="EN-US">, </span>이름<span lang="EN-US">, CI, DI, IP Address, </span>방문일시<span lang="EN-US">, </span>서비스 이용기록<span lang="EN-US"> (</span>자동으로 생성되는 개인정보<span lang="EN-US">)<o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 5">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">고객이 주문하신 상품 및 경품 배송을 위한 목적<span lang="EN-US">, </span>채권추심<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">기본배송지<span lang="EN-US">, </span>연락처<span lang="EN-US">, </span>수취인의 성명<span lang="EN-US">/ </span>전화번호<span lang="EN-US">/</span>휴대폰 번호<span lang="EN-US">/</span>배송주소<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 6">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">계약이행에 대한 연락 및 안내 등의 고지를 위한 목적<span lang="EN-US">, </span>서비스 판매 정보제공 홍보 가입권유활동<span lang="EN-US"> (</span>할인쿠폰<span lang="EN-US">, </span>특가상품정보<span lang="EN-US">, I-Point </span>혜택<span lang="EN-US">, </span>판촉광고 포함<span lang="EN-US">) </span>안내 등의 고지를 위한 목적 <span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">연락처<span lang="EN-US">, SMS</span>수신여부<span lang="EN-US">, </span>이메일<span lang="EN-US">, </span>이메일수신여부<span lang="EN-US">, DM</span>수신 여부<span lang="EN-US">, </span>유선안내<span lang="EN-US">(TM)</span>수신여부<span lang="EN-US">, </span>성명<span lang="EN-US">, </span>생년월일<span lang="EN-US">, </span>성별<span lang="EN-US">, </span>우편번호<span lang="EN-US">, CI, </span>설문결과 <span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 7">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">대금결제서비스 제공용<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">카드번호<span lang="EN-US">, </span>유효기간<span lang="EN-US">, </span>성명<span lang="EN-US">, </span>생년월일<span lang="EN-US">, </span>성별<span lang="EN-US">, </span>카드비밀번호 앞<span lang="EN-US">2</span>자리<span lang="EN-US">, </span>계약자와의 관계 증빙<span lang="EN-US">(</span>타인 명의 카드 이용 시<span lang="EN-US">), </span>은행계좌번호<span lang="EN-US">, </span>입금자명<span lang="EN-US">, </span>은행명<span lang="EN-US">, </span>휴대전화번호<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 8">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">계좌<span lang="EN-US">/</span>카드 간편결제서비스 가입을 통한 전자금융서비스 제공 목적<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><font face="맑은 고딕"><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">ID, </span><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">비밀번호<span lang="EN-US">, </span>이름<span lang="EN-US">, </span>생년월일<span lang="EN-US">, </span>휴대폰번호<span lang="EN-US">, </span>이메일<span lang="EN-US">, </span>성별<span lang="EN-US">, </span>통신사명<span lang="EN-US">, </span>내외국인정보<span lang="EN-US">, </span>본인인증정보<span lang="EN-US">(CI, DI), </span>서비스 이용정보<span lang="EN-US">(IP, </span>이용 기록<span lang="EN-US">)<o:p></o:p></span></span></font></p>
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">계좌 간편결제<span lang="EN-US"> : </span>은행명<span lang="EN-US">, </span>계좌번호<span lang="EN-US">, </span>결제 비밀번호<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">신용카드 간편결제<span lang="EN-US"> : </span>신용카드정보<span lang="EN-US">(</span>카드사명<span lang="EN-US">, </span>신용카드번호<span lang="EN-US">, </span>유효기간<span lang="EN-US">, CVC), </span>결제 비밀번호<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 9">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">인터파크의 상품<span lang="EN-US">/</span>서비스의 이용 실적 정보 통계<span lang="EN-US">/</span>분석 및 상품<span lang="EN-US">/</span>서비스 추천<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">성별<span lang="EN-US">, </span>생년월일<span lang="EN-US">, </span>휴대폰번호<span lang="EN-US">, </span>전화번호<span lang="EN-US">, </span>이메일<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 10">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">고객 상담 및 민원의 접수 및 처리 결과 안내 목적<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">이름<span lang="EN-US">, </span>연락처<span lang="EN-US">, </span>이메일<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 11">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">비회원 물품 및 서비스 상품 구매 서비스 제공 목적<span lang="EN-US">, </span>부정이용방지<span lang="EN-US">, </span>비인가 사용방지<span lang="EN-US">, </span>분쟁조정 해결을 위한 기록보존 및 자동로그인 기능 제공 목적<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">성명<span lang="EN-US">, </span>휴대전화번호<span lang="EN-US">, </span>주문비밀번호<span lang="EN-US">, </span>수령인정보<span lang="EN-US">(</span>성명<span lang="EN-US">, </span>주소<span lang="EN-US">, </span>전화번호<span lang="EN-US">, </span>휴대전화번호<span lang="EN-US">), </span>이메일<span lang="EN-US">, </span>이메일 수신여부<span lang="EN-US">, </span>대금결제서비스 제공 목적 정보<span lang="EN-US">, </span>현금영수증 발급 목적 정보<span lang="EN-US">, IP, </span>방문일시<span lang="EN-US">, </span>거래내역<span lang="EN-US">, </span>서비스 이용기록<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 12">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">회원님의 편의를 위한 맞춤광고 및 서비스 제공<span lang="EN-US">, </span>기념일 행사쿠폰 발송 및 서비스 품질 향상을 위한 제휴서비스를 제공하기 위한 목적<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">생년월일<span lang="EN-US">, </span>성별<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 13">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">경품 제세공과금처리 목적<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">주민등록번호<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 14">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">여행자보험 가입 목적 <span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">성명<span lang="EN-US">, </span>영문성명<span lang="EN-US">, </span>생년월일<span lang="EN-US">, </span>성별<span lang="EN-US">, </span>전화번호<span lang="EN-US">, </span>이메일<span lang="EN-US">, </span>주민등록번호<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 15">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><font face="맑은 고딕"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%; mso-bidi-font-size: 11.0pt; mso-themecolor: text1">항공사 부가서비스 구매</span><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p></o:p></span></font></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%; mso-bidi-font-size: 11.0pt; mso-themecolor: text1"><font face="맑은 고딕">예약자 및 동반 탑승객 전원의<span lang="EN-US">&nbsp;</span>인터파크 회원번호<span lang="EN-US">, </span>성명<span lang="EN-US">, </span>예약번호<span lang="EN-US">, </span>여정정보<span lang="EN-US">(</span>항공사<span lang="EN-US">, </span>노선정보<span lang="EN-US">, </span>출발일시<span lang="EN-US">, </span>도착지 정보 등<span lang="EN-US">), </span>휴대폰 번호<span lang="EN-US">, </span>이메일<span lang="EN-US">(CS</span>처리용</font><font face="맑은 고딕"><span lang="EN-US">)<br></span>예약자는 탑승객의 적법한 동의를 얻어 당사에 해당 정보 제공해야함</font></span><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p></o:p></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 16">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">투어 상품 예약 및 상담<span lang="EN-US">, </span>출입국 가능 여부 확인 목적<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">예약자 정보<span lang="EN-US">(</span>성명<span lang="EN-US">, </span>이메일<span lang="EN-US">, </span>휴대전화번호<span lang="EN-US">, </span>일반전화번호<span lang="EN-US">)<o:p></o:p></span></font></span></p>
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">여행자 정보<span lang="EN-US">(</span>성명<span lang="EN-US">, </span>영문성명<span lang="EN-US">, </span>생년월일<span lang="EN-US">, </span>성별<span lang="EN-US">, </span>여권번호<span lang="EN-US">, </span>여권만료일<span lang="EN-US">, </span>국적<span lang="EN-US">, </span>여권발행국<span lang="EN-US">, </span>여권사본 및 항공운임 할인증빙<span lang="EN-US">, </span>휴대전화번호<span lang="EN-US">, </span>체류국가<span lang="EN-US">, </span>주소<span lang="EN-US">, </span>우편번호<span lang="EN-US">, </span>현지연락처<span lang="EN-US">)<o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 17">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">마일리지 적립 목적<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">마일리지번호<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 18">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">해외 직배송 상품 통관업무처리 목적<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><font face="맑은 고딕"><span style="FONT-SIZE: 9pt; COLOR: red; LINE-HEIGHT: 115%" 맑은="">개인통관고유부호</span><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p></o:p></span></font></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 19">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">현금영수증 발급 목적<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">현금영수증카드번호<span lang="EN-US">, </span>휴대전화번호<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 20">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">주류 통신판매기록부 관리 및 신고 목적<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">성명<span lang="EN-US">, </span>생년월일<span lang="EN-US">, </span>배송지주소<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 21; mso-yfti-lastrow: yes">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><font face="맑은 고딕"><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">SNS </span><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">이용자 식별<span lang="EN-US"><o:p></o:p></span></span></font></p>
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><font face="맑은 고딕"><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">(</span><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">네이버<span lang="EN-US">, </span>카카오<span lang="EN-US">, </span>페이코<span lang="EN-US">, </span>구글<span lang="EN-US">)<o:p></o:p></span></span></font></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">성명<span lang="EN-US">, </span>이메일<span lang="EN-US">, </span>성별<span lang="EN-US"> : </span>회원가입시 수집<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                </tbody>
						            </table>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt 23.25pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p><font face="맑은 고딕">&nbsp;</font></o:p></span></p>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 15pt 0cm 0pt 18pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><font face="맑은 고딕"><strong><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">6. </span></strong><strong style="mso-bidi-font-weight: normal"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">개인정보의 제<span lang="EN-US">3</span>자 제공 및 위탁에 관한 사항<span style="mso-bidi-font-weight: bold"> </span></span></strong><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p></o:p></span></font></p>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt 23.25pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">① 회사는 회원님의 동의가 있거나 법률의 규정에 의한 경우를 제외하고는 어떠한 경우에도 회원님의 개인정보를 이용하거나 타인 또는 타기업<span lang="EN-US">, </span>기관에 제공하지 않습니다<span lang="EN-US">.<o:p></o:p></span></font></span></p>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt 23.25pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">② 회사가 제공하는 서비스를 통하여 회원간의 거래관계가 이루어진 경우<span lang="EN-US">, </span>배송 등 거래이행을 위하여 관련 정보는 필요한 범위내에서 회원님이 동의한 경우 아래와 같이 거래 당사자에게 제공합니다<span lang="EN-US">. <o:p></o:p></span></font></span></p>
						            <table style="BORDER-COLLAPSE: collapse; MARGIN: auto auto auto 16pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 0cm 0cm 0cm" cellspacing="0" cellpadding="0" border="0" class="MsoNormalTable">
						                <tbody>
						                    <tr style="mso-yfti-irow: 0; mso-yfti-firstrow: yes">
						                        <td style="BORDER-TOP: #cccccc 1pt solid; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">구분<span lang="EN-US"><o:p></o:p></span></font></span></strong></p>
						                        </td>
						                        <td style="BORDER-TOP: #cccccc 1pt solid; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">개인정보 제공받는 자<span lang="EN-US"><o:p></o:p></span></font></span></strong></p>
						                        </td>
						                        <td style="BORDER-TOP: #cccccc 1pt solid; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">개인정보 이용 목적<span lang="EN-US"><o:p></o:p></span></font></span></strong></p>
						                        </td>
						                        <td style="BORDER-TOP: #cccccc 1pt solid; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">개인정보 제공 항목<span lang="EN-US"><o:p></o:p></span></font></span></strong></p>
						                        </td>
						                        <td style="BORDER-TOP: #cccccc 1pt solid; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">보유 및 이용 기간<span lang="EN-US"><o:p></o:p></span></font></span></strong></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 1">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">쇼핑<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><span lang="EN-US"><a><font face="맑은 고딕"><span style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은="">[</span><span lang="EN-US" style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><span lang="EN-US">업체</span></span><span lang="EN-US" style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><span lang="EN-US"> </span></span><span lang="EN-US" style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><span lang="EN-US">리스트]</span></span></font></a></span><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p></o:p></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt" rowspan="3">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">청약의사의 확인<span lang="EN-US">, </span>거래이행<span lang="EN-US">, </span>배송<span lang="EN-US">, </span>고객상담<span lang="EN-US">, AS </span>등 불만 처리<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: red; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">성명<span lang="EN-US">, </span>아이디<span lang="EN-US">, </span>주소<span lang="EN-US">, </span>전화번호<span lang="EN-US">, </span>휴대폰번호<span lang="EN-US">, </span>주문정보<span lang="EN-US">, </span>개인통관고유부호<span lang="EN-US">(</span>선택 시<span lang="EN-US">), </span>수취인 정보<span lang="EN-US">(</span>성명<span lang="EN-US">, </span>전화번호<span lang="EN-US">, </span>휴대폰번호<span lang="EN-US">, </span>주소<span lang="EN-US">)<o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt" rowspan="3">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">배송완료 혹은 티켓 사용완료 후<span lang="EN-US"> 3</span>개월까지<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 2">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">도서<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><span lang="EN-US"><a><font face="맑은 고딕"><span style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은="">[</span><span lang="EN-US" style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><span lang="EN-US">업체</span></span><span lang="EN-US" style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><span lang="EN-US"> </span></span><span lang="EN-US" style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><span lang="EN-US">리스트]</span></span></font></a></span><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p></o:p></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 0cm; PADDING-TOP: 0cm; PADDING-LEFT: 0cm; BORDER-LEFT: #000000; PADDING-RIGHT: 0cm; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: red; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">성명<span lang="EN-US">, </span>아이디<span lang="EN-US">, </span>주소<span lang="EN-US">, </span>전화번호<span lang="EN-US">, </span>휴대폰번호<span lang="EN-US">, </span>주문정보<span lang="EN-US">, </span>개인통관고유부호<span lang="EN-US">(</span>선택 시<span lang="EN-US">), </span>생년월일<span lang="EN-US">(</span>선택 시<span lang="EN-US">), </span>수취인 정보<span lang="EN-US">(</span>성명<span lang="EN-US">, </span>전화번호<span lang="EN-US">, </span>휴대폰번호<span lang="EN-US">, </span>주소<span lang="EN-US">)<o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 3">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">티켓<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><span lang="EN-US"><a><font face="맑은 고딕"><span style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은="">[</span><span lang="EN-US" style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><span lang="EN-US">업체</span></span><span lang="EN-US" style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><span lang="EN-US"> </span></span><span lang="EN-US" style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><span lang="EN-US">리스트]</span></span></font></a></span><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p></o:p></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 0cm; PADDING-TOP: 0cm; PADDING-LEFT: 0cm; BORDER-LEFT: #000000; PADDING-RIGHT: 0cm; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: red; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">성명<span lang="EN-US">, </span>아이디<span lang="EN-US">, </span>주소<span lang="EN-US">, </span>전화번호<span lang="EN-US">, </span>휴대폰번호<span lang="EN-US">, </span>주문정보<span lang="EN-US">, </span>개인통관고유부호<span lang="EN-US">(</span>선택 시<span lang="EN-US">), </span>생년월일<span lang="EN-US">(</span>선택 시<span lang="EN-US">), </span>수취인 정보<span lang="EN-US">(</span>성명<span lang="EN-US">, </span>전화번호<span lang="EN-US">, </span>휴대폰번호<span lang="EN-US">, </span>주소<span lang="EN-US">)<o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 4">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">투어<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><span lang="EN-US"><a><font face="맑은 고딕"><span style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은="">[</span><span lang="EN-US" style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><span lang="EN-US">업체</span></span><span lang="EN-US" style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><span lang="EN-US"> </span></span><span lang="EN-US" style="FONT-SIZE: 9pt; TEXT-DECORATION: none; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><span lang="EN-US">리스트]</span></span></font></a></span><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p></o:p></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">청약의사의 확인<span lang="EN-US">, </span>거래이행<span lang="EN-US">, </span>배송<span lang="EN-US">, </span>고객상담<span lang="EN-US">, AS </span>등 불만 처리<span lang="EN-US">, </span>여행자보험 가입<span lang="EN-US">, </span>결제 및 환불<span lang="EN-US">, </span>보험금지급 서비스 제공<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">성명<span lang="EN-US">, </span>아이디<span lang="EN-US">, </span>주소<span lang="EN-US">, </span>이메일<span lang="EN-US">, </span>전화번호<span lang="EN-US">, </span>휴대폰번호<span lang="EN-US">, </span>주문정보<span lang="EN-US">, </span>수취인 정보<span lang="EN-US">(</span>성명<span lang="EN-US">, </span>전화번호<span lang="EN-US">, </span>휴대폰번호<span lang="EN-US">, </span>주소<span lang="EN-US">), </span>여권정보<span lang="EN-US">, </span>영문명<span lang="EN-US">, </span>생년월일<span lang="EN-US">, </span>성별<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">투어 이용 완료 후<span lang="EN-US"> 3</span>개월까지<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                    <tr style="mso-yfti-irow: 5; mso-yfti-lastrow: yes">
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #cccccc 1pt solid; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">원페이<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: center; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="center"><font face="맑은 고딕"><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">[</span><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">업체 리스트<span lang="EN-US">]<o:p></o:p></span></span></font></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">결제계좌 등록<span lang="EN-US">, </span>예금주 확인<span lang="EN-US">, </span>출금이체<span lang="EN-US">, </span>신용카드 결제<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">계좌 간편결제 <span lang="EN-US">: </span>성명<span lang="EN-US">, </span>생년월일<span lang="EN-US">, </span>계좌번호<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">카드 간편결제 <span lang="EN-US">: </span>신용카드 정보<span lang="EN-US">(</span>신용카드번호<span lang="EN-US">, </span>유효기간<span lang="EN-US">, CVC), IP(</span>비씨카드에 한함<span lang="EN-US">)<o:p></o:p></span></font></span></p>
						                        </td>
						                        <td style="BORDER-TOP: #000000; BORDER-RIGHT: #cccccc 1pt solid; BORDER-BOTTOM: #cccccc 1pt solid; PADDING-BOTTOM: 7.5pt; PADDING-TOP: 7.5pt; PADDING-LEFT: 3.75pt; BORDER-LEFT: #000000; PADDING-RIGHT: 3.75pt; BACKGROUND-COLOR: transparent; mso-border-alt: solid #CCCCCC .75pt; mso-border-top-alt: solid #CCCCCC .75pt; mso-border-left-alt: solid #CCCCCC .75pt">
						                        <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">원페이 이용 완료 후<span lang="EN-US"> 3</span>개월까지<span lang="EN-US"><o:p></o:p></span></font></span></p>
						                        </td>
						                    </tr>
						                </tbody>
						            </table>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt 23.25pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p><font face="맑은 고딕">&nbsp;</font></o:p></span></p>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 15pt 0cm 0pt 18pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><font face="맑은 고딕"><strong><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">16. </span></strong><strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">방침변경등에 대한 고지</span></strong><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""> <span lang="EN-US"><o:p></o:p></span></span></font></p>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt 36pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><font face="맑은 고딕"><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">현 개인정보처리방침은 </span><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: red; LINE-HEIGHT: 115%" 맑은="">2020</span><span style="FONT-SIZE: 9pt; COLOR: red; LINE-HEIGHT: 115%" 맑은="">년<span lang="EN-US"> 12</span>월<span lang="EN-US"> 10</span>일</span><span style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은="">부터 적용됩니다<span lang="EN-US">. </span>내용의 추가<span lang="EN-US">, </span>삭제 및 수정이 있을 경우에는 시행일의<span lang="EN-US"> 7</span>일 전부터 웹사이트의 공지사항을 통하여 고지할 것이며 중요한 사항일 경우 시행일<span lang="EN-US"> 30</span>일전부터 웹사이트의 공지사항을 통한 고지 및 이메일 고지를 할 것입니다<span lang="EN-US">. </span>단<span lang="EN-US">, </span>개인정보 수집 및 활용<span lang="EN-US">, </span>제<span lang="EN-US">3</span>자제공 등이 변경될 경우 별도의 동의를 받겠습니다<span lang="EN-US">. </span>또한 개인정보 처리방침에 버전번호 및 변경공고일자 및 그 시행일자 등을 부여하여 개정여부를 쉽게 알 수 있도록 하고 있습니다<span lang="EN-US">. <o:p></o:p></span></span></font></p>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt 18pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p><font face="맑은 고딕">&nbsp;</font></o:p></span></p>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt 23.25pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><strong><span style="FONT-SIZE: 9pt; COLOR: red; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">개인정보처리방침 버전번호<span lang="EN-US">: v80<o:p></o:p></span></font></span></strong></p>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt 23.25pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><strong><span style="FONT-SIZE: 9pt; COLOR: red; LINE-HEIGHT: 115%" 맑은=""><font face="맑은 고딕">개인정보처리방침 변경 일자<span lang="EN-US">: 2020-12-03<o:p></o:p></span></font></span></strong></p>
						            <p class="MsoNormal" style="WORD-BREAK: keep-all; TEXT-ALIGN: left; MARGIN: 0cm 0cm 0pt 23.25pt; LINE-HEIGHT: 115%; mso-pagination: widow-orphan" align="left"><font face="맑은 고딕"><strong><span style="FONT-SIZE: 9pt; COLOR: red; LINE-HEIGHT: 115%" 맑은="">개인정보처리방침 시행 일자<span lang="EN-US">: 2020-12-10</span></span></strong><span lang="EN-US" style="FONT-SIZE: 9pt; COLOR: black; LINE-HEIGHT: 115%" 맑은=""><o:p></o:p></span></font></p><br><br>
						            </td>
						        </tr>
						    </tbody>
						</table>
						</div>
					<br>
						감사합니다.
				</p>
			</div>
      
      <div class="main-section3">
         <div class="section-paging">
           
           <div class="udp_btnbox">
				<a href="http://localhost:9000/One_day_class/notice/notice_list.jsp"><button type="button">목록</button></a>		
			</div>
         </div>
         
      </div>
   </div>
</div>
</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
         