<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="login">
		<form action="./ExpertLogin" id="frm" method="post">
			<div><span>오늘의집</span><span>전문가센터</span></div>
			<input type="text" id="email" name="email">
			<input type="password" id="password" name="password">
			<button id="login">로그인</button>
			<span><a href="#">비밀번호 재설정</a></span>
			<span><a href="#">전문가 가입신청</a></span>
			<span><a href="#">고객센터 연결</a></span>
		</form>
	</div>
	<footer>
		<span id="foot">ⓒBucketplace Inc. All Rights Reserved</span>
	</footer>
</body>
</html>