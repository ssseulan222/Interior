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
			<h4>전문가센터</h4>
			
		</div>
		<div id="contentsDiv">
			<form action="./ExpertLogin" method="post">
				<div class="loginDiv">
					<input type="text" id="id" name="email" title="id" class="login-input" placeholder="아이디">
				</div>
				<div class="loginDiv">
					<input type="password" id="pw" name="password" title="pw" class="login-input" placeholder="비밀번호">
				</div>
				<div class="btnDiv">
					<button id="loginBtn" class="button">로그인</button>
				</div>
			</form>
				<div id="rePwDiv">
					<a id="rePw">비밀번호 재설정</a>
				</div>
				<div class="btnDiv">
					<button class="button" id="sellerJoinBtn">전문가 가입신청</button>
					<button class="button" id="sellerJoinBtn">고객센터 연결</button>
				</div>
				
		</div>
	</div>
	
	<script type="text/javascript">
		var id=document.getElementById('id');
		id.focus();
	</script>
</body>
</html>