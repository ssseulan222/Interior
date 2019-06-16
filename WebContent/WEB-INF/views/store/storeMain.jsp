<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/temp/bs.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스토어홈</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/storeMain.css">

</head>
<body>

	<!-- 헤더 -->

	<jsp:include page="../common/header.jsp" />

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
				<a href="./storeCategory?category=1"><span class="cat"> <img
						src="<%=request.getContextPath()%>/img/c1.PNG"><br> <span
						class="cat-name">가구</span>
				</span></a> <a><span class="cat"> <img
						src="<%=request.getContextPath()%>/img/c2.PNG"><br> <span
						class="cat-name">패브릭</span>
				</span></a> <a><span class="cat"> <img
						src="<%=request.getContextPath()%>/img/c3.PNG"><br> <span
						class="cat-name">홈데코</span>
				</span></a> <a><span class="cat"> <img
						src="<%=request.getContextPath()%>/img/c4.PNG"><br> <span
						class="cat-name">가전</span>
				</span></a> <a><span class="cat"> <img
						src="<%=request.getContextPath()%>/img/c5.PNG"><br> <span
						class="cat-name">수납/생활</span>
				</span></a> <a><span class="cat"> <img
						src="<%=request.getContextPath()%>/img/c6.PNG"><br> <span
						class="cat-name">주방</span>
				</span></a> <a><span class="cat"> <img
						src="<%=request.getContextPath()%>/img/c7.PNG"><br> <span
						class="cat-name">DIY자재</span>
				</span></a> <a><span class="cat"> <img
						src="<%=request.getContextPath()%>/img/c8.PNG"><br> <span
						class="cat-name">주문제작</span>
				</span></a> <a><span class="cat"> <img
						src="<%=request.getContextPath()%>/img/c9.PNG"><br> <span
						class="cat-name">반려동물</span>
				</span></a>

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
				<h3 class="popular">인기상품</h3>

				<!-- 오늘의집에서는 호버해서 밑으로 나오는 토글키로 on/off 가능하지만  해당 프로젝트에서는 버튼 클릭으로 on/off + 정렬 기준 축소-->
				<a class="sort">더보기</a>
				<select class="sort">
					<option>인기순</option>
					<option>판매순</option>
					<option>낮은가격순</option>
					<option>최신순</option>
					<option>많은리뷰순</option>
				</select> <a class="sort">무료배송</a>

			</div>
			<div>
				<!-- lg: 4*n(ajax)  // sm : 2*n(ajax) ///// -->
				<div class="product col-sm-3">
					<div>사진</div>
					<div>판매자</div>
					<div>이름</div>
					<div>할인율</div>
					<div>가격</div>
					<div>스크랩, 조회</div>
					<div>최저가/배송</div>
				</div>
				<div class="product col-sm-3">
					<div>사진</div>
					<div>판매자</div>
					<div>이름</div>
					<div>할인율</div>
					<div>가격</div>
					<div>스크랩, 조회</div>
					<div>최저가/배송</div>
				</div>
				<div class="product col-sm-3">
					<div>사진</div>
					<div>판매자</div>
					<div>이름</div>
					<div>할인율</div>
					<div>가격</div>
					<div>스크랩, 조회</div>
					<div>최저가/배송</div>
				</div>
				<div class="product col-sm-3">
					<div>사진</div>
					<div>판매자</div>
					<div>이름</div>
					<div>할인율</div>
					<div>가격</div>
					<div>스크랩, 조회</div>
					<div>최저가/배송</div>
				</div>
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