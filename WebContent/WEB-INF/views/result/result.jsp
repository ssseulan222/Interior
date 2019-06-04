<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%--
<%
	String msg=(String)request.getAttribute("msg");
	String path=(String)request.getAttribute("path");
%>
--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript">
	alert("${requestScope.msg}");
	location.href="${path}";	/* 'requestScope.' 생략가능 */
</SCRIPT>

</body>
</html>