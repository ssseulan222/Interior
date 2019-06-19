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
						<option value="new">최신순</option>
						<option value="sell">판매순</option>
						<option value="popular">인기순</option>
					</select>
					<a>더보기</a>
				</div>
			</div>
			<!-- 판매가자 올린 제품 최신순 배열 -->
			<!-- 
				해당판매자의 모든 물품을 최신순으로 6개만 보이고 싶음.
				해당판매자, 모든 제품을 어떻게 파라미터로 보내야하는지 모르겠음	
			 -->
			<div>
				
				<%-- <c:forEach begin="0" end="5" items="${sessionScope.ar}" var="ar"> --%>
					<div>
						<p>${ar.name}</p>				
					</div>
				<%-- </c:forEach> --%>
				
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