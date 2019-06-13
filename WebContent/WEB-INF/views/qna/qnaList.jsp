<%@page import="com.interior.community.qna.QnaDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA List Page</title>
	<c:import url="../temp/bootstrap.jsp" />
</head>
<body>
	<c:import url="../temp/header.jsp" />
	
	<h1>qna list page</h1>
	
	<table class="table table-hover">
		<tr>
			<td>NUM</td>
			<td>TITLE</td>
			<td>CONTENTS</td>
			<td>WRITER</td>
			<td>REG_DATE</td>
			<td>HIT</td>
			<td>TAG</td>
			
		</tr>
		<c:forEach items="${list}" var="dto" >
			<tr>
				<td>${dto.num}</td>
				<td><a href="./qnaSelect?num=${dto.num}">${dto.title}</a></td>
				<td>${dto.contents}</td>
				<td>${dto.writer}</td>
				<td>${dto.reg_date}</td>
				<td>${dto.hit}</td>
				<td>${dto.tag}</td>
							
			</tr>
		</c:forEach>
	</table>
	
	
	
		
</body>
</html>