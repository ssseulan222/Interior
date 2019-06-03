<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집들이 글쓰기</title>
</head>
<body>
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