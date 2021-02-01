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
<script>
$(document).ready(function(){
/* 	var canvas = document.getElementById('Canvas');
	var context = canvas.getContext("2d");

	// Map sprite
	var mapSprite = new Image();
	mapSprite.src = "http://www.retrogameguide.com/images/screenshots/snes-legend-of-zelda-link-to-the-past-8.jpg";

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
	    // Clear Canvas
	    context.fillStyle = "#000";
	    context.fillRect(0, 0, canvas.width, canvas.height);

	    // Draw map
	    // Sprite, X location, Y location, Image width, Image height
	    // You can leave the image height and width off, if you do it will draw the image at default size
	    context.drawImage(mapSprite, 0, 0, 700, 700);

	    // Draw markers
	    for (var i = 0; i < Markers.length; i++) {
	        var tempMarker = Markers[i];
	        // Draw marker
	        context.drawImage(tempMarker.Sprite, tempMarker.XPos, tempMarker.YPos, tempMarker.Width, tempMarker.Height);

	        // Calculate postion text
	        var markerText = "Postion (X:" + tempMarker.XPos + ", Y:" + tempMarker.YPos;

	        // Draw a simple box so you can see the position
	        var textMeasurements = context.measureText(markerText);
	        context.fillStyle = "#666";
	        context.globalAlpha = 0.7;
	        context.fillRect(tempMarker.XPos - (textMeasurements.width / 2), tempMarker.YPos - 15, textMeasurements.width, 20);
	        context.globalAlpha = 1;

	        // Draw position above
	        context.fillStyle = "#000";
	        context.fillText(markerText, tempMarker.XPos, tempMarker.YPos);
	    }
	};

	setInterval(main, (1000 / 60)); // Refresh 60 times a second
	
 */
	 
	 	function handleImageView(files){		
	 		var file = files[0];
	 
	 		if(!file.type.match(/image.*/)){
	 			alert("not image file!");
			}			
	 		var reader = new FileReader();
	 		
	 		reader.onload = function(e){
	 			
	 			var img = new Image();
	 			img.onload = function(){
	 				var ctx = document.getElementById("cview").getContext("2d");
	 				ctx.drawImage(img,0,0,480,320);
	 			}
	 			img.src = e.target.result;
	 		}
	 		
	 		reader.readAsDataURL(file);
	 	}
	 



}); //ready

</script>
</head>
<body>


<input type="file" id="inputfile" onchange="handleImageView(this.files)">
<canvas id="cview" width="480" height="320" style="border:solid 3px #CCC;"></canvas>

									
<!-- <canvas id="Canvas" width="700" height="700"></canvas> -->

</body>
</html>