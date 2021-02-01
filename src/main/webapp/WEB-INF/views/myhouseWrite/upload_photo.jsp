<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/gr.css">
<!-- <link rel="stylesheet" href="http://localhost:9000/myhouse/css/yj.css"> -->
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://localhost:9000/myhouse/js/myhouse.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<!--이미지 미리보기-->
<script type="text/javascript" src="./js/jquery-3.1.0.min.js" charset="utf-8"></script>
    <script type="text/javascript">
        var sel_file;
     
        /**이미지 미리보기**/
        $(document).ready(function() {
            $("#imageSelector").on("change", handleImgFileSelect);
        }); 
 
        function handleImgFileSelect(e) {
            var files = e.target.files;
            var filesArr = Array.prototype.slice.call(files);
 
            filesArr.forEach(function(f) {
                if(!f.type.match("image.*")) {
                    /* alert("확장자는 이미지 확장자만 가능합니다."); */
                    return;
                }
 
                sel_file = f;
 
                var reader = new FileReader();
                reader.onload = function(e) {
                    $("#img").attr("src", e.target.result);
                }
                reader.readAsDataURL(f);
            });
            
        }
        
        /*이미지 태그 위치*/
        function test(){
            var x = event.offsetX;
            var y = event.offsetY;
            alert("이미지 좌표 test /" + x + "/" + y);  
            var str =  "<area shape='circle' coords='"+x+","+y+",10' onclick='test2()' style='border:1px solid red'>";
             $("#map").append(str);
          /*  alert(str); */
            
			
        }
        /**이미지맵 실행**/
         function test2(){
            alert("map 실행");
          	$(".tags_form").append();
          	
    	} 
   	         
        
     	var canvas = document.getElementById('Canvas');
    	var context = canvas.getContext("2d");

    	// Map sprite
    	var mapSprite = new Image();
    	/* mapSprite.src = "http://www.retrogameguide.com/images/screenshots/snes-legend-of-zelda-link-to-the-past-8.jpg"; */

    	var Marker = function () {
    	    this.Sprite = new Image();
    	    this.Sprite.src = "http://www.clker.com/cliparts/w/O/e/P/x/i/map-marker-hi.png"
    	    this.Width = 12;
    	    this.Height = 20;
    	    this.XPos = 0;
    	    this.YPos = 0;
    	}

    	var Markers = new Array();

    	var mouseClicked = function (mouse) {
    	    // Get corrent mouse coords
    	    var rect = canvas.getBoundingClientRect();
    	    var mouseXPos = (mouse.x - rect.left);
    	    var mouseYPos = (mouse.y - rect.top);

    	    console.log("Marker added");

    	    // Move the marker when placed to a better location
    	    var marker = new Marker();
    	    marker.XPos = mouseXPos - (marker.Width / 2);
    	    marker.YPos = mouseYPos - marker.Height;

    	    Markers.push(marker);
    	}

    	// Add mouse click event listener to canvas
    	canvas.addEventListener("mousedown", mouseClicked, false);

    	var firstLoad = function () {
    	    context.font = "15px Georgia";
    	    context.textAlign = "center";
    	}

    	firstLoad();

    	var main = function () {
    	    draw();
    	};

    	var draw = function () {
    	    context.fillStyle = "#000";
    	    context.fillRect(0, 0, canvas.width, canvas.height);

    	    context.drawImage(mapSprite, 0, 0, 700, 700);

    	    for (var i = 0; i < Markers.length; i++) {
    	        var tempMarker = Markers[i];
    	        context.drawImage(tempMarker.Sprite, tempMarker.XPos, tempMarker.YPos, tempMarker.Width, tempMarker.Height);

    	        var markerText = "Postion (X:" + tempMarker.XPos + ", Y:" + tempMarker.YPos;

    	        var textMeasurements = context.measureText(markerText);
    	        context.fillStyle = "#666";
    	        context.globalAlpha = 0.7;
    	        context.fillRect(tempMarker.XPos - (textMeasurements.width / 2), tempMarker.YPos - 15, textMeasurements.width, 20);
    	        context.globalAlpha = 1;

    	        context.fillStyle = "#000";
    	        context.fillText(markerText, tempMarker.XPos, tempMarker.YPos);
    	    }
    	};

    	setInterval(main, (1000 / 60)); // Refresh 60 times a second
        

    </script>
	
	<style>
	 img#img{
		z-index:-1;
	}

	

	</style>
