<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/temp/bs.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${productDTO.name}</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/storeSellect.css">

</head>
<body>

	<!-- 헤더 -->

	<jsp:include page="../common/header.jsp" />

</body>
</html>