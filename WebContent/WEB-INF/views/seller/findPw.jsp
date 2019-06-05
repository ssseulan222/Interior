<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/common/bs.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/findPw.css">
<script src="<%=request.getContextPath()%>/js/findPw.js"></script>
<title>비밀번호 찾기</title>
</head>
<body>
	<div class="loginForm">
		<div id="title">
			<h4>스토어 관리센터</h4>
			<h2>판매자 비밀번호 찾기</h2>
		</div>
		<div id="contentsDiv">
			<form action="/sellerLogin" method="post">
				<div class="loginDiv">
					<input type="text" id="id" name="id" title="id" class="login-input" placeholder="아이디">
				</div>
			
				<div class="btnDiv">
					<input type="button" value="아이디로 비밀번호 찾기" id="loginBtn" class="button">
					<p> 문의사항은 abc@naver.com 으로 연락주세요. </p>
				</div>
			</form>
			
		</div>
	</div>
</body>
</html>