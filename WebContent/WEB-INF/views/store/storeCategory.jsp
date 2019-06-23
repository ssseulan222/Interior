<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/bootstrap.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스토어 카테고리</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/storeCategory.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/storeMain.css">
<script src="<%=request.getContextPath()%>/js/storeCategory.js"></script>
</head>
<body>


		<jsp:include page="../common/header.jsp" />
		<%-- <a href="<%=application.getContextPath()%>/store/storeMain">스토어홈</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --%>
		<%-- <a href="<%=application.getContextPath()%>/store/storeCategory?category=1">카테고리</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="<%=application.getContextPath()%>/store/storeRanking">랭킹</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<a href="<%=application.getContextPath()%>/seller/sellerJoin">판매자회원가입</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="<%=application.getContextPath()%>/seller/sellerLogin">판매자로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
		<a href="#">일반로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#">전문가로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
		<p>${sessionScope.sellerDTO.id}님 환영합니다</p>
		<a href="<%=application.getContextPath()%>/seller/sellerLogout">로그아웃</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="<%=application.getContextPath()%>/seller/sellerMain">판매자페이지</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --%>
		 <nav class="navigation-secondary-wrap sticky-top" style="height: auto;">
		    <div class="navigation-secondary__container sticky-content open" data-sticky-enabled="false" style="position: relative;">
		      <div class="navigation-secondary">
		        <div class="navigation-secondary__menu"><ul>
		        <li class="navigation-menu__primary__secondary " id="home">
		    <a href="${pageContext.request.contextPath}/store/storeMain">스토어홈</a>
		  </li>
		
		        <li class="navigation-menu__primary__secondary activee" id="homeparty">
		    <a href="${pageContext.request.contextPath}/store/storeCategory?catergory=1">카테고리</a>
		  </li>
		  <li class="navigation-menu__primary__secondary" id="qna">
		    <a href="${pageContext.request.contextPath}/store/storerRanking">랭킹</a>
		  </li>
		    </ul></div>
		      </div>
		    </div>
		  </nav>
	<!-- 카테고리 네비게이션 -->
	<div class="container">
		<nav id="nav" class="col-sm-3">
			<ul>
				<li><a href="./storeCategory?category=1">가구</a></li>
				<li><a href="./storeCategory?category=2">패브릭</a></li>
				<li><a href="./storeCategory?category=3">홈데코/조명</a></li>
				<li><a href="./storeCategory?category=4">가전</a></li>
				<li><a href="./storeCategory?category=5">수납/생활</a></li>
				<li><a href="./storeCategory?category=6">주방</a></li>
				<li><a href="./storeCategory?category=7">DIY자재</a></li>
				<li><a href="./storeCategory?category=8">시공/주문</a></li>
				<li><a href="./storeCategory?category=9">반려동물</a></li>
			</ul>
		</nav>
		
		
		<!-- 컨텐츠 -->
		<section class="col-sm-9">
			<!-- 현재위치 -->
			<div class="innerCat">
				<p><a href="./storeMain">오늘의집 스토어</a>&nbsp; > &nbsp; <a>${category}</a> </p> 
			</div>
			
			<!-- 필터 -->
			<div class="filterSection">
				<div class="filter">
					<!-- 가격 ?원~?원 -->
					<div id="price">
					
					</div>
					<!-- 유료/무료 배송 -->
					<div id="delivery">
					
					</div>
				</div>
			
				<div class="filter">
					<!-- 카테고리 안에 있는 상품의 개수 -->
					<div id="count">
						<p class="totalCount">전체 ${allProductAr.size()} 개</p>
					</div>
					<!-- 정렬방식 -->
					<div id="sort">
					
					</div>
				</div>
			</div>
			
			<!-- 상품 타일 리스트 -->
			<div class="productSection col-sm-12">
			<c:forEach items="${allProductAr}" var="ar">
					<div class="productWrapDiv col-sm-4">
						<a href="../product/productSelect?num=${ar.num}" class="productSelect"> 
							<div class="productDiv">
								<div class="productImageWrap">
									<div class="productImageDiv">
										<c:if test="${ar.uploadDTO.fname != null}">
											<img class="productImage" src="<%=application.getContextPath() %>/productUpload/${ar.uploadDTO.fname}">
										</c:if>
										<c:if test="${ar.uploadDTO.fname == null}">
											<img class="productImage" src="<%=application.getContextPath() %>/productUpload/empty.png">
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
										
									</div>
								</div>
							</div>
						</a>
					</div>
				</c:forEach>
				
			</div>
			
		</section>
	</div>
	<!-- ---------------------------------------------------------------------------------------------------------------------------------- -->
	

</body>
</html>