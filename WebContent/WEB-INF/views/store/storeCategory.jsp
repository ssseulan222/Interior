<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/temp/bs.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스토어 카테고리</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/storeCategory.css">
</head>
<body>
	<jsp:include page="../common/header.jsp" />

	<!-- 카테고리 네비게이션 -->
	<div class="container">
		<nav id="nav" class="col-sm-3">
			<ul>
				<li><a href="/store/storeCategory?category=1">가구</a></li>
				<li><a href="/store/storeCategory?category=2">패브릭</a></li>
				<li><a href="/store/storeCategory?category=3">홈데코</a></li>
				<li><a href="/store/storeCategory?category=4">가전</a></li>
				<li><a href="/store/storeCategory?category=5">수납/생활</a></li>
				<li><a href="/store/storeCategory?category=6">주방</a></li>
				<li><a href="/store/storeCategory?category=7">DIY자재</a></li>
				<li><a href="/store/storeCategory?category=8">주문제작</a></li>
				<li><a href="/store/storeCategory?category=9">반려동물</a></li>
			</ul>
		</nav>
		
		
		<!-- 컨텐츠 -->
		<section class="col-sm-9">
			<!-- 현재위치 -->
			<div class="catInfo"><a href="./storeMain">오늘의집 스토어</a></div>
			
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
						<p>전체</p>
					</div>
					<!-- 정렬방식 -->
					<div id="sort">
					
					</div>
				</div>
			</div>
			
			<!-- 상품 타일 리스트 -->
			<div class="productSection col-sm-12">
				<div class="productWrap col-lg-4">
					<div class="product">
						<a href="./storeSelect">
						<img src="<%=request.getContextPath()%>/img/c1.PNG">
						</a>
						<p class="companyName">로제까사${productDTO.companyName}</p>
						<p class="name">국민에펠체어 7colors${productDTO.name}</p>
						<p class="sale"><span class="saleRate">56${productDTO.saleRate}</span><span>%</span>
						<span class="salePrice">19,800${productDTO.salePrice}</span></p>
						<p><span class="start">★</span><span>4.4 ${productDTO.proLiveDTO.grade}</span><span class="review">리뷰 3,143${productDTO.proLiveDTO.review}</span></p>
						
					</div>
				</div>
				<div class="productWrap col-lg-4">
					<div class="product">
					
					</div>
				</div>
				<div class="productWrap col-lg-4">
					<div class="product">
					
					</div>
				</div>
				<div class="productWrap col-lg-4">
					<div class="product">
					
					</div>
				</div>
				<div class="productWrap col-lg-4">
					<div class="product">
					
					</div>
				</div>
				<div class="productWrap col-lg-4">
					<div class="product">
					
					</div>
				</div>
			</div>
			
		</section>
	</div>
	<!-- ---------------------------------------------------------------------------------------------------------------------------------- -->
	

</body>
</html>