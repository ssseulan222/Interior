<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="${pageContext.request.contextPath}/temp/header.jsp" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/MyPageProfiletop.css" type="text/css">
<script type="text/javascript">
	
</script>
<style type="text/css">
	body{
		margin-top: 50px;
	}
	div{
		display: block;
	}
	.question-list-set{
		max-width: 800px;
		padding: 40px 20px;
		width: 100%;
	    margin: 30px auto;
	    background-color: #ffffff;
	    box-sizing: border-box;
	    box-shadow: 0 1px 3px 0 rgba(0,0,0,0.2);
	    overflow: hidden;
	    color: #424242;
	}
	.title-question{
		padding: 0 20px 38px;
		font-size: 24px;
		font-weight: 700;
		border-bottom: solid 1px #dcdcdc;
	}
	.not-have-result{
		text-align: center;
		font-size: 18px;
		padding: 80px 0 0 ;
	}
	.ui-pagination{
		margin: 40px 0 0 ;
		position: relative;
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
						<li class="page-nav-item"><a class="active" href="./memberMyShopping">나의쇼핑</a></li>
						<li class="page-nav-item"><a href="./memberMyReview">나의리뷰</a></li>
						<li class="page-nav-item"><a href="#">설정</a></li>
					</ul>
				</nav>
				<nav class="page-myhome-nav">
					<ul>
						<li class="page-nav-item page-nav-item-nav"><a href="./memberMyShopping">주문배송내역 조회</a></li>
						<li class="page-nav-item page-nav-item-nav"><a  class="active active-botton" href="./memberMyShoppingQuestions">상품문의내역</a></li>
					</ul>
				</nav>
			</div>
		</div>
		<div class="question-list-set">
			<div class="title-question">상품문의내역</div>
			<div class="not-have-result">문의하신 내역이 아직 없습니다.</div>
			<div class="ui-pagination"></div>
		</div>
	</div>
</body>
</html>