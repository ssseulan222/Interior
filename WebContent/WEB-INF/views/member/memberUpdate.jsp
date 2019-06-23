<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/MyPageProfiletop.css" type="text/css">
<c:import url="../common/header.jsp" />
<style type="text/css">
	
</style>
<script type="text/javascript">

</script>
</head>
<body>
	<div class="user-show-layout">
<div class="wrap-nav">
	<div class="myhome-nav">
		<nav class="page-myhome-nav">
			<ul style="transform : translateX(0px);">
				<li class="page-nav-item"><a class="active" href="./memberMyHome">프로필</a></li>
				<li class="page-nav-item"><a href="./memberMyShopping">나의쇼핑</a></li>
				<li class="page-nav-item"><a href="./memberMyReview">나의리뷰</a></li>
				<li class="page-nav-item"><a href="./memberUpdate">설정</a></li>
			</ul>
		</nav>
		<nav class="page-myhome-nav">
			<ul style="transform : translateX(0px);">
				<li class="page-nav-item" style="font-size: 15px;"><a href="./memberUpdate">회원 수정</a></li>
				<li class="page-nav-item" style="font-size: 15px;"><a href="./memberDelete">탈퇴</a></li>
			</ul>
		</nav>
	</div>
</div>
</div>
	
	
</body>
</html>