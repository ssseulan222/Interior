<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집들이</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/homeparty.css">

</head>
<body>
	<!-- ------------- 커뮤니티-집들이-상단 카테고리--------------- -->
	<!-- ------------- container start ----------------------->

	<div id="container">
	 <div class="btn-group">
    <button type="button" class="btn">정렬</button>
    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
      <span class="caret"></span>
    </button>
      <ul class="dropdown-menu" role="menu">
        <li><a href="#">최신순</a></li>
        <li><a href="#">최근 인기순</a></li>
        <li><a href="#">역대 인기순</a></li>
        <li><a href="#">과거순</a></li>
      </ul>
		</div>
      
	 <div class="btn-group">
    <button type="button" class="btn">주거형태</button>
    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
      <span class="caret"></span>
    </button>
      <ul class="dropdown-menu" role="menu">
        <li><a href="#">원룸&amp;오피스텔</a></li>
        <li><a href="#">아파트</a></li>
        <li><a href="#">빌라&amp;연립</a></li>
        <li><a href="#">단독주택</a></li>
        <li><a href="#">사무공간</a></li>
        <li><a href="#">상업공간</a></li>
        <li><a href="#">기타</a></li>
      </ul>    
      </div> 

	 <div class="btn-group">
    <button type="button" class="btn">평수</button>
    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
      <span class="caret"></span>
    </button>
      <ul class="dropdown-menu" role="menu">
        <li><button>1-9평</button>
        	<button>10평대</button>
        	<button>20평대</button>
        	<button>30평대</button>
        	<button>40평대</button>
        	<button>50평대</button>
        	<button>60평대</button>
        	<button>70평 이상</button>
        </li>
      </ul>
      </div>
 
	 <div class="btn-group">
    <button type="button" class="btn">예산</button>
    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
      <span class="caret"></span>
    </button>
      <ul class="dropdown-menu" role="menu">
        <li><button>1백만원 미만</button>
        <button>1백만원대</button>
        <button>2백만원대</button>
        <button>3백만원대</button>
        <button>4백만원대</button>
        <button>5백만원대</button>
        <button>1천만원대</button>
        <button>2천만원대</button>
        <button>3천만원대</button>
        <button>4천만원+</button>
        </li>
      </ul>
      </div>
       
	 <div class="btn-group">
    <button type="button" class="btn">가족형태</button>
    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
      <span class="caret"></span>
    </button>
      <ul class="dropdown-menu" role="menu">
        <li><a href="#">싱글라이프</a></li>
        <li><a href="#">신혼 부부</a></li>
        <li><a href="#">아기가 있는 집</a></li>
        <li><a href="#">취학 자녀가 있는 집</a></li>
        <li><a href="#">부모님과 함께 사는 집</a></li>
        <li><a href="#">기타</a></li>
      </ul>       
      </div> 
      
       
	 <div class="btn-group">
    <button type="button" class="btn">스타일</button>
    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
      <span class="caret"></span>
    </button>
      <ul class="dropdown-menu" role="menu">
        <li><a href="#">모던</a></li>
        <li><a href="#">미니멀&amp;심플</a></li>
        <li><a href="#">내추럴</a></li>
        <li><a href="#">북유럽</a></li>
        <li><a href="#">빈티지&amp;레트로</a></li>
        <li><a href="#">클래식&amp;앤틱</a></li>
        <li><a href="#">프렌치&amp;프로방스</a></li>
        <li><a href="#">러블리&amp;로맨틱</a></li>
        <li><a href="#">인더스트리얼</a></li>
        <li><a href="#">한국&amp;아시아</a></li>
        <li><a href="#">유니크&amp;믹스매치</a></li>
      </ul>
      </div>        
 
	 <div class="btn-group">
    <button type="button" class="btn">컬러</button>
    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
      <span class="caret"></span>
    </button>
      <ul class="dropdown-menu" role="menu">
        <li><button>전체톤</button></li>
        <li><button>벽/바닥컬러</button></li>
      </ul> 
      </div>
 
	 <div class="btn-group">
    <button type="button" class="btn">세부공사</button>
    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
      <span class="caret"></span>
    </button>
      <ul class="dropdown-menu" role="menu">
        <li><a href="#">해링본 마루</a></li>
        <li><a href="#">대리석 바닥</a></li>
        <li><a href="#">원목마루</a></li>
        <li><a href="#">포세린타일</a></li>
        <li><a href="#">폴리싱타일</a></li>
        <li><a href="#">주방리모델링</a></li>
        <li><a href="#">조명시공</a></li>
        <li><a href="#">폴딩도어</a></li>
        <li><a href="#">중문</a></li>
        <li><a href="#">가벽&amp;파티션</a></li>
        <li><a href="#">슬라이딩도어</a></li>
        <li><a href="#">아트월</a></li>
        <li><a href="#">발코니확장</a></li>
      </ul> 
      </div>

	 <div class="btn-group">
    <button type="button" class="btn">분야</button>
    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
      <span class="caret"></span>
    </button>
      <ul class="dropdown-menu" role="menu">
        <li><a href="#">리모델링</a></li>
        <li><a href="#">홈스타일링</a></li>
        <li><a href="#">부분공사</a></li>
        <li><a href="#">건축</a></li>
      </ul>
      </div>
       
	 <div class="btn-group">
    <button type="button" class="btn">작업자</button>
    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
      <span class="caret"></span>
    </button>
      <ul class="dropdown-menu" role="menu">
      
      </ul>
      </div>
       
		<!-- ------------- 커뮤니티-집들이-상단 카테고리--------------- -->
	</div> <!-- end container -->
	
	
</body>
</html>