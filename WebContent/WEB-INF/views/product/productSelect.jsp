<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/temp/bs.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${productDTO.name}</title>
<link rel="stylesheet"href="<%=request.getContextPath()%>/css/productSelect.css">
<script src="<%=request.getContextPath()%>/js/productSelect.js"></script>

</head>
<body>

	<!-- 헤더 -->

	<%-- <jsp:include page="../common/header.jsp" /> --%>
	<a href="<%=application.getContextPath()%>/store/storeMain">스토어홈</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="<%=application.getContextPath()%>/store/storeCategory">카테고리</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="<%=application.getContextPath()%>/store/storeRanking">랭킹</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

	<a href="<%=application.getContextPath()%>/seller/sellerJoin">판매자회원가입</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="<%=application.getContextPath()%>/seller/sellerLogin">판매자로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

	<a href="#">일반로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="#">전문가로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

	<p>${sessionScope.sellerDTO.id}님환영합니다</p>
	<a href="<%=application.getContextPath()%>/seller/sellerLogout">로그아웃</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="<%=application.getContextPath()%>/seller/sellerMain">판매자페이지</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

	<hr>
	<!-- 컨텐츠 -->
	<div class="container">

		<div class="col-sm-12 top">
			<!-- 이미지 -->
			<div class="col-sm-6">
				<div class="productImageWrap">
					<div class="productImageDiv">
						<img class="productImage" src="<%=application.getContextPath() %>/productUpload/${productDTO.uploadDTO.fname}" alt="${productDTO.uploadDTO.oname}">
					</div>
				</div>
			</div>
			
			<!-- 제품 기본 정보 -->
			<div class="col-sm-6">
				<div class="brandNameDiv">
					<p class="brandName"><a>${productDTO.brandName}</a></p>
				</div>
				<div class="name">
					<p>${productDTO.name}</p>
				</div>
				<div class="priceInfo">
					<div class="saleRateDiv vertical">
						<span class="saleRate">${productDTO.saleRate}</span><span class="unit">%</span>
					</div>
					<div class="priceDiv vertical">
						<div class="price"><del>${productDTO.price}원</del></div>
						<div class="salePrice">${productDTO.salePrice}<span>원</span></div>
					</div>
				</div>
				<div class="pointDiv">
					<p><span class="point">${productDTO.point}P</span><span class="ment"> 적립해드립니다.</span></p>
				</div>
				
				<hr>
				
				<!-- 배송정보 -->
				<div class="deliveryInfo">
					<div class="delivery">
						<c:if test="${productDTO.delivery == null}">
							<p>일반택배</p>
						</c:if>
						<c:if test="${productDTO.delivery != null}">
							<p>${productDTO.delivery}</p>
						</c:if>
						
					</div>
					<div class="deliveryFeeDiv">
						<c:if test="${productDTO.deliveryFee == null or productDTO.deliveryFee eq '0'}">
							<div class="freeD">
								<img src="<%=application.getContextPath() %>/img/freeD.png" class="freeDImg">
							</div>
						</c:if>
						<c:if test="${productDTO.deliveryFee != null and productDTO.deliveryFee ne '0'}">
							<p class="deliveryFee">배송비 ${productDTO.deliveryFee} 원</p>
						</c:if>
					</div>
				</div>
				
				<hr>
				
				<div class="selectBrandNameDiv">
					<p class="selectBrandName"><a> ${productDTO.brandName} 상품보기 </a></p>
				</div>
				<div class="optionDiv">
					<select class="option">
						<option>제품선택</option>
					</select>
				</div>
				
				<div class="total-price">
					<p class="totalPrice">
				      <span class="order">주문금액</span>
				      <span class="orderPriceWon">
					      	<strong class="orderPrice">${productDTO.salePrice}</strong>
					      	<span class="won">원</span
				      ></span>
				    </p>
				</div>

				
				<div class="btns col-sm-12">
					<div class="btnDiv col-sm-6">
						<button class="btn col-sm-12" id="basket"> 장바구니담기</button>
					</div>
					<div class="btnDiv col-sm-6">
						<button class="btn col-sm-12" id="buy">구매하기</button>
					</div>
				</div>
							
			</div>
			
		</div>
		
		<div class="col-sm-12" id="detail">
			<!-- 메뉴바 -->
			<div data-spy="scroll" data-target=".navbar" id="nav">
				<nav class="navbar navbar-inverse">
					<ul class="nav navbar-nav" id="myNavBar">
						<li><a href="#product">상품정보</a></li>
						<li><a href="#review">리뷰</a></li>
						<li><a href="#order">배송/교환/환불</a>
					</ul>
				</nav>
				
				<div id="product" style="heigt:1000px;">상품정보</div>
				<div id="review" style="heigt:1000px;">리뷰</div>
				<div id="order" style="heigt:1000px;">배송/교환/환불</div>
					
			</div>
		</div>
	
	</div>
	<%-- <jsp:include page="../common/footer.jsp" /> --%>

</body>
</html>