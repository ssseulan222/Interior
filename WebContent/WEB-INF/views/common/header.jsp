<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link  rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css">
<%-- <script src="${pageContext.request.contextPath}/js/header.js" type="text/javascript"></script>
 --%>
 <script type="text/javascript">

$(function() {
	$('#home').on('click',function() {
		$('#home').addClass('activee');
		$('#homeparty').removeClass('activee');
		$('#qna').removeClass("activee");
	});
	$('#homeparty').on('click',function() {
		$('#homeparty').addClass('activee');
		$('#home').removeClass('activee');
		$('#qna').removeClass("activee");
	});
});
	
</script>
</head>
<body>
<nav class="navigation-primary-wrap sticky-top" style="height: auto;">
    <div class="navigation-primary__container sticky-content open" data-sticky-enabled="false" style="position: relative;">
      <div class="navigation-primary">
        <a class="navigation-primary__logo" href="${pageContext.request.contextPath}/index.do" style="margin-right: 1px;">
          <!-- <span class="icon icon-etc-brand-bi-md logo-md" aria-label="오늘의집"></span> -->
			<img alt="homepage" src="${pageContext.request.contextPath}/img/home-heart.png" style="height: 25px; width: 35px;">
		</a>        
<div class="navigation-primary__menu open">
          <ul class="navigation-menu">
  <li class="navigation-menu__primary current active">
    <div class="title">
      <a href="${pageContext.request.contextPath}/index.do">
        <span class="icon mobile-icon icon-shortcut-home"></span>
        커뮤니티
        <span class="open-btn">
          <span class="icon mobile-icon icon-pointer-angle-down-dark-md"></span>
        </span>
</a>    </div>
   <!--  <ul>
        <li class="navigation-menu__primary__secondary  active">
    <a href="/">홈</a>
  </li>
        <li class="navigation-menu__primary__secondary ">
    <a href="/projects?writer=self">집들이</a>
  </li>
  <li class="navigation-menu__primary__secondary ">
    <a href="/questions">        질문과답변
</a>
  </li>
    </ul> -->
  </li>
  
  
  
  <li class="navigation-menu__primary">
    <div class="title">
      <a href="${pageContext.request.contextPath}/store/storeMain">
        <span class="icon mobile-icon icon-shortcut-store"></span>
        스토어
        <span class="open-btn">
          <span class="icon mobile-icon icon-pointer-angle-down-dark-md"></span>
        </span>
</a>    </div>
   <!--  <ul>
        <li class="navigation-menu__primary__secondary ">
    <a href="/store">스토어홈</a>
  </li>

      <li class="navigation-menu__primary__secondary navigation-menu__category desktop-only ">
        <a href="/store/category?category=0&amp;order=popular">카테고리</a>
      </li>

        <li class="navigation-menu__primary__secondary ">
    <a href="/commerces/ranks">랭킹</a>
  </li>
    </ul> -->
  </li>
  
  
  <li class="navigation-menu__primary">
    <div class="title">
      <a href="/experts">
        <span class="icon mobile-icon icon-shortcut-expert"></span>
        전문가
        <span class="open-btn">
          <span class="icon mobile-icon icon-pointer-angle-down-dark-md"></span>
        </span>
</a>    </div>
    <!-- <ul>
        <li class="navigation-menu__primary__secondary ">
    <a href="/experts">전문가홈</a>
  </li>

        <li class="navigation-menu__primary__secondary ">
    <a href="/experts/calculator">견적계산</a>
  </li>

        <li class="navigation-menu__primary__secondary ">
    <a href="/expert_users">전문가찾기</a>
  </li>

        <li class="navigation-menu__primary__secondary ">
    <a href="/experts/bangsan">방산시장</a>
  </li>

    </ul> -->
  </li>
</ul>

        </div>
        <div class="navigation-primary__search" style="display: inline-block; float: right;">
        <!--   <form class="navigation-search" action="#" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="✓">
  <div class="navigation-search__box" data-type="">
    <input class="navigation-search__box__submit" type="submit">
    <button class="navigation-search__box__category-btn" type="button"></button>
    <button class="navigation-search__box__icon" type="button">
      <span class="icon icon-etc-find-md-gray-dark"></span>
      <span class="icon icon-pointer-triangle-down-gray-dark-xs caret"></span>
    </button>
    <span class="navigation-search__box__icon_blur">
      <span class="icon icon-etc-find-md-gray-dark"></span>
    </span>
    <input class="navigation-search__box__input" type="text" placeholder=" 검색" disabled="" size="1" name="query" autocomplete="off" value="">
    <span class="navigation-search__box__bg"></span>
    <button class="navigation-search__box__cancel" type="button">
      <span class="icon icon-pointer-x-solid-md"></span>
    </button>
  </div>
