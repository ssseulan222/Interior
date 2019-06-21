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


	<%-- <jsp:include page="../common/header.jsp" /> --%>
			<a href="<%=application.getContextPath()%>/store/storeMain">스토어홈</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="<%=application.getContextPath()%>/store/storeCategory">카테고리</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="<%=application.getContextPath()%>/store/storeRanking">랭킹</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<a href="<%=application.getContextPath()%>/seller/sellerJoin">판매자회원가입</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="<%=application.getContextPath()%>/seller/sellerLogin">판매자로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
		<a href="#">일반로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#">전문가로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
		<p>${sessionScope.sellerDTO.id}님 환영합니다</p>
		<a href="<%=application.getContextPath()%>/seller/sellerLogout">로그아웃</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="<%=application.getContextPath()%>/seller/sellerMain">판매자페이지</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


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
						<option value="r">최신순</option>
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
			<div class="col-sm-12 productListDiv"> 
				
				<c:forEach items="${requestScope.ar}" var="ar">
					<div class="productWrapDiv col-sm-3">
						<a href="../product/productSelect?num=${ar.num}" class="productSelect"> 
							<div class="productDiv">
								<div class="productImageWrap">
									<div class="productImageDiv">
										<c:if test="${ar.uploadDTO.fname != null}">
											<img class="productImage" src="<%=application.getContextPath() %>/productUpload/${ar.uploadDTO.fname}">
										</c:if>
										<c:if test="${ar.uploadDTO.fname == null}">
											<img class="productImage" src="<%=application.getContextPath() %>/img/empty.png">
										</c:if>
										
		
									</div>
								</div>
								<div class="productInfo">
									<!-- 제품명 -->
									<p class="brandName">${ar.brandName}</p>
									<p class="name">${ar.name}</p>
									
									<div class="span">
										<!-- 세일률 -->	
										<span><span class="saleRate">${ar.saleRate}%</span>
										<!-- 세일가 -->
										<span class="salePrice">${ar.salePrice}원</span></span>
									</div>
									
									<div class="span">
										<!-- 별점 -->
										<span><span class="grade">★</span> <span class="gradePoint">???</span></span>
										
										<!-- 리뷰수 -->
										<span><span class="review">리뷰</span> <span class="reviewCount">???</span></span>
									</div>
									
									<div>
										
											<!-- 무료배송 / 유료배송 -->
											<c:if test="${ar.deliveryFee eq '0'}">
												<span class="saleDelivery1">무료배송</span>
											</c:if>				
											<c:if test="${ar.deliveryFee ne '0'}">
												<span class="deli">배송 : </span><span class="saleDelivery2">${ar.deliveryFee}원</span>
											</c:if>
											
										
										<div class="stock">재고 : <span class="stockCount">???</span>개</div>
									</div>
								</div>
							</div>
						</a>
					</div>
				</c:forEach>
				
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

	

	<%-- <jsp:include page="../common/footer.jsp" /> --%>


</body>
</html>