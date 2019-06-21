<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../temp/header.jsp" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/MyPageProfiletop.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/memberMyShopping.css" type="text/css">
<script type="text/javascript">
	
</script>

</head>
<body>
<div class="user-show-layout">
	<div class="wrap-nav">
		<div class="myhome-nav">
			<nav class="page-myhome-nav">
				<ul style="transform : translateX(0px);">
					<li class="page-nav-item"><a href="./memberMyHome">프로필</a></li>
					<li class="page-nav-item"><a class="active" href="#">나의쇼핑</a></li>
					<li class="page-nav-item"><a href="./memberMyReview">나의리뷰</a></li>
					<li class="page-nav-item"><a href="#">설정</a></li>
				</ul>
			</nav>
			<nav class="page-myhome-nav">
				<ul>
					<li class="page-nav-item page-nav-item-nav"><a class="active active-botton" href="./memberMyShopping">주문배송내역 조회</a></li>
					<li class="page-nav-item page-nav-item-nav"><a href="./memberMyShoppingQuestions">상품문의내역</a></li>
				</ul>
			</nav>
		</div>
	</div>
	<div class="my-mileage">
		<a class="slot" href="#"><div class="coupon icon"> </div><div class="inform">쿠폰</div><div class="count">0</div></a>
		<a href="#" class="slot center"><div class="mileage icon"></div><div  class="inform">포인트</div><div class="count">0</div></a>
		<a href="#">
		<div id="btn-popup-rating" class="slot">
			<div class="icon icon-promotion-welcome"></div>
			<div class="inform">구매등급</div>
			<div class="count">WELCOME</div>
		</div>
		</a>
	</div>
	<div class="invite-code not-mobile">
		<div class="slot code">
			<div class="title">나의 추천코드</div>
			<div class="code">code</div>
		</div>
		<div class="slot double information">
			<div class="description">
				나는 5000P, 친구는 5000원 쿠폰
			</div>
			<a href="#" style="font-size: 18px;">추천하기</a>
		</div>
	</div>
	
	<div class="order-status">
		<div class="step" data-state="0">
			<div class="title">입금대기</div>
			<div class="count" >0</div>
		</div>
		<div class="image-arrow"></div>
		<div class="step" data-state="1">
			<div class="title">결제완료</div>
			<div class="count" >0</div>
		</div>
		<div class="image-arrow"></div>
		<div class="step" data-state="2">
			<div class="title">배송준비</div>
			<div class="count" >0</div>
		</div>
		<div class="image-arrow"></div>
		<div class="step" data-state="3">
			<div class="title">배송중</div>
			<div class="count" >0</div>
		</div>
		<div class="image-arrow"></div>
		<div class="step" data-state="4">
			<div class="title">배송완료</div>
			<div class="count" >0</div>
		</div>
		<div class="image-arrow"></div>
		<div class="step" data-state="6">
			<div class="title">리뷰작성</div>
			<div class="count" >0</div>
		</div>
	</div>
	<div class="order-list-set">
		<div class="order-filter">
			<select id="delivery-before">
				<option value="1">1개월전</option>
				<option value="3">3개월전</option>
				<option value="6">6개월전</option>
				<option value="12">1년전</option>
				<option value="24">2년전</option>
				<option value="36">3년전</option>
				<option value="-1">전체선택</option>
			</select>
			<select id="delivery-status">
				<option value="-1">전체상태</option>
				<option value="0">입금대기</option>
				<option value="1">결제완료</option>
				<option value="2">배송준비</option>
				<option value="3">배송중</option>
				<option value="4">배송완료</option>
				<option value="5">구매확정</option>
				<option value="6">리뷰작성</option>
				<option value="7">취소</option>
				<option value="8">교환</option>
				<option value="9">환불</option>
			</select>
		</div>
		<div class="banner">
			
		</div>
		<div class="not-have-result">
			주문내역이 없습니다.
		</div>
	</div>
</div>
</body>
</html>