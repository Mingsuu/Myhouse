<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>test</title>
<script src="http://localhost:9000/myhouse/js/jquery-3.5.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
    input[type="file"] {
  display: block;
}
.imageThumb {
  max-height: 75px;
  border: 2px solid;
  padding: 1px;
  cursor: pointer;
}
.pip {
  display: inline-block;
  margin: 10px 10px 0 0;
}
.remove {
  display: block;
  background: #444;
  border: 1px solid black;
  color: white;
  text-align: center;
  cursor: pointer;
}
.remove:hover {
  background: white;
  color: black;
}
    </style>
    <script type="text/javascript">
    $(document).ready(function() {
    	  if (window.File && window.FileList && window.FileReader) {
    	    $("#files").on("change", function(e) {
    	      var files = e.target.files,
    	        filesLength = files.length;
    	      for (var i = 0; i < filesLength; i++) {
    	        var f = files[i]
    	        var fileReader = new FileReader();
    	        fileReader.onload = (function(e) {
    	          var file = e.target;
    	          $("<span class=\"pip\">" +
    	            "<img class=\"imageThumb\" src=\"" + e.target.result + "\" title=\"" + file.name + "\"/>" +
    	            "<br/><span class=\"remove\">Remove image</span>" +
    	            "</span>").insertAfter("#files");
    	          $(".remove").click(function(){
    	            $(this).parent(".pip").remove();
    	          });
    	          
    	          // Old code here
    	          /*$("<img></img>", {
    	            class: "imageThumb",
    	            src: e.target.result,
    	            title: file.name + " | Click to remove"
    	          }).insertAfter("#files").click(function(){$(this).remove();});*/
    	          
    	        });
    	        fileReader.readAsDataURL(f);
    	      }
    	    });
    	  } else {
    	    alert("Your browser doesn't support to File API")
    	  }
    	});

    </script>
</head>
<body>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<div class="field" align="left">
  <h3>Upload your images</h3>
  <input type="file" id="files" name="files[]" multiple />
</div>

									
<!-- <canvas id="Canvas" width="700" height="700"></canvas> -->

</body>
</html>