<div style="display: none;"></div></form>
        </div> -->
        <div class="navigation-primary__actions" style="display: inline-block;">
          <button class="navigation-primary__search-btn navigation-primary__button button-sm" title="검색">
            <span class="icon icon-etc-find-md-gray-dark"></span>
            <span class="icon active icon-etc-find-md-white"></span>
          </button>
          <a class="navigation-primary__write-btn navigation-primary__button button-md" href="/upload_select">글쓰기</a>
          <a class="navigation-primary__cart-btn navigation-primary__button" title="장바구니" href="/cart">
            <span class="icon icon-etc-cart-gray"></span>
            <span class="icon active icon-etc-cart-white"></span>
</a>        </div>
          <div class="navigation-primary__user unlogged">
            <div class="navigation-primary__user__unlogged">
              <a class="navigation-primary__user__unlogged__login" href="/users/sign_in">로그인</a>
              <a class="navigation-primary__user__unlogged__register" href="/normal_users/new">회원가입</a>
            </div>
          </div>
      </div>
    </div>
  </nav>
  
  
  <nav class="navigation-secondary-wrap sticky-top" style="height: auto;">
    <div class="navigation-secondary__container sticky-content open" data-sticky-enabled="false" style="position: relative;">
      <div class="navigation-secondary">
        <div class="navigation-secondary__menu"><ul>
        <li class="navigation-menu__primary__secondary  activee" id="home">
    <a href="${pageContext.request.contextPath}/index.do">홈</a>
  </li>

        <li class="navigation-menu__primary__secondary " id="homeparty">
    <a href="${pageContext.request.contextPath}/homeparty/homeparty">집들이</a>
  </li>
  <li class="navigation-menu__primary__secondary" id="qna">
    <a href="${pageContext.request.contextPath}/qna/qnaList">질문과답변</a>
  </li>
    </ul></div>
      </div>
    </div>
  </nav>
<%-- 
<div class="navbar navigation-primary__container">
	<nav>
	<div class="navigation-primary__menu open">
		<ul class="navigation-menu">
			<a class="navigation-primary__logo" href="${pageContext.request.contextPath}/index.do">
	          <span class="icon icon-etc-brand-bi-md logo-md" aria-label="오늘의집">오늘의집</span>
	          <span class="icon icon-etc-brand-bi-xs logo-sm" aria-hidden="true"></span>
			</a>
			<li class="navigation-menu__primary current active">
				<div class="title">
					<a href="/"> <span class="icon mobile-icon icon-shortcut-home"></span>
						커뮤니티 <span class="open-btn"> <span
							class="icon mobile-icon icon-pointer-angle-down-dark-md"></span>
					</span>
					</a>
				</div>
				</li>
			<li class="navigation-menu__primary">
				<div class="title">
					<a href="<%=application.getContextPath()%>/store/storeMain"> <span
						class="icon mobile-icon icon-shortcut-store"></span> 스토어 <span
						class="open-btn"> <span
							class="icon mobile-icon icon-pointer-angle-down-dark-md"></span>
					</span>
					</a>
				</div>
				</li>
			<li class="navigation-menu__primary">
				<div class="title">
					<a href="/experts"> <span
						class="icon mobile-icon icon-shortcut-expert"></span> 전문가 <span
						class="open-btn"> <span
							class="icon mobile-icon icon-pointer-angle-down-dark-md"></span>
						</span>
					</a>
				</div>
			</li>
		</ul>
		
	</div>
	
		
		<div class="navigation-primary__user unlogged">
            <div class="navigation-primary__user__unlogged">
            <!-- 비로그인 상태 -->
            <c:if test="${m.nickname == null}"> 
             <a class="navigation-primary__write-btn navigation-primary__button button-md" href="${pageContext.request.contextPath}/write/WriteHome" style="font-size: 13px;">글쓰기임시</a>
              <a href="<%=application.getContextPath() %>/member/memberLogin">로그인</a> 
              <a href="${pageContext.request.contextPath}/member/memberJoin">회원가입</a>
              </c:if>
              <!-- 로그인 상태 -->
              <c:if test="${sessionScope.m.nickname != null}"> 
              <a href="${pageContext.request.contextPath}/member/memberMyHome">마이홈</a>
               <a class="navigation-primary__write-btn navigation-primary__button button-md" href="${pageContext.request.contextPath}/write/WriteHome" style="font-size: 13px;">글쓰기</a>
              </c:if>
            </div>
          </div>
		</nav>
		<nav>
		<div class="nav_sub">
			<ul class="nav_sub_menu">
				<li>
					<div class="sub_title">
						<a href="#">홈</a>
						<a href="#">집들이</a>
					</div>
				</li>
			</ul>
		</div>
		</nav>
</div> --%>
</body>
</html>