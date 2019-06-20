<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	margin: 0;
}

.navbar {
	overflow: hidden;
	background-color: #333;
}

.navbar a {
	float: left;
	font-size: 16px;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.subnav {
	float: left;
	overflow: hidden;
}

.subnav .subnavbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.navbar a:hover, .subnav:hover .subnavbtn {
	background-color: red;
}

.subnav-content {
	display: none;
	position: absolute;
	left: 0;
	background-color: red;
	width: 100%;
	z-index: 1;
}

.subnav-content a {
	float: left;
	color: white;
	text-decoration: none;
}

.subnav-content a:hover {
	background-color: #eee;
	color: black;
}
</style>
<script type="text/javascript">
	$(function() {
		var i=0;
		var j=0;
		var k=0;
		$(".subnav").click(function() {
			$(this).children().css("display", "block");
			$(this).children().each(function () {
				if($(this).attr("class") == "subnav-content"){
					if($(this).attr("id")== "1"){
						i=1;
						j=0;
						k=0;
						
					}else if($(this).attr("id") == "2"){
						j=1;
						i=0;
						k=0;
						
					}else if($(this).attr("id")=="3"){
						k=1;
						i=0;
						j=0;
					}
				}
			});
		});
		$(".subnav").hover(function() {
			$(this).children().css("display", "block");
		});
		$(".subnav").mouseout(function() {
			if(i==1){
				$(this).children().each(function () {
					$(".subnav-content").each(function() {
						if($(this).attr("id")!= "1"){
							$(this).css("display", "none");
						}else{
							$(this).css("display", "block");
						}
					});
				});
			}else if(j==1){
				$(this).children().each(function () {
					$(".subnav-content").each(function() {
						if($(this).attr("id")!= "2"){
							$(this).css("display", "none");
						}else{
							$(this).css("display", "block");
						}
					});
				});
			}else if(k==1){
				$(this).children().each(function () {
					$(".subnav-content").each(function() {
						if($(this).attr("id")!= "3"){
							$(this).css("display", "none");
						}
					});
				});
			}else{
				$(this).children().each(function () {
					if($(this).attr("class")=="subnav-content"){
						$(this).css("display", "none");
					}
				});
			}
		});
	});
</script>
</head>
<body>

	<div class="navbar">
		<a href="#home">Home</a>
		<div class="subnav">
			<button class="subnavbtn">
				About <i class="fa fa-caret-down"></i>
			</button>
			<div class="subnav-content" id="1">
				<a href="#company">Company</a> <a href="#team">Team</a> <a
					href="#careers">Careers</a>
			</div>
		</div>
		<div class="subnav">
			<button class="subnavbtn">
				Services <i class="fa fa-caret-down"></i>
			</button>
			<div class="subnav-content" id="2">
				<a href="#bring">Bring</a> <a href="#deliver">Deliver</a> <a
					href="#package">Package</a> <a href="#express">Express</a>
			</div>
		</div>
		<div class="subnav">
			<button class="subnavbtn">
				Partners <i class="fa fa-caret-down"></i>
			</button>
			<div class="subnav-content" id="3">
				<a href="#link1">Link 1</a> <a href="#link2">Link 2</a> <a
					href="#link3">Link 3</a> <a href="#link4">Link 4</a>
			</div>
		</div>
		<a href="#contact">Contact</a>
	</div>

	<div style="padding: 0 16px">
		<h3>Subnav/dropdown menu inside a Navigation Bar</h3>
		<p>Hover over the "about", "services" or "partners" link to see
			the sub navigation menu.</p>
	</div>

</body>
</html>
