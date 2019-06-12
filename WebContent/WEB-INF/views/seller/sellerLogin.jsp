<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/temp/bs.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/sellerLogin.css">
<script src="<%=request.getContextPath()%>/js/sellerLogin.js"></script>
<title>판매자 로그인</title>
</head>
<body>
	<div class="loginForm">
		<div id="title">
			<h4>스토어 관리센터</h4>
			<h1>판매자 로그인</h1>
		</div>
		<div id="contentsDiv">
			<form action="./sellerLogin" method="post">
				<div class="loginDiv">
					<input type="text" id="id" name="id" title="id" class="login-input" placeholder="아이디">
				</div>
				<div class="loginDiv">
					<input type="password" id="pw" name="pw" title="pw" class="login-input" placeholder="비밀번호">
				</div>
				<div class="btnDiv">
					<button id="loginBtn" class="button">로그인</button>
				</div>
			</form>
				<div id="rePwDiv">
					<a id="rePw">비밀번호 재설정</a>
				</div>
				<div class="btnDiv">
					<button class="button" id="sellerJoinBtn">판매자 가입신청</button>
				</div>
		</div>
	</div>
</body>
</html>