</head>

<body>

	<form class="card-collection-form container">
		<h1 class="card-collection-form__title">사진 올리기</h1>
		<div class="card-collection-form__metadata">
			<div class="card-collection-form__metadata__left">

				<div class="input-group select-input card-collection-form__metadata__entry">
					<select class="form-control empty"><option selected=""
							value="" disabled="">주거형태</option>
						<option value="0">원룸&amp;오피스텔</option>
						<option value="1">아파트</option>
						<option value="2">빌라&amp;연립</option>
						<option value="3">단독주택</option>
						<option value="4">사무공간</option>
						<option value="5">상업공간</option>
						<option value="6">기타</option></select><span class="select-input__icon"><svg
							class="icon" width="10" height="10" style="fill: currentColor"
							preserveAspectRatio="xMidYMid meet">
							<path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path></svg></span>
				</div> 
				<div
					class="input-group select-input card-collection-form__metadata__entry">
					<select class="form-control empty"><option selected=""
							value="" disabled="">스타일</option>
						<option value="0">모던</option>
						<option value="1">북유럽</option>
						<option value="2">빈티지</option>
						<option value="3">내추럴</option>
						<option value="4">프로방스&amp;로맨틱</option>
						<option value="5">클래식&amp;앤틱</option>
						<option value="6">한국&amp;아시아</option>
						<option value="7">유니크</option></select><span class="select-input__icon"><svg
							class="icon" width="10" height="10" style="fill: currentColor"
							preserveAspectRatio="xMidYMid meet">
							<path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path></svg></span>
				</div>
			</div>
		</div>
		<section class="card-collection-form__card-section">
			<div class="card-collection-form__card-section__overview-container">
				<div data-sticky-enabled="false" data-sticky-disabled="false"
					data-sticky-always="false" data-sticky-ignore="false"
					data-direction="top" data-offset="0"
					class="sticky-container card-collection-form__card-section__overview-wrap"
					style="position: sticky; top: 0px;">
					<div
						class="sticky-child card-collection-form__card-section__overview"
						style="position: relative; box-sizing: border-box; height: 300px;">
						<ul class="card-collection-form__card-overview"></ul>
					</div>
				</div>
			</div>
			<div class="card-collection-form__card-section__content">
				<ol class="card-collection-form__card-section__list">
					<li class="card-collection-form__card-section__list__item"><div
							class="card-collection-form__card-item">
							<div class="card-collection-form__card-item__image-wrap"
								draggable="true">
								
								
								
								
								
								
								
								
								
								
								<!--이미지파일만 선택,우선은 다중선택가능-->
								<input type="file" class="hidden_input" id="imageSelector" name="imageSelector" 
									accept="image/jpeg, image/jpg, image/png" multiple />	
								<!-- <div id="w_picture"> -->
								
									<%-- <canvas id="img" width="450" height="500"></canvas> --%>
									<img class="imgbackground" id="img" usemap="#map" onclick="test()" /> <!-- onclick="test()" --> 
									<map name="map" id="map">
										
									</map> 
									
									
									
									
									
									
									
									
									
									
									
									
									
									
									
									
								<div class="card-collection-form__card-item__content__row">
									<textarea placeholder="사진에 대해서 설명해주세요."
										class="form-control text-area-input" style="height: 40px;"></textarea>
								</div>
								<div class="card-collection-form__card-item__content__row">
									<div class="keyword-input">
									
									</div>
								</div>
								</div>
							</div>
						</div></li>
				</ol>
			</div>
		</section>

		<div data-sticky-enabled="true" data-sticky-disabled="false"
			data-sticky-always="true" data-sticky-ignore="false"
			data-direction="bottom" data-offset="0"
			class="sticky-container card-collection-form__footer-wrap"
			style="height: 71px;">
			<div class="sticky-child card-collection-form__footer"
				style="position: fixed; left: 0px; right: 0px; bottom: 0px;">
				<div class="card-collection-form__footer__left"></div>
				<div class="card-collection-form__footer__right">
					<button
						class="button button--color-blue button--size-50 button--shape-4 card-collection-form__footer__submit"
						type="submit">올리기</button>
				</div>
			</div>
		</div>

	</form>

</body>
</html>