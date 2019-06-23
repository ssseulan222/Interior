<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../common/bootstrap.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스토어홈</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/storeMain.css">

</head>
<body>

	<!-- 헤더 -->

<%-- 	<jsp:include page="../common/header.jsp" /> --%>
<c:import url="../common/header.jsp" />

	<!-- 컨텐츠 -->
	<section>
		<!-- 이미지 슬라이드. width여백없이 100% -->
		<div id="banner" class="container-fluid w3-content">
			<div class="mySlides w3-container"
				style="width: 100%; height: 100%; background-color: #D1D1D1; text-align: center;">
				<img src="<%=request.getContextPath()%>/img/s1.PNG"
					style="width: 55%; height: auto; line-height: 375px;">
			</div>
			<div class="mySlides w3-container"
				style="width: 100%; height: 100%; background-color: #E3F3F5; text-align: center;">
				<img src="<%=request.getContextPath()%>/img/s2.PNG"
					style="width: 50%; height: auto; line-height: 375px;">
			</div>
			<div class="mySlides w3-container"
				style="width: 100%; height: 100%; background-color: #C4E4F2; text-align: center;">
				<img src="<%=request.getContextPath()%>/img/s3.PNG"
					style="width: 55%; height: auto; line-height: 375px;">
			</div>
		</div>

		<!-- 카테고리 -->
		<div class="container">
			<h3>카테고리</h3>
			<!-- 13개 ///// 수정 : 카테고리 사이트에 있는 분류랑 동일하게 함-->
			<div id="category">
				<a href="./storeCategory?category=1">
					<span class="cat"> 
						<img src="<%=request.getContextPath()%>/img/c1.PNG">
						<br>
						<span class="cat-name">가구</span>
					</span>
				</a> 
				<!-- ---------------------------------------------------------- -->
				<a href="./storeCategory?category=2">
					<span class="cat"> 
						<img src="<%=request.getContextPath()%>/img/c2.PNG">
						<br> 
						<span class="cat-name">패브릭</span>
					</span>
				</a> 
				<!-- ---------------------------------------------------------- -->
				<a href="./storeCategory?category=3">
					<span class="cat"> 
						<img src="<%=request.getContextPath()%>/img/c3.PNG">
						<br> 
						<span class="cat-name">홈데코 </span>
					</span>
				</a> 
				<!-- ---------------------------------------------------------- -->
				<a href="./storeCategory?category=4">
					<span class="cat"> 
					<img src="<%=request.getContextPath()%>/img/c4.PNG">
					<br> 
					<span class="cat-name">가전</span>
					</span>
				</a> 
				<!-- ---------------------------------------------------------- -->
				<a href="./storeCategory?category=5">
					<span class="cat"> 
						<img src="<%=request.getContextPath()%>/img/c5.PNG">
						<br> 
						<span class="cat-name">수납/생활 </span>
					</span>
				</a> 
				<!-- ---------------------------------------------------------- -->
				<a href="./storeCategory?category=6">
					<span class="cat"> 
						<img src="<%=request.getContextPath()%>/img/c6.PNG">
						<br> 
						<span class="cat-name">주방</span>
					</span>
				</a> 
				<!-- ---------------------------------------------------------- -->
				<a href="./storeCategory?category=7">
					<span class="cat"> 
						<img src="<%=request.getContextPath()%>/img/c7.PNG">
						<br> 
						<span class="cat-name">DIY자재</span>
					</span>
				</a> 
				<!-- ---------------------------------------------------------- -->
				<a href="./storeCategory?category=8">
					<span class="cat"> 
						<img src="<%=request.getContextPath()%>/img/c8.PNG">
						<br> 
						<span class="cat-name">주문제작</span>
					</span>
				</a> 
				<!-- ---------------------------------------------------------- -->
				<a href="./storeCategory?category=9">
					<span class="cat"> 
						<img src="<%=request.getContextPath()%>/img/c9.PNG">
						<br> 
						<span class="cat-name">반려동물</span>
					</span>
				</a>

			</div>
		</div>

		<!-- 인기키워드 -->
		<div class="container">
			<h3 class="popkey">인기키워드</h3>
			<!-- lg : 4*2 // sm : 2*4 -->
			<div id="keyword">
				<div class="keyword col-sm-3">
					<img src="<%=request.getContextPath()%>/img/k1.PNG">
				</div>
				<div class="keyword col-sm-3">
					<img src="<%=request.getContextPath()%>/img/k2.PNG">
				</div>
				<div class="keyword col-sm-3">
					<img src="<%=request.getContextPath()%>/img/k3.PNG">
				</div>
				<div class="keyword col-sm-3">
					<img src="<%=request.getContextPath()%>/img/k4.PNG">
				</div>
			</div>
		</div>

		<!-- 인기상품 -->
		<div class="container">
			<div class="subject">
				<h3 class="popular">최신상품</h3>

				<!-- 오늘의집에서는 호버해서 밑으로 나오는 토글키로 on/off 가능하지만  해당 프로젝트에서는 버튼 클릭으로 on/off + 정렬 기준 축소-->
				<a class="sort" href="./storeCategory?category=1">더보기</a>
				<select class="sort">
					<option>최신순</option>
					<option>인기순</option>
					<option>판매순</option>
					<option>낮은가격순</option>
					<option>많은리뷰순</option>
				</select> <a class="sort">무료배송</a>

			</div>
			
			<!-- 상품리스트불러오기 -->
			<div class="col-sm-12 productListDiv"> 
				
				<c:forEach items="${allProductAr}" var="ar">
					<div class="productWrapDiv col-sm-3">
						<a href="../product/productSelect?num=${ar.num}" class="productSelect"> 
							<div class="productDiv">
								<div class="productImageWrap">
									<div class="productImageDiv">
										<c:if test="${ar.uploadDTO ne null}">
											<img class="productImage" src="<%=application.getContextPath() %>/productUpload/${ar.uploadDTO.fname}">
										</c:if>
										<c:if test="${ar.uploadDTO eq null}">
											<img class="productImage" src="<%=application.getContextPath() %>/product/empty.png">
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
				
				
				
		</div>

			
	</section>

	<!-- 푸터 -->

	<script>
		var slideIndex = 0;
		carousel();

		function carousel() {
			var i;
			var x = document.getElementsByClassName("mySlides");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			slideIndex++;
			if (slideIndex > x.length) {
				slideIndex = 1
			}
			x[slideIndex - 1].style.display = "block";
			setTimeout(carousel, 3000);
		}
	</script>
</body>
</html>