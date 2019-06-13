<%@ page import="com.interior.community.qna.QnaDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<h1>QnA select page</h1>
	
		<h1>NUM :${dto.num}</h1>
		<h1>TITLE :${dto.title}</h1>
		<h1>CONTENTS :${dto.contents}</h1>
		<h1>WRITER :${dto.writer}</h1>
		<h1>REG_DATE :${dto.reg_date}</h1>
		<h1>HIT :${dto.hit}</h1>
		<h1>TAG :${dto.tag}</h1>


	</div>
</body>
</html>