<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../temp/header.jsp" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/MyPageProfiletop.css" type="text/css">
<script type="text/javascript">
	
</script>
<style type="text/css">
	body{
		margin-top: 50px;
	}
	.my-mileage{
		max-width: 800px;
		padding: 15px 0;
		height: 80px;
		width: 100%;
	    margin: 30px auto 0;
	    background-color: #ffffff;
	    box-sizing: border-box;
	    box-shadow: 0 1px 3px 0 rgba(0,0,0,0.2);
	    overflow: hidden;
	}
	.icon{
		position: relative;
		display: inline-block;
	}
	.slot{
		display: block;
	    float: left;
	    padding: 8px 0;
	    box-sizing: border-box;
	    cursor: pointer;
	    width: 33.3%;
	    height: 50px;
	    text-align: center;
	    font-size: 0;
	}
	.coupon{
		width: 54px;
	    height: 34px;
	    background-image: url(https://d1nyaccf3kuclt.cloudfront.net/assets/icon_map/icon-point.png);
	    background-repeat: no-repeat;
	    background-size: 400px;
	    background-position: top 0 left 0;
	}
	.inform{
		display: inline-block;
	    margin-left: 15px;
	    font-size: 16px;
	    line-height: 34px;
	    vertical-align: top;
	}
	.count{
		display: inline-block;
	    margin-left: 10px;
	    font-size: 16px;
	    font-weight: bold;
	    color: #35c5f0;
	    line-height: 34px;
	    vertical-align: top;
	}
	.center{
	    border-left: 1px solid #dcdcdc;
    	border-right: 1px solid #dcdcdc;
	}
	.mileage{
		width: 54px;
	    height: 34px;
	    background-image: url(https://d1nyaccf3kuclt.cloudfront.net/assets/icon_map/icon-point.png);
	    background-repeat: no-repeat;
	    background-size: 400px;
	    background-position: top 0 left -74px;
	}
	.icon-promotion-welcome{
		width :54px;
		height : 35px;
	    background-position: top -48px left -100px;
		background-image: url(/assets/icon_map/v3/icon-point.png);
	}
	.not-mobile{
		display: block;
	}
	.invite-code{
		overflow: hidden;
    	position: relative;
		max-width: 800px;
		width: 100%;
	    margin: 30px auto 0;
	    background-color: #ffffff;
	    box-sizing: border-box;
	    box-shadow: 0 1px 3px 0 rgba(0,0,0,0.2);
	    overflow: hidden;
	}
	.invite-code>.slot{
		display: block;
	    float: left;
	    margin: 15px 0;
	    box-sizing: border-box;
	    height: 50px;
	    width: 33.3%;
	    text-align: center;
	}
	.title{
		font-size: 18px;
	    font-weight: bold;
	    line-height: 30px;
	    color: #3c3c3c;
	    margin-right: 5px;
	}
	.code{
		font-size: 16px;
		line-height: 30px;
		text-align: left;
	    color: #3c3c3c;
	}
	.invite-code div{
		display: inline-block;
	}
	.description{
		display: inline-block;
    	font-size: 16px;
	    color: #3c3c3c;
    	line-height: 30px;
	    margin-right: 30px;
	}
	.slot.double{
		width: 66.6%;
    	border-left: 1px solid #dcdcdc;
	}
	.information>a{
		width: 140px;
	    height: 40px;
	    line-height: 30px;
	    background-color: #35c5f0;
	    color: #ffffff;
	    display: inline-block;
	    border-radius: 4px;
	    font-weight: bold;
	}
	.order-status{
		padding: 0 45px;
		text-align: center;
		max-width: 800px;
		width: 100%;
	    margin: 30px auto 0;
	    background-color: #ffffff;
	    box-sizing: border-box;
	    box-shadow: 0 1px 3px 0 rgba(0,0,0,0.2);
	    overflow: hidden;
		}
	.step{
		float: left;
		margin: 39px 0 33px;
		cursor: pointer;
	}
	.step>.title{
		font-size: 16px;
	    line-height: 21px;
	    width: 75px;
	    color: #424242;
	    margin: 0 0 33px;
	}
	.step>.count{
		font-size: 24px;
	    line-height: 24px;
	    color: #35c5f0;
	}
	.image-arrow{
		margin: 62.5px 15.5px;
		display: block;
	    float: left;
	    width: 15px;
	    height: 25px;
	    background-image: url(https://d1nyaccf3kuclt.cloudfront.net/assets/icon_map/icon-pointer.png);
	    background-repeat: no-repeat;
	    background-size: 400px;
	    background-position: top -35px left -351px;
	}
	.order-list-set{
		padding: 30px 20px 40px;
		margin-bottom: 30px;
		max-width: 800px;
		width: 100%;
	    margin: 30px auto 0;
	    background-color: #ffffff;
	    box-sizing: border-box;
	    box-shadow: 0 1px 3px 0 rgba(0,0,0,0.2);
	    overflow: hidden;
	}
	.order-filter{
		overflow: hidden;
		padding-bottom: 30px;
	}
	.order-filter>select{
		width: 170px;
	    height: 40px;
	    margin-right: 15px;
	    padding: 0 15px;
	    float: left;
	    font-size: 16px;
	    line-height: 40px;
	    color: #424242;
	    border: 1px solid #dcdcdc;
	    background-image: url(https://d1nyaccf3kuclt.cloudfront.net/assets/select_arrow.png);
	    background-color: #ffffff;
	    background-repeat: no-repeat;
	    background-position: calc(100% - 15px);
	    background-size: 18px;
	}
	option{
		font-weight: normal;
	    display: block;
	    white-space: pre;
	    min-height: 1.2em;
	    padding: 0px 2px 1px;
	}
	.banner{
		display: block;
	    height: 80px;
	    width: 100%;
	    margin: 0 auto;
	    background-size: cover;
	    background-position: center;
	}
	.not-have-result{
		padding: 40px 0 20px;
		text-align: center;
		font-size: 18px;
		color: #424242;
	}
</style>

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