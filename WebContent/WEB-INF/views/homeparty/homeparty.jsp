<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집들이</title>
<c:import url="../common/bootstrap.jsp"/>
<style type="text/css">
	
</style>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/homeparty.css">

</head>
<body>
<c:import url="../common/header.jsp"/>
	<!-- ------------- 커뮤니티-집들이-상단 카테고리--------------- -->
	<!-- ------------- container start ----------------------->
  <nav class="navigation-secondary-wrap sticky-top" style="height: auto;">
    <div class="navigation-secondary__container sticky-content open" data-sticky-enabled="false" style="position: relative;">
      <div class="navigation-secondary">
        <div class="navigation-secondary__menu"><ul>
        <li class="navigation-menu__primary__secondary" id="home">
    <a href="${pageContext.request.contextPath}/index.do">홈</a>
  </li>

        <li class="navigation-menu__primary__secondary   activee" id="homeparty">
    <a href="${pageContext.request.contextPath}/homeparty/homeparty">집들이</a>
  </li>
  <li class="navigation-menu__primary__secondary" id="qna">
    <a href="${pageContext.request.contextPath}/qna/qnaList">질문과답변</a>
  </li>
    </ul></div>
      </div>
    </div>
  </nav>
  
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
        <li>
        	<button>1-9평</button>
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
	
	<div class="row" style=" width: 70%; margin: 0 auto;">
	    <div class="col-md-4">
	      <div class="thumbnail">
	        <a href="#" target="_blank">
	          <img src="${pageContext.request.contextPath}/img/288.jpg" alt="Lights" style="width:100%">
	          <div class="caption">
	            <p>작아도 따뜻하게 꾸민 나만의 방 W.최글렛</p>
	          </div>
	        </a>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <div class="thumbnail">
	        <a href="#" target="_blank">
	          <img src="${pageContext.request.contextPath}/img/289.jpg" alt="Nature" style="width:100%">
	          <div class="caption">
	            <p>'혼자'라는 행복을 포기하지 말아요. W. 꽃량화</p>
	          </div>
	        </a>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <div class="thumbnail">
	        <a href="#" target="_blank">
	          <img src="${pageContext.request.contextPath}/img/300.jpg" alt="Fjords" style="width:100%">
	          <div class="caption">
	            <p>"오래된 집에 다양한 취미를 전시하며 삽니다" W. 리앙_</p>
	          </div>
	        </a>
	      </div>
	    </div>
		<div class="col-md-4">
	      <div class="thumbnail">
	        <a href="#" target="_blank">
	          <img src="${pageContext.request.contextPath}/img/301.jpg" alt="Lights" style="width:100%">
	          <div class="caption">
	            <p>16년 된 전셋집 체리몰딩을 품기로 한 예비 공예작가 W. Soodori</p>
	          </div>
	        </a>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <div class="thumbnail">
	        <a href="#" target="_blank">
	          <img src="${pageContext.request.contextPath}/img/302.jpg" alt="Nature" style="width:100%">
	          <div class="caption">
	            <p>하루하루 여행처럼 사는 그 남자의 아파트 W. 이케아줄자</p>
	          </div>
	        </a>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <div class="thumbnail">
	        <a href="#" target="_blank">
	          <img src="${pageContext.request.contextPath}/img/303.jpg" alt="Fjords" style="width:100%">
	          <div class="caption">
	            <p>나를 표현하는 캔버스, 내 그림으로 채운 복층 원룸 W. 키치클래식</p>
	          </div>
	        </a>
	      </div>
	    </div>    
    
    
    

	
	</div> <!-- end row -->
	
</body>
</html>