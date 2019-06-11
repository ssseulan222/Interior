<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/common/bs.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/sellerLogin.css">
<title>판매자 로그인</title>
</head>
<body>
	<div class="loginForm">
		<div id="title">
			<h4>스토어 관리센터</h4>
			<h1>${sessionScope.id} 탈퇴</h1>
		</div>
		<div id="contentsDiv">
			<form action="./sellerDelete" method="post" id="deleteF">
				<div class="loginDiv">
					<input type="password" id="pw" class="login-input" placeholder="비밀번호">
				</div>
				<div class="loginDiv">
					<input type="password" id="pw2" name="pw" title="pw" class="login-input" placeholder="비밀번호 재입력">
				</div>
				<div class="btnDiv">
					<!-- <button id="loginBtn" class="button" onclick="delete()">탈퇴</button> -->
					<input type="button" id="loginBtn" class="button" value="탈퇴">
				</div>
			</form>
		</div>
	</div>
	
	<script type="text/javascript">
	$('#loginBtn').click(function() {
		
		if($('#pw') != $('#pw2')){
			alert("다름");
			$('#pw').val("");
			$('#pw2').val("");
			$('#pw').focus();
			return;
		}/*  else if(){
			
		} */

	});
	
	</script>
</body>
</html>