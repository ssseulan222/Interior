<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/common/bs.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매자 메인</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/sellerMain.css">
</head>
<body>
<div class="container header">
	헤더
</div>
<div class="container">
	<div class="sellerNav">
		<a href="./sellerWrite">상품등록하기</a>&nbsp;&nbsp;&nbsp;
	</div>
	
	<div class="productList">
	<h3>상품 리스트</h3>
	<select>
		<option>판매순</option>
		<option>최신순</option>
	</select>
	</div>
</div>
</body>
</html>