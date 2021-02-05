<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/gr.css">
<link rel="stylesheet" href="http://localhost:9000/myhouse/css/yj.css">
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://localhost:9000/myhouse/js/myhouse.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<!--이미지 미리보기-->
<!-- <script type="text/javascript" src="./js/jquery-3.1.0.min.js" charset="utf-8"></script> -->
    <script type="text/javascript">
    
    /*파일 미리보기및 삭제*/
    $(document).ready(function() {
    	
    	  if (window.File && window.FileList && window.FileReader) {
    	    $("#imageSelector").on("change", function(e) {
    	      var files = e.target.files,filesLength = files.length;
    	      
    	      for (var i = 0; i < filesLength; i++) {
	    	        var f = files[i]
	    	        var fileReader = new FileReader();
	    	        fileReader.onload = (function(e) {
	    	          var file = e.target;
	    	          
	    	          $("<span class=\"pip\">" +
	    	            "<img class=\"imageThumb\" src=\"" + e.target.result + "\" title=\"" + file.name + "\"/>" +
	    	            "<br/><span class=\"remove\">미리보기 끄기</span>" +
	    	            "</span>").insertAfter("#imageSelector");
	    	          
	    	          
	    	          $(".remove").click(function(){
	    	            $(this).parent(".pip").remove();
	    	          });
	    	          
	    	        });
	    	        fileReader.readAsDataURL(f);
    	      }
    	      
    	    });
    	  } else {
    	    alert("브라우저를 업데이트 해주세요");
    	  }
    	  
    	  
    	  $("#btnUploadPhoto").click(function(){
          	if($("#ptype").val() == "주거형태"){
  				alert("ptype없음");
  				$("#ptype").focus();
  				return false;
  			}else{
				uploadPhotoForm.submit();		
  			}
			});
    	  
    	  
    	});     
    
     /*    $(document).ready(function() {
            $("#imageSelector").on("change", handleImgFileSelect);
            
            $("#btnUploadPhoto").click(function(){
            	if($("#ptype").val() == "주거형태"){
    				alert("ptype없음");
    				$("#ptype").focus();
    				return false;
    			}else{
				uploadPhotoForm.submit();		
    			}
			});
		
        });  */
 
        function handleImgFileSelect(e) {
            var files = e.target.files;
            var filesArr = Array.prototype.slice.call(files);
 
            filesArr.forEach(function(f) {
                if(!f.type.match("image.*")) {
                    
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
        
        /*이미지 태그 워치*/
    /*     function test(){
            alert("이미지태그위치" + event.offsetX  + "/" + event.offsetY)           
    } */
 
    </script>
	
	<style>		
		input[type="file"] {
			display: block;
		}
		
		.imageThumb {
			/* max-height: 450px;
			max-width: 450px; */
			height:380px;
			width:450px;
			border: 2px solid;
			padding: 1px;
			cursor: pointer;
		}
		
		.pip {
			display: inline-block;
			margin: 10px 10px 0 0; 
			/* margin: left; */
		}
		
		.remove {
			display: block;
			background: #35c5f0;
			border: 1px solid black;
			color: white;
			text-align: center;
			cursor: pointer;
		}
		
		.remove:hover {
			background: white;
			color: black;
		}
		.input-file-button{
		    padding: 6px 25px;
		    background-color:#35c5f0;
		    border-radius: 4px;
		    color: white;
		    cursor: pointer;
		}
</style>
</head>

<body>

<div class="card-collection-form-logo-wrap"><a class="card-collection-form-logo" aria-label="오늘의집" href="http://localhost:9000/myhouse/index.do"><svg class="icon" width="147" height="50" viewBox="0 0 147 50" preserveAspectRatio="xMidYMid meet"><g fill="none" fill-rule="evenodd"><path fill="#35C5F0" d="M38.42 0H8.35C4.03 0 0 4.02 0 8.33v33.34C0 45.98 4.03 50 8.35 50h33.41c4.33 0 8.35-4.02 8.35-8.33V8.33C50.11 4.02 46.1 0 41.76 0h-3.34z"></path><path fill="#FFF" d="M36.73 26.02a3.31 3.31 0 0 1-3.31-3.3 3.31 3.31 0 0 1 3.31-3.31 3.31 3.31 0 0 1 3.31 3.3 3.31 3.31 0 0 1-3.31 3.31zm-2.47 8.7h-19.1V22.08l9.55-6.65 5.47 3.81a7.35 7.35 0 0 0-.86 3.47 7.4 7.4 0 0 0 4.94 6.97v5.02zm2.47-19.4c-.84 0-1.65.14-2.4.4l-7.93-5.5a2.97 2.97 0 0 0-3.39 0l-11.86 8.24a2.96 2.96 0 0 0-1.27 2.43v16.13a2.96 2.96 0 0 0 2.97 2.95h23.72a2.96 2.96 0 0 0 2.96-2.96v-7.44a7.4 7.4 0 0 0 4.61-6.85 7.4 7.4 0 0 0-7.41-7.4z"></path><g fill="#000"><path d="M77.46 37.1h-5.72v-5.18a1.68 1.68 0 0 0-3.37 0v5.18h-5.72a1.68 1.68 0 1 0 0 3.36h14.8a1.68 1.68 0 1 0 0-3.36M66.19 18.53c0-5.32 2.43-6.12 3.87-6.12 1.45 0 3.88.8 3.88 6.12v.42c0 5.32-2.43 6.12-3.87 6.12-1.45 0-3.87-.8-3.87-6.12v-.42zm3.87 9.9c4.47 0 7.25-3.63 7.25-9.48v-.42c0-5.85-2.78-9.48-7.24-9.48s-7.25 3.63-7.25 9.48v.42c0 5.85 2.78 9.48 7.25 9.48zm29.67-8.52H81.64a1.69 1.69 0 1 0 0 3.37h18.08a1.68 1.68 0 1 0 0-3.37m-1.8 17.96c-8.22 2.13-10.97.92-11.78.3-.52-.4-.76-.94-.76-1.72v-1H97.3c.93 0 1.69-.76 1.69-1.69v-5.88c0-.93-.76-1.68-1.69-1.68H83.7a1.68 1.68 0 1 0 0 3.36h11.92v2.52H83.7c-.94 0-1.69.76-1.69 1.69v2.68c0 1.82.72 3.34 2.07 4.38 1.39 1.08 3.41 1.61 6.05 1.61 2.38 0 5.26-.44 8.63-1.3a1.68 1.68 0 0 0 1.21-2.06 1.69 1.69 0 0 0-2.05-1.2M84.55 17H97.1a1.69 1.69 0 1 0 0-3.37H86.24V9.62a1.68 1.68 0 0 0-3.38 0v5.7c0 .94.76 1.69 1.69 1.69m59.83-8.5c-.93 0-1.7.75-1.7 1.68v13.57a1.69 1.69 0 0 0 3.38 0V10.18c0-.93-.75-1.69-1.68-1.69m-8.52 14.82a1.69 1.69 0 0 0 2.16 1 1.68 1.68 0 0 0 1.01-2.15c-.05-.15-1.16-3.1-3.92-5.21l4.29-4.76a1.68 1.68 0 0 0 .28-1.8 1.69 1.69 0 0 0-1.54-1h-10.5a1.68 1.68 0 1 0 0 3.36h6.72l-3.1 3.44v.01l-4.88 5.4a1.68 1.68 0 0 0 1.26 2.81c.46 0 .92-.19 1.25-.55l3.96-4.4c2.1 1.48 3 3.8 3.01 3.85m5.88 15.34h-8.14a.95.95 0 0 1-.95-.94v-2.26h10.04v2.26c0 .52-.42.94-.95.94m2.64-10.85c-.93 0-1.69.75-1.69 1.68v2.6h-10.04v-2.6a1.68 1.68 0 0 0-3.37 0v8.23a4.32 4.32 0 0 0 4.32 4.3h8.14a4.32 4.32 0 0 0 4.32-4.3v-8.23c0-.93-.75-1.68-1.68-1.68m-34.1-15.39c2.57 0 2.7 4.91 2.7 5.9 0 .98-.13 5.88-2.7 5.88-2.57 0-2.7-4.9-2.7-5.89 0-.98.13-5.89 2.7-5.89m0 15.15a5.33 5.33 0 0 0 4.8-3.04c.83-1.56 1.27-3.7 1.27-6.22s-.44-4.65-1.27-6.2a5.33 5.33 0 0 0-4.8-3.05 5.33 5.33 0 0 0-4.8 3.04c-.84 1.56-1.28 3.7-1.28 6.21s.44 4.66 1.28 6.22a5.33 5.33 0 0 0 4.8 3.04"></path><path d="M120.65 8.5c-.93 0-1.69.75-1.69 1.68v20.6c-2.23.69-6.66 1.3-12.04 1.3h-2.57a1.68 1.68 0 1 0 0 3.37h2.57c3.07 0 8.37-.27 12.05-1.19v5.6a1.68 1.68 0 0 0 3.37 0V10.19c0-.93-.76-1.69-1.69-1.69"></path></g></g></svg></a></div>
	<form class="card-collection-form container" name="uploadPhotoForm" action="upload_photo_proc.do" method="post" enctype="multipart/form-data">
		<h1 class="card-collection-form__title">사진 올리기</h1>
		<div class="card-collection-form__metadata">
			<div class="card-collection-form__metadata__left">
				<div
					class="input-group select-input card-collection-form__metadata__entry">
					<select class="form-control empty" id="ptype" name="ptype">
						<option selected="" value="" disabled="">주거형태
						<option value="원룸&오피스텔">원룸&amp;오피스텔
						<option value="아파트">아파트
						<option value="빌라&연립">빌라&amp;연립
						<option value="단독주택">단독주택
						<option value="사무공간">사무공간
						<option value="상업공간">상업공간
						<option value="기타">기타
						</select>
						<span class="select-input__icon"><svg
							class="icon" width="10" height="10" style="fill: currentColor"
							preserveAspectRatio="xMidYMid meet">
							<path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path></svg></span>
				</div>
				<div
					class="input-group select-input card-collection-form__metadata__entry">
					<select class="form-control empty"  id="pstyle" name="pstyle">
						<option selected="" value="" disabled="">스타일
						<option value="모던">모던
						<option value="북유럽">북유럽
						<option value="빈티지">빈티지
						<option value="내추럴">내추럴
						<option value="프로방스&로맨틱">프로방스&amp;로맨틱
						<option value="클래식&앤틱">클래식&amp;앤틱
						<option value="한국&아시아">한국&amp;아시아
						<option value="유니크">유니크
						</select>
						<span class="select-input__icon"><svg
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
					<li class="card-collection-form__card-section__list__item"><div class="card-collection-form__card-item">
							<div class="card-collection-form__card-item__image-wrap" draggable="true">							
								<!--이미지파일만 선택,다중선택-->
								<label class="input-file-button" for="imageSelector">
									  업로드
								</label>
							 	<input type="file" class="hidden_input" id="imageSelector" name="file1" 
									accept="image/jpeg, image/jpg, image/png" multiple=multiple style="display:none;">
							</div>


							<div class="card-collection-form__card-item__content">
								<div class="card-collection-form__card-item__content__row">
									<div class="input-group select-input">
										<textarea placeholder="사진에 대해서 설명해주세요."
										class="form-control text-area-input" id="pcontent" name="pcontent" style="height: 300px;"></textarea>
									</div>
								</div>
								<div class="card-collection-form__card-item__content__row">
									<textarea placeholder="사용된 인테리어제품을 입력해주세요."
										class="form-control text-area-input" id="pitem" name="pitem" style="height: 100px;"></textarea>
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
					<button type="button" class="button button--color-blue button--size-50 button--shape-4 card-collection-form__footer__submit"
						id="btnUploadPhoto">올리기</button>
				</div>
			</div>
		</div>
	</form>

</body>
</html>