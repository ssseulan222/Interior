<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/common/bs.jsp" />
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
					<input type="submit" value="로그인" id="loginBtn" class="button">
				</div>
			</form>
				<div id="rePwDiv">
					<a id="rePw">비밀번호 재설정</a>
				</div>
				<div class="btnDiv">
					<input type="button" value="판매자 가입신청" class="button" id="sellerJoinBtn">
				</div>
		</div>
	</div>
</body>
</html>