<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
	
	 <jsp:include page="../common/header.jsp" />
 	<nav class="navigation-secondary-wrap sticky-top" style="height: auto;">
	    <div class="navigation-secondary__container sticky-content open" data-sticky-enabled="false" style="position: relative;">
	      <div class="navigation-secondary">
	        <div class="navigation-secondary__menu"><ul>
	        <li class="navigation-menu__primary__secondary activee" id="home">
	    <a href="${pageContext.request.contextPath}/expert/ExpertMain">전문가홈</a>
	  </li>
	
	        <li class="navigation-menu__primary__secondary" id="homeparty">
	    <a href="${pageContext.request.contextPath}/expert/ExpertFound">전문가찾기</a>
	  </li>
	  <li class="navigation-menu__primary__secondary" id="qna">
	    <a href="${pageContext.request.contextPath}/store/storerRanking">랭킹</a>
	  </li>
	    </ul></div>
	      </div>
	    </div>
	  </nav>

	<div class="body">
		<div id="banner">
			<img alt="banner" src="../img/calculator.png"> <span id="text1">시공별
				비용이 궁금하다면? </span><span id="estimate">예상견적</span>
		</div>
		<div id="tag">
			<span>전문가 찾기</span>
			<ul>
				<li>종합</li>
				<li>도배</li>
				<li>장판</li>
				<li>마루</li>
				<li>주방</li>
				<li>목공</li>
				<li>욕실</li>
				<li>타일</li>
				<li>페인트</li>
				<li>시트필름</li>
				<li>도어</li>
				<li>샷시</li>
				<li>블라인드</li>
				<li>설비</li>
				<li>조명</li>
			</ul>
			<br>
			<ul>
				<li>전문디자인</li>
				<li>방산시장</li>
				<li>기타</li>
			</ul>
		</div>
		<div id="recommend">
			<span>추천 인테리어 전문가</span>
			<div></div>
		</div>
		<div id="register">
			<a href="${pageContext.request.contextPath}/expert/ExpertJoin"><span>인테리어
				시공 전문가이신가요?</span>가입신청하기</a>
		</div>
		<div id="required">
			<span>인테리어 계약 전 필독!</span>
			<div></div>
		</div>
		<div id="portfolio">
			<span>추천 포트폴리오</span>
			<div></div>
		</div>
	</div>
</body>
</html>