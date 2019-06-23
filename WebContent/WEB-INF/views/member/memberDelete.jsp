<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../common/bootstrap.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/sellerLogin.css">
</head>
<body>
<div class="loginForm">
		<div id="title">
			<h4>회원탈퇴</h4>
			<h1>${sessionScope.m.email} 탈퇴</h1>
		</div>
		<div id="contentsDiv">
			<form action="./memberDelete" method="post" id="deleteF">
				<div class="loginDiv">
					<input type="password" id="pw" class="login-input" placeholder="비밀번호" required="required">
				</div>
				<div class="loginDiv">
					<input type="password" id="pw2" name="pw" title="pw" class="login-input" placeholder="비밀번호 재입력" required="required">
				</div>
				<div class="btnDiv">
					<input type="submit" id="loginBtn" class="button" value="탈퇴하기">
				</div>
			</form>
		</div>
	</div>
	
	<script type="text/javascript">
	
	$('#loginBtn').click(function() {
		
		if($('#pw').val()==$('#pw2').val()){
			
			if($('#pw').val()=="${sessionScope.m.pw}"){
				
				$(this).submit();
				
			} else {
				alert('비밀번호가 달라요11');
				return false;
				
				
			}
			
		} else {
			alert('비밀번호가 달라요1');
			return false;
		}
			
	});
	
	</script>
</body>
</html>