<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>프로젝트홈</title>
</head>
<body>
<div>
<jsp:include page="./common/header.jsp" />
</div>
	<div style="width: 50%; margin-left: 500px">
		<br>
		<br>
		<br>
		<br>
		<br> 
		<a href="<%=application.getContextPath()%>/store/storeMain">스토어홈</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="<%=application.getContextPath()%>/store/storeCategory">카테고리</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="<%=application.getContextPath()%>/store/storeRanking">랭킹</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="<%=application.getContextPath()%>/expert/ExpertMain">전문가메인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<br>
		<br>
		<br>
		<br>
		<br>
		<c:if test="${sessionScope.sellerDTO.id == null}"> 
		<a href="<%=application.getContextPath()%>/seller/sellerJoin">판매자회원가입</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="<%=application.getContextPath()%>/seller/sellerLogin">판매자로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<br><br><br>
		<a href="#">일반로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#">전문가로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</c:if>
		<c:if test="${sessionScope.sellerDTO.id != null}">
		<p>${sessionScope.sellerDTO.id}님 환영합니다</p>
		<a href="<%=application.getContextPath()%>/seller/sellerLogout">로그아웃</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="<%=application.getContextPath()%>/seller/sellerMain">판매자페이지</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</c:if>
		
	</div>
</body>
</html>