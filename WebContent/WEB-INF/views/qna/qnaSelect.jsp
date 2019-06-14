<%@ page import="com.interior.community.qna.QnaDAO" %>
<%@ page import="com.interior.community.qna.QnaDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
	<c:import url="../temp/bootstrap.jsp" />
</head>
<body>

	<div class="container">
		<h1>QnA select page</h1>
	
		<h1>NUM :${dto.num}</h1>
		<h1>TITLE :${dto.title}</h1>
		<h1>CONTENTS :${dto.contents}</h1>
		<h1>WRITER :${dto.writer}</h1>
		<h1>DATE :${dto.reg_date}</h1>
		<h1>HIT :${dto.hit}</h1>
		<%-- <h1>TAG :${dto.tag}</h1> --%>
	</div>
		<div>
			<button type="button" class="btn btn-primary">수정하기</button>
			
			<a href="./qnaDelete.jsp?num=${dto.num}">
				<button type="button" class="btn btn-danger">삭제하기</button>
			</a>
			
		</div>
	
	
</body>
</html>