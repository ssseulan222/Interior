<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../common/bootstrap.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${productDTO.name}</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/productSelect.css">
<script src="<%=request.getContextPath()%>/js/productSelect.js"></script>
<script type="text/javascript">
	
</script>
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

				<div class="innerCat col-sm-12">
					<p> <a href="../store/storeMain">오늘의 집 스토어</a> 
					> <a href="../store/storeCategory?category=${productDTO.category}">${category}</a> 
					> <a>${productDTO.name}</a>
				</div>
			<!-- 이미지 -->
			<div class="col-sm-6">
				<div class="productImageWrap">

					<div class="productImageDiv">
						<c:if test="${productDTO.uploadDTO.fname != null}">
							<img class="productImage"
								src="<%=application.getContextPath() %>/productUpload/${productDTO.uploadDTO.fname}">
						</c:if>
						<c:if test="${productDTO.uploadDTO.fname == null}">
							<img class="productImage"
								src="<%=application.getContextPath()%>/prodcutUpload/empty.png">
						</c:if>
					</div>
				</div>
			</div>

			<!-- 제품 기본 정보 -->
			<div class="col-sm-6">
				<div class="brandNameDiv">
					<p class="brandName">
						<a>${productDTO.brandName}</a>
					</p>
				</div>
				<div class="name">
					<p>${productDTO.name}</p>
				</div>
				<div class="priceInfo">
					<div class="saleRateDiv vertical">
						<span class="saleRate">${productDTO.saleRate}</span><span
							class="unit">%</span>
					</div>
					<div class="priceDiv vertical">
						<div class="price">
							<del>${productDTO.price}원</del>
						</div>
						<div class="salePrice">${productDTO.salePrice}<span>원</span>
						</div>
					</div>
				</div>
				<div class="pointDiv">
					<p>
						<span class="point">${productDTO.point}P</span><span class="ment">
							적립해드립니다.</span>
					</p>
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
						<c:if
							test="${productDTO.deliveryFee == null or productDTO.deliveryFee eq '0'}">
							<div class="freeD">
								<img src="<%=application.getContextPath()%>/img/freeD.png"
									class="freeDImg">
							</div>
						</c:if>
						<c:if
							test="${productDTO.deliveryFee != null and productDTO.deliveryFee ne '0'}">
							<p class="deliveryFee">배송비 ${productDTO.deliveryFee} 원</p>
						</c:if>
					</div>
				</div>

				<hr>

				<div class="selectBrandNameDiv">
					<p class="selectBrandName">
						<a> ${productDTO.brandName} 상품보기 </a>
					</p>
				</div>
				<div class="optionDiv">
					<select class="option">
						<option>제품선택</option>
					</select>
				</div>

				<div class="total-price">
					<p class="totalPrice">
						<span class="order">주문금액</span> <span class="orderPriceWon">
							<strong class="orderPrice">${productDTO.salePrice}</strong> <span
							class="won">원</span>
						</span>
					</p>
				</div>


				<div class="btns col-sm-12">
					<div class="btnDiv col-sm-6">
						<button class="btn col-sm-12" id="basket">장바구니담기</button>
					</div>
					<div class="btnDiv col-sm-6">
						<button class="btn col-sm-12" id="buy">구매하기</button>
					</div>
					<c:if test="${productDTO.seller eq sellerDTO.companyName}">
						<div class="col-sm-12 updateDiv">
							<a class="btn col-sm-4" id="updateBtn" href="./productUpdate?num=${productDTO.num}">수정하기</a>
						</div>
					</c:if>
				</div>

			</div>

		</div>

		<div class="col-sm-12 header" id="detail">
			<!-- 메뉴바 -->

			<!-- <div class="detailBar">

				<nav class="nav col-sm-12">
					<ul class="ul">
						<li class="navmenu" id="1">상품정보</li>
						<li class="navmenu" id="2">리뷰</li>
						<li class="navmenu" id="3">배송/교환/환불</li>
						<li class="navmenu" id="4"></li>
						<li class="navmenu" id="5"></li>
					</ul>
				</nav>

			</div> -->



			<div class="vertical2 col-sm-8">
				<section class="section">
					<div class="section_con" id="s1">
						<p class="productInfo">상품정보</p>
						<div class="info">${productDTO.info}</div>
					</div>
					<div class="section_con" id="s2">
						<p class="reviewtitle">리뷰</p>
					</div>
					<div class="section_con" id="s3">
						<p class="refundInfo">배송 관련 안내</p>
						<table>
							<tr class="tr">
								<td>배송</td>
								<c:if test="${productDTO.delivery eq null}"><td>일반택배배송</td></c:if>
								<c:if test="${productDTO.delivery ne null}"><td>${productDTO.delivery}</td></c:if>
							</tr>
							<tr class="tr">
								<td>배송비</td>
								<c:if test="${productDTO.deliveryFee eq '0' || productDTO.deliveryFee eq null}"><td>무료배송</td></c:if>
								<c:if test="${productDTO.deliveryFee ne '0'}"><td>${productDTO.deliveryFee}원</td></c:if>
							</tr>
							<tr class="tr">
								<td>배송불가 지역</td>
								<c:if test="${productDTO.deliveryLocal eq null}"><td>없음</td></c:if>
								<c:if test="${productDTO.deliveryLocal ne null}"><td>${productDTO.deliveryLocal}</td></c:if>
							</tr>
						</table>
						<br>
						<p class="refundInfo">교환 및 환불</p>
						<table>
							<tr class="tr">
								<td>반품배송비</td>
								<c:if test="${productDTO.returnFee eq null || productDTO.returnFee eq '0'}"><td>없음</td></c:if>
								<c:if test="${productDTO.returnFee ne null}"><td>${productDTO.returnFee}</td></c:if>
							</tr>
							<tr class="tr">
								<td>교환배송비</td>
								<c:if test="${productDTO.exchangeFee eq null || productDTO.exchangeFee eq '0'}"><td>없음</td></c:if>
								<c:if test="${productDTO.exchangeFee ne null}"><td>${productDTO.exchangeFee}</td></c:if>
							</tr>
							<tr class="tr">
								<td>보내실 곳</td>
								<td>${productDTO.sendPlace}</td>
							</tr>
						</table>
						<br>
						<section class="text-caption-2 refund">
							<p class="text-body-2 bold">반품/교환 사유에 따른 요청 가능 기간</p>
							<p class="text-gray-light">반품 시 먼저 판매자와 연락하셔서 반품사유, 택배사, 배송비,
								반품지 주소 등을 협의하신 후 반품상품을 발송해 주시기 바랍니다.</p>

							<table>
								<tr class="tr1">
									<td>1</td>
									<td>구매자 단순 변심은 상품 수령 후 7일 이내 (구매자 반품배송비 부담)</td>
								</tr>
								<tr class="tr1">
									<td>2</td>
									<td>표시/광고와 상이, 상품하자의 경우 상품 수령 후 3개월 이내 혹은 표시/광고와 다른 사실을 안 날로부터 30일 이내.<br>
										둘 중 하나 경과 시 반품/교환 불가 (판매자 반품배송비 부담)</td>
								</tr>
								
							</table>
						</section>
						<section class="text-caption-2 refund">
							<p class="text-body-2 bold">반품/교환 불가능 사유</p>
							<p class="text-gray-light">아래와 같은 경우 반품/교환이 불가능합니다.</p>
							<table>
								<tr class="tr2">
									<td>1</td>
									<td>반품요청기간이 지난 경우</td>
								</tr>
								<tr class="tr2">
									<td>2</td>
									<td>구매자의 책임 있는 사유로 상품 등이 멸실 또는 훼손된 경우 (단, 상품의 내용을 확인하기 위하여
										포장 등을 훼손한 경우는 제외)</td>
								</tr>
								<tr class="tr2">
									<td>3</td>
									<td>포장을 개봉하였으나 포장이 훼손되어 상품가치가 현저히 상실된 경우 (예: 식품, 화장품)</td>
								</tr>
								<tr class="tr2">
									<td>4</td>
									<td>구매자의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우 (라벨이 떨어진 의류
										또는 태그가 떨어진 명품관 상품인 경우)</td>
								</tr>
								<tr class="tr2">
									<td>5</td>
									<td>시간의 경과에 의하여 재판매가 곤란할 정도로 상품 등의 가치가 현저히 감소한 경우 (예: 식품,
										화장품)</td>
								</tr>
								<tr class="tr2">
									<td>6</td>
									<td>고객주문 확인 후 상품제작에 들어가는 주문제작상품</td>
								</tr>
								<tr class="tr2">
									<td>7</td>
									<td>복제가 가능한 상품 등의 포장을 훼손한 경우 (CD/DVD/GAME/도서의 경우 포장 개봉 시)</td>
								</tr>
							</table>
						</section>
					</div>
				</section>
			</div>
			<div class="vertical2 col-sm-4 selOption">
				<h3>옵션선택</h3>
			</div>

		</div>
	</div>
	<%-- <jsp:include page="../common/footer.jsp" /> --%>

</body>
</html>