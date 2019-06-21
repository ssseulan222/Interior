<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/temp/bs.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스토어랭킹</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/storeRanking.css">

</head>
<body>
<%-- <jsp:include page="../common/header.jsp" /> --%>
		<a href="<%=application.getContextPath()%>/store/storeMain">스토어홈</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="<%=application.getContextPath()%>/store/storeCategory">카테고리</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="<%=application.getContextPath()%>/store/storeRanking">랭킹</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<a href="<%=application.getContextPath()%>/seller/sellerJoin">판매자회원가입</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="<%=application.getContextPath()%>/seller/sellerLogin">판매자로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
		<a href="#">일반로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#">전문가로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
		<p>${sessionScope.sellerDTO.id}님 환영합니다</p>
		<a href="<%=application.getContextPath()%>/seller/sellerLogout">로그아웃</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="<%=application.getContextPath()%>/seller/sellerMain">판매자페이지</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<div class="container">

	<div>
		<p class="bigTitle">카테고리 BEST 100</p>
	</div>
	<div class="bestPro">
		<div class="rankingPro">
			<div class="number">1</div>
		</div>
		<div class="rankingPro">
			<div class="number">2</div>
		</div>
		<div class="rankingPro">
			<div class="number">3</div>
		</div>
		<div class="rankingPro">
			<div class="number">4</div>
		</div>
		<div class="rankingPro">
			<div class="number">5</div>
		</div>
		<div class="rankingPro">
			<div class="number">6</div>
		</div>
		<div class="rankingPro">
			<div class="number">7</div>
		</div>
		<div class="rankingPro">
			<div class="number">8</div>
		</div>
		<div class="rankingPro">
			<div class="number">9</div>
		</div>
		<div class="rankingPro">
			<div class="number">10</div>
		</div>
		<button class="moreBtn" type="button">더보기</button>
	</div>
	
	<div>
		<p class="bigTitle">인기</p>
	</div>
	<div class="bestPro">
		<p class="cat">가구 BEST</p>
		<div class="rankingPro">
			<div class="number">1</div>
		</div>
		<div class="rankingPro">
			<div class="number">2</div>
		</div>
		<div class="rankingPro">
			<div class="number">3</div>
		</div>
		<div class="rankingPro">
			<div class="number">4</div>
		</div>
		<div class="rankingPro">
			<div class="number">5</div>
		</div>
		<div class="rankingPro">
			<div class="number">6</div>
		</div>
		<div class="rankingPro">
			<div class="number">7</div>
		</div>
		<div class="rankingPro">
			<div class="number">8</div>
		</div>
		<div class="rankingPro">
			<div class="number">9</div>
		</div>
		<div class="rankingPro">
			<div class="number">10</div>
		</div>
		<button class="moreBtn" type="button">더보기</button>
	</div>
	
	<div class="bestPro">
		<p class="cat">패브릭 BEST</p>
		<div class="rankingPro">
			<div class="number">1</div>
		</div>
		<div class="rankingPro">
			<div class="number">2</div>
		</div>
		<div class="rankingPro">
			<div class="number">3</div>
		</div>
		<div class="rankingPro">
			<div class="number">4</div>
		</div>
		<div class="rankingPro">
			<div class="number">5</div>
		</div>
		<div class="rankingPro">
			<div class="number">6</div>
		</div>
		<div class="rankingPro">
			<div class="number">7</div>
		</div>
		<div class="rankingPro">
			<div class="number">8</div>
		</div>
		<div class="rankingPro">
			<div class="number">9</div>
		</div>
		<div class="rankingPro">
			<div class="number">10</div>
		</div>
		<button class="moreBtn" type="button">더보기</button>
	</div>
	
	<div class="bestPro">
		<p class="cat">홈데코 BEST</p>
		<div class="rankingPro">
			<div class="number">1</div>
		</div>
		<div class="rankingPro">
			<div class="number">2</div>
		</div>
		<div class="rankingPro">
			<div class="number">3</div>
		</div>
		<div class="rankingPro">
			<div class="number">4</div>
		</div>
		<div class="rankingPro">
			<div class="number">5</div>
		</div>
		<div class="rankingPro">
			<div class="number">6</div>
		</div>
		<div class="rankingPro">
			<div class="number">7</div>
		</div>
		<div class="rankingPro">
			<div class="number">8</div>
		</div>
		<div class="rankingPro">
			<div class="number">9</div>
		</div>
		<div class="rankingPro">
			<div class="number">10</div>
		</div>
		<button class="moreBtn" type="button">더보기</button>
	</div>
	
	<div class="bestPro">
		<p class="cat">가전 BEST</p>
		<div class="rankingPro">
			<div class="number">1</div>
		</div>
		<div class="rankingPro">
			<div class="number">2</div>
		</div>
		<div class="rankingPro">
			<div class="number">3</div>
		</div>
		<div class="rankingPro">
			<div class="number">4</div>
		</div>
		<div class="rankingPro">
			<div class="number">5</div>
		</div>
		<div class="rankingPro">
			<div class="number">6</div>
		</div>
		<div class="rankingPro">
			<div class="number">7</div>
		</div>
		<div class="rankingPro">
			<div class="number">8</div>
		</div>
		<div class="rankingPro">
			<div class="number">9</div>
		</div>
		<div class="rankingPro">
			<div class="number">10</div>
		</div>
		<button class="moreBtn" type="button">더보기</button>
	</div>
	
	<div class="bestPro">
		<p class="cat">수납/생활 BEST</p>
		<div class="rankingPro">
			<div class="number">1</div>
		</div>
		<div class="rankingPro">
			<div class="number">2</div>
		</div>
		<div class="rankingPro">
			<div class="number">3</div>
		</div>
		<div class="rankingPro">
			<div class="number">4</div>
		</div>
		<div class="rankingPro">
			<div class="number">5</div>
		</div>
		<div class="rankingPro">
			<div class="number">6</div>
		</div>
		<div class="rankingPro">
			<div class="number">7</div>
		</div>
		<div class="rankingPro">
			<div class="number">8</div>
		</div>
		<div class="rankingPro">
			<div class="number">9</div>
		</div>
		<div class="rankingPro">
			<div class="number">10</div>
		</div>
		<button class="moreBtn" type="button">더보기</button>
	</div>
	
	<div class="bestPro">
		<p class="cat">주방 BEST</p>
		<div class="rankingPro">
			<div class="number">1</div>
		</div>
		<div class="rankingPro">
			<div class="number">2</div>
		</div>
		<div class="rankingPro">
			<div class="number">3</div>
		</div>
		<div class="rankingPro">
			<div class="number">4</div>
		</div>
		<div class="rankingPro">
			<div class="number">5</div>
		</div>
		<div class="rankingPro">
			<div class="number">6</div>
		</div>
		<div class="rankingPro">
			<div class="number">7</div>
		</div>
		<div class="rankingPro">
			<div class="number">8</div>
		</div>
		<div class="rankingPro">
			<div class="number">9</div>
		</div>
		<div class="rankingPro">
			<div class="number">10</div>
		</div>
		<button class="moreBtn" type="button">더보기</button>
	</div>
	
	<div class="bestPro">
		<p class="cat">DIY자재 BEST</p>
		<div class="rankingPro">
			<div class="number">1</div>
		</div>
		<div class="rankingPro">
			<div class="number">2</div>
		</div>
		<div class="rankingPro">
			<div class="number">3</div>
		</div>
		<div class="rankingPro">
			<div class="number">4</div>
		</div>
		<div class="rankingPro">
			<div class="number">5</div>
		</div>
		<div class="rankingPro">
			<div class="number">6</div>
		</div>
		<div class="rankingPro">
			<div class="number">7</div>
		</div>
		<div class="rankingPro">
			<div class="number">8</div>
		</div>
		<div class="rankingPro">
			<div class="number">9</div>
		</div>
		<div class="rankingPro">
			<div class="number">10</div>
		</div>
		<button class="moreBtn" type="button">더보기</button>
	</div>
		
	<div class="bestPro">
		<p class="cat">주문제작 BEST</p>
		<div class="rankingPro">
			<div class="number">1</div>
		</div>
		<div class="rankingPro">
			<div class="number">2</div>
		</div>
		<div class="rankingPro">
			<div class="number">3</div>
		</div>
		<div class="rankingPro">
			<div class="number">4</div>
		</div>
		<div class="rankingPro">
			<div class="number">5</div>
		</div>
		<div class="rankingPro">
			<div class="number">6</div>
		</div>
		<div class="rankingPro">
			<div class="number">7</div>
		</div>
		<div class="rankingPro">
			<div class="number">8</div>
		</div>
		<div class="rankingPro">
			<div class="number">9</div>
		</div>
		<div class="rankingPro">
			<div class="number">10</div>
		</div>
		<button class="moreBtn" type="button">더보기</button>
	</div>
		
	<div class="bestPro">
		<p class="cat">반려동물 BEST</p>
		<div class="rankingPro">
			<div class="number">1</div>
		</div>
		<div class="rankingPro">
			<div class="number">2</div>
		</div>
		<div class="rankingPro">
			<div class="number">3</div>
		</div>
		<div class="rankingPro">
			<div class="number">4</div>
		</div>
		<div class="rankingPro">
			<div class="number">5</div>
		</div>
		<div class="rankingPro">
			<div class="number">6</div>
		</div>
		<div class="rankingPro">
			<div class="number">7</div>
		</div>
		<div class="rankingPro">
			<div class="number">8</div>
		</div>
		<div class="rankingPro">
			<div class="number">9</div>
		</div>
		<div class="rankingPro">
			<div class="number">10</div>
		</div>
		<button class="moreBtn" type="button">더보기</button>
	</div>
</div>
<%-- <jsp:include page="../common/footer.jsp" /> --%>
</body>
</html>