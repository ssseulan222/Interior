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


	<jsp:include page="../common/header.jsp" />


	<div class="container">
	
		<div id="top">
			<div id="whose">
				<h1>${sessionScope.sellerDTO.id}님의 판매센터</h1>
			</div>
			<div class="sellerNav">
				<a href="../product/productInsert"><span class="topBtn">상품등록하기</span></a>
				<a href="./sellerUpdate"><span class="topBtn">회원정보수정</span></a>
			</div>
			
		</div>	
		
		<hr>
		
		<div class="productList" >
			<div>
				<h3>제품 리스트</h3>
				<div>
					<select>
						<option>판매순</option>
						<option>최신순</option>
						<option>판매순</option>
					</select>
					<a>더보기</a>
				</div>
			</div>
			<div>
			
			</div>
		</div>
		
		
		<hr>
		
		<div>
			<div>
				<h3>문의내역</h3>
				<a>더보기</a>
			</div>
		</div>
	
	</div>

	

	<jsp:include page="../common/footer.jsp" />


</body>
</html>