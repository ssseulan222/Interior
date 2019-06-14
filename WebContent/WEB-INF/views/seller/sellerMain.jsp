<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/temp/bs.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매자 메인</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/sellerMain.css">
</head>
<body>
	<div class="container header">
		<jsp:include page="../common/header.jsp" />

	</div>

	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<h1>${sessionScope.sellerDTO.id}페이지</h1>
<br><br><br>
		<div class="sellerNav">
			<a href="../product/productInsert">상품등록하기</a>&nbsp;&nbsp;&nbsp;
		</div>

		<div class="productList">
			<h3>상품 리스트</h3>
			<div>
			<br>
				<select>
					<option>판매순</option>
					<option>최신순</option>
				</select>
			</div>
		<br>
		<br>
		<br>
		</div>
		<!-- 상품리스트 -->
		
		<div>
			
		</div>
		
		
		
		
		
		<div>
		
			
		</div>
		<br><br><br>
		<div>
			<a href="./sellerUpdate">회원수정</a>&nbsp;&nbsp;&nbsp; <a
				href="./sellerDelete">회원탈퇴</a>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>