<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>StoreMain</title>
</head>
<body>
	<!-- 이미지 슬라이드. width여백없이 100% -->
	<div>
	
	</div>

	<!-- 오늘의 딜. 카테고리 없이 '더보기' 버튼 클릭으로만 이동 가능 -->
	<div>
		<div>
			<h3>오늘의 딜</h3>
			<a>더보기</a>
		</div>
		<div>
			<!-- lg: 4*1 / sm : 3*1-->
		</div>
	</div>

	<!-- 카테고리 -->
	<div>
		<h3>카테고리</h3> <!-- 13개 -->
		<div>	<!-- lg : 10*1 + 이동버튼  // md : 5*2 + 더보기 (ajax) // sm : 4*2 + 더보기 + 오늘의 딜과 순서 변경-->
		
		</div>
	</div>

	<!-- 인기키워드 -->
	<div>
		<h3>인기키워드</h3> <!-- lg : 4*2 // sm : 2*4 -->

	</div>

	<!-- 인기상품 -->
	<div>
		<div> <!-- 오늘의집에서는 호버해서 밑으로 나오는 토글키로 on/off 가능하지만  해당 프로젝트에서는 버튼 클릭으로 on/off + 정렬 기준 축소-->
			<a>무료배송</a> 
			<select>
				<option>인기순</option>
				<option>판매순</option>
				<option>낮은가격순</option>
				<option>최신순</option>
				<option>많은리뷰순</option>
			</select>
		</div>
		<div> 	<!-- lg: 4*n(ajax)  // sm : 2*n(ajax) -->
		
		</div>
	
	</div>

</body>
</html>