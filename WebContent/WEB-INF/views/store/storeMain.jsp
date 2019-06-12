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
	<div id="header">헤더</div>
	<!-- 컨텐츠 -->
	<section>
		<!-- 이미지 슬라이드. width여백없이 100% -->
		<div id="banner" class="container-fluid"></div>

		<!-- 카테고리 -->
		<div class="container">
			<h3>카테고리</h3>
			<!-- 13개 ///// 수정 : 카테고리 사이트에 있는 분류랑 동일하게 함-->
			<div id="category">
				<div class="cat">
					<img src="<%=request.getContextPath()%>/img/1.png">
					<div class="cat-name">가구</div>
				</div>
				<div class="cat">
					<img src="<%=request.getContextPath()%>/img/2.png">
					<div class="cat-name">패브릭</div>
				</div>
				<div class="cat">
					<img src="<%=request.getContextPath()%>/img/3.png">
					<div class="cat-name">홈데코</div>
				</div>
				<div class="cat">
					<img src="<%=request.getContextPath()%>/img/4.png">
					<div class="cat-name">가전</div>
				</div>
				<div class="cat">
					<img src="<%=request.getContextPath()%>/img/5.png">
					<div class="cat-name">수납/생활</div>
				</div>
				<div class="cat">
					<img src="<%=request.getContextPath()%>/img/6.png">
					<div class="cat-name">주방</div>
				</div>
				<div class="cat">
					<img src="<%=request.getContextPath()%>/img/7.png">
					<div class="cat-name">DIY자재</div>
				</div>
				<div class="cat">
					<img src="<%=request.getContextPath()%>/img/8.png">
					<div class="cat-name">주문제작</div>
				</div>
				<div class="cat">
					<img src="<%=request.getContextPath()%>/img/9.png">
					<div class="cat-name">반려동물</div>
				</div>
				<div class="cat">
					<img src="<%=request.getContextPath()%>/img/0.png">
					<div class="cat-name">전체보기</div>
				</div>
				

			</div>
		</div>

		<!-- 인기키워드 -->
		<div class="container">
			<h3>인기키워드</h3>
			<!-- lg : 4*2 // sm : 2*4 -->
			<div id="keyword">
				<div class="keyword">
					인기키워드 1
				</div>
				<div class="keyword">
					인기키워드 2
				</div>
				<div class="keyword">
					인기키워드 3
				</div>
				<div class="keyword">
					인기키워드 4
				</div>
				<div class="keyword">
					인기키워드 5
				</div>
				<div class="keyword">
					인기키워드 6
				</div>
				<div class="keyword">
					인기키워드 7
				</div>
				<div class="keyword">
					인기키워드 8
				</div>
			</div>
		</div>

		<!-- 인기상품 -->
		<div class="container">
			<h3>인기상품</h3>
			<div id="product-nav">
				<!-- 오늘의집에서는 호버해서 밑으로 나오는 토글키로 on/off 가능하지만  해당 프로젝트에서는 버튼 클릭으로 on/off + 정렬 기준 축소-->
				<a>무료배송</a> 
				<select id="sort">
					<option>인기순</option>
					<option>판매순</option>
					<option>낮은가격순</option>
					<option>최신순</option>
					<option>많은리뷰순</option>
				</select>
			</div>
			<div>
				<!-- lg: 4*n(ajax)  // sm : 2*n(ajax) ///// -->
				<div class="product">
					<div>사진</div>
					<div>판매자</div>
					<div>이름</div>
					<div>할인율</div>
					<div>가격</div>
					<div>스크랩, 조회</div>
					<div>최저가/배송</div>
				</div>
				<div class="product">
					<div>사진</div>
					<div>판매자</div>
					<div>이름</div>
					<div>할인율</div>
					<div>가격</div>
					<div>스크랩, 조회</div>
					<div>최저가/배송</div>
				</div>
				<div class="product">
					<div>사진</div>
					<div>판매자</div>
					<div>이름</div>
					<div>할인율</div>
					<div>가격</div>
					<div>스크랩, 조회</div>
					<div>최저가/배송</div>
				</div>
				<div class="product">
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


</body>
</html>