<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집들이 글쓰기</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/homepartyWrite.css">

</head>
<body>
	<div id="header_top">
	
		<div class="header">
			<a href="">
			<img class="header_img" alt="" src="/img/common-logo.png">
			</a>
		</div>
		
		<div class="header_align">
			<div class="title">전체정렬</div>
			<!-- <div class="title_icon_left" data-align="0">왼쪽</div>
			<div class="title_icon_center" data-align="1">가운데</div>
			<div class="title_icon_right" data-align="2">오른쪽</div>
			 -->
		</div>
		
		<div id="contents">
			<div id="image_upload"></div>
		
		
		</div> <!-- end contents -->
		
		
		
	</div> <!-- end header_top -->

	<!-- 커버사진 추가하기 -->
	<div class="image_upload">
		<label for="file">커버사진 추가하기</label>
	    <input type="file" class="form-control" id="f1" name="f1">
	</div> <!-- end image_upload -->

	<div id="title">
		<div class="category">온라인 집들이</div>
		<input type="text" placeholder="제목을 입력해주세요." maxlength="30" size="30">
		<div id="title_count">
			<span>0</span>
			"/30"
		</div>
		<div class="writer_image">
			<img alt="" src="/img/m1.png">
			<div class="nickname"></div>
		</div>
	</div> <!-- end title -->
	
	
	
	
</body>
</html>