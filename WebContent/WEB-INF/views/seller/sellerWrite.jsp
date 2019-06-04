<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/common/bs.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/sellerWrite.css">
<title>상품등록페이지</title>
<script src="<%=request.getContextPath()%>/js/sellerWrite.js"></script>
</head>
<body>

<div class="container header">
	헤더
</div>
	<div class="container">
		<h3>상품등록</h3>
		<form action="./sellerWrite" method="post">
			<table>
				<tbody>
					<tr>
						<td>제품명</td>
						<td><input type="text" id="name" placeholder="제품 이름을 입력하세요." name="name"></td>
					</tr>
					<tr>
						<td>제품설명</td>
						<td><!-- <textarea rows="5" cols="" id="info" name="info" placeholder="재품 설명을 입력하세요."></textarea> --></td>
					</tr>
					<tr>
						<td>정가</td>
						<td><input type="number" id="price" placeholder="제품 정가를 입력하세요." name="price"></td>
					</tr>
					<tr>
						<td>세일여부</td>
						<td><input type="radio" id="saleCheck1" name="saleCheck" checked="checked"> 세일 가능 
						<input type="radio" id="saleCheck2" name="saleCheck"> 세일 불가능</td>
					</tr>
					<tr>
						<td>세일률</td>
						<td><input type="number" id="saleRate" placeholder="세일률을 입력하세요." name="saleRate">%</td>
					</tr>
					<tr>
						<td>세일가</td>
						<td><input type="number" id="salePrice" name="salePrice" placeholder="세일가를 입력하세요">원</td>
					</tr>
					<tr>
						<td>카테고리</td>
						<td><div class="cat cat-1" id="0-0">
								<h4>1차 카테고리</h4>
								<ul>
									<li><a class="category-1" id="1">가구</a></li>
									<li><a class="category-1" id="2">패브릭</a></li>
									<li><a class="category-1" id="3">홈데코/조명</a></li>
									<li><a class="category-1" id="4">가전</a></li>
									<li><a class="category-1" id="5">수납/생활</a></li>
									<li><a class="category-1" id="6">주방</a></li>
									<li><a class="category-1" id="7">DIY자재</a></li>
									<li><a class="category-1" id="8">시공/주문제작</a></li>
									<li><a class="category-1" id="9">반려동물</a></li>
								</ul>
							</div>
							<div class="arrow">
								<h2>></h2>
							</div>
							<div class="cat cat-2" id="1-0">
								<h4>가구</h4>
								<ul>
									<li><a class="category-2" id="1-1">소파/거실가구</a></li>
									<li><a class="category-2" id="1-2">침실가구</a></li>
									<li><a class="category-2" id="1-3">드레스룸</a></li>
									<li><a class="category-2" id="1-4">주방가구</a></li>
									<li><a class="category-2" id="1-5">학생/서재가구</a></li>
									<li><a class="category-2" id="1-6">수납가구</a></li>
									<li><a class="category-2" id="1-7">테이블</a></li>
									<li><a class="category-2" id="1-8">의자/스툴</a></li>
									<li><a class="category-2" id="1-9">유아동가구</a></li>
								</ul>
							</div>
							<div class="cat cat-2" id="2-0">
								<h4>패브릭</h4>
								<ul>
									<li><a class="category-2" id="2-1">여름 침구/러그</a></li>
									<li><a class="category-2" id="2-2">커튼/블라인드</a></li>
									<li><a class="category-2" id="2-3">침구</a></li>
									<li><a class="category-2" id="2-4">카페트/러그</a></li>
									<li><a class="category-2" id="2-5">쿠션/방석</a></li>
									<li><a class="category-2" id="2-6">홈패브릭</a></li>
									<li><a class="category-2" id="2-7">주방패브릭</a></li>
									<li><a class="category-2" id="2-8">공예/취미</a></li>
									<li><a class="category-2" id="2-9">유아동패브릭</a></li>
								</ul>
							</div>
							<div class="cat cat-2" id="3-0">
								<h4>홈데코/조명</h4>
								<ul>
									<li><a class="category-2" id="3-1">조명</a></li>
									<li><a class="category-2" id="3-2">시계</a></li>
									<li><a class="category-2" id="3-3">플라워/식물</a></li>
									<li><a class="category-2" id="3-4">홈갤러리</a></li>
									<li><a class="category-2" id="3-5">월데코/장식</a></li>
									<li><a class="category-2" id="3-6">캔들/디퓨저</a></li>
									<li><a class="category-2" id="3-7">장식소품</a></li>
									<li><a class="category-2" id="3-8">데스크/디자인문구</a></li>
									<li><a class="category-2" id="3-9">크리스마스</a></li>
								</ul>
							</div>
							<div class="cat cat-2" id="4-0">
								<h4>가전</h4>
								<ul>
									<li><a class="category-2" id="4-1">주방가전</a></li>
									<li><a class="category-2" id="4-2">생활가전</a></li>
									<li><a class="category-2" id="4-3">청소가전</a></li>
									<li><a class="category-2" id="4-4">미용가전</a></li>
									<li><a class="category-2" id="4-5">음향/영상가전</a></li>
									<li><a class="category-2" id="4-6">계절가전</a></li>
								</ul>
							</div>
							<div class="cat cat-2" id="5-0">
								<h4>수납/생활</h4>
								<ul>
									<li><a class="category-2" id="5-1">수납/바스켓</a></li>
									<li><a class="category-2" id="5-2">선반/진열대</a></li>
									<li><a class="category-2" id="5-3">행거/옷걸이</a></li>
									<li><a class="category-2" id="5-4">욕실용품</a></li>
									<li><a class="category-2" id="5-5">수건/타월</a></li>
									<li><a class="category-2" id="5-6">청소용품</a></li>
									<li><a class="category-2" id="5-7">세탁용품</a></li>
									<li><a class="category-2" id="5-8">생필품</a></li>
									<li><a class="category-2" id="5-9">계절/여행용품</a></li>
								</ul>
							</div>
							<div class="cat cat-2" id="6-0">
								<h4>주방</h4>
								<ul>
									<li><a class="category-2" id="6-1">그릇/홈세트</a></li>
									<li><a class="category-2" id="6-2">수저/커트러리</a></li>
									<li><a class="category-2" id="6-3">컵/잔/텀블러</a></li>
									<li><a class="category-2" id="6-4">냄비/프라이팬</a></li>
									<li><a class="category-2" id="6-5">조리도구/도마</a></li>
									<li><a class="category-2" id="6-6">칼/커팅기구</a></li>
									<li><a class="category-2" id="6-7">주방수납/정리</a></li>
									<li><a class="category-2" id="6-8">식기건조대</a></li>
									<li><a class="category-2" id="6-9">보관/용기/도시락</a></li>
									<li><a class="category-2" id="6-10">주방잡화</a></li>
									<li><a class="category-2" id="6-11">커피용품/베이킹</a></li>
								</ul>
							</div>
							<div class="cat cat-2" id="7-0">
								<h4>DIY셀프시공</h4>
								<ul>
									<li><a class="category-2" id="7-1">페인트/부자재</a></li>
									<li><a class="category-2" id="7-2">벽지/시트지</a></li>
									<li><a class="category-2" id="7-3">바닥재</a></li>
									<li><a class="category-2" id="7-4">타일/파벽돌</a></li>
									<li><a class="category-2" id="7-5">목재</a></li>
									<li><a class="category-2" id="7-6">공구</a></li>
									<li><a class="category-2" id="7-7">몰딩/걸레받이</a></li>
									<li><a class="category-2" id="7-8">가구부속품</a></li>
									<li><a class="category-2" id="7-9">손잡이/방문/유리</a></li>
									<li><a class="category-2" id="7-10">접착제/보수용품</a></li>
								</ul>
							</div>
							<div class="cat cat-2" id="8-0">
								<h4>시공/서비스</h4>
								<ul>
									<li><a class="category-2" id="8-1">주방/욕실</a></li>
									<li><a class="category-2" id="8-2">창호/중문/도어</a></li>
									<li><a class="category-2" id="8-3">마루/벽지/페인트</a></li>
									<li><a class="category-2" id="8-4">홈케어서비스</a></li>
								</ul>
							</div>
							<div class="cat cat-2" id="9-0">
								<h4>반려동물</h4>
								<ul>
									<li><a class="category-2" id="9-1">강아지</a></li>
									<li><a class="category-2" id="9-2">고양이</a></li>
									<li><a class="category-2" id="9-3">관상어</a></li>
								</ul>
							</div>
						</td>
					</tr>
					<tr>
						<td></td>
						<td><input type="text" readonly="readonly" id="catSelect" name="catSelect"></td>
					</tr>
					<tr>
						<td>재고</td>
						<td><input type="number" id="stock" name="stock"></td>
					</tr>
					<tr>
						<td>판매자</td>
						<td><input type="text" id="seller" name="seller"
							readonly="readonly"></td>
					</tr>
					<tr>
						<td>배송여부</td>
						<td><input type="radio" name="delivery" id="delivery1"> 무료배송 <input
							type="radio" name="delivery" id="delivery2"> 유료배송</td>
					</tr>
					<tr>
						<td>배송비</td>
						<td><input type="number" id="deliveryFee" name="delivery"></td>
					</tr>
				</tbody>
			</table>

			<button type="submit" class="btn btn-default">등록</button>
		</form>
	</div>

</body>
</html>