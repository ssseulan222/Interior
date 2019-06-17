<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/temp/bs.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${productDTO.name}</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/storeSellect.css">

</head>
<body>

	<!-- 헤더 -->

	<jsp:include page="../common/header.jsp" />
	
	
	<!-- 컨텐츠 -->
	<div class="container">
	
	
	<!-- 이미지 -->
	<div>
		
	</div>
	
	<!-- 정보 -->
	<div>
		<!-- 판매정보 -->
		<div>
			<p class="brandName">${productDTO.brandName}레이디가구</p>
			<h2 class="name">${productDTO.name}올라 접이식 원목테이블 2colors</h2>
		</div>
		
		<!-- 유저의 영향 받는 정보 -->
		<div>
			<div>
				<p><span class="star">★</span><span>${productDTO.proLive.review}개 리뷰</span></p>
			</div>
			<div>
				<div>스크랩</div>
				<div>${productDTO.proLive.scrap}</div>
			</div>
			<div>
				<div>공유</div>
				<div>${productDTO.proLive.shared}</div>
			</div>
		</div>
		
		<!-- 가격정보 -->
		<div>
			<div>
				<p><mark>63 ${productDTO.saleRate}</mark><span>%</span></p>
			</div>
			<div>
				<del>${productDTO.price}99,000원</del>
				<strong>${productDTO.salePrice}36,900원</strong>
			</div>
			<div>
				<p><span>${productDTO.point}369P</span>적립해드립니다.</p>
			</div>
		</div>
		<hr>
		<!-- 배송정보 -->
		<div>
			<div>
				<p>${productDTO.delivery}일반택배</p>
			</div>
			<div>
				<p>${productDTO.deliveryFee}무료택배</p>
			</div>
		</div>
		<hr>
		<!-- 판매브랜드 , 옵션 선택 -->
		<div>
			<p>${productDTO.brandName} 상품보기</p>
		</div>
		<div>
			<select>
				<option>${productDTO.option1}상품</option>				
			</select>
			
			<select>
				<option>${productDTO.option2}색상</option>				
			</select>
		</div>
		<!-- 주문목록 -->
		<div>
		
		</div>
		<div>
			<p>주문금액<span>원</span></p>
		</div>
		<!-- 버튼 -->
		<div class="buttons">
          <button class="basketBtn">장바구니 담기</button>
          <button class="butBtn">구매하기</button>
  		</div>
	</div>
	
	<section class="col-sm-12">
	
	</section>
	
	</div>
	
	<jsp:include page="../common/footer.jsp" />

</body>
</html>