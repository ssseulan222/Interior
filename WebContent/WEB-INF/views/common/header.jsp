<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>

<script src="//ajax.googleapis.com/ajax/libs/webfont/1/webfont.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/earlyaccess/notosanskr.css" media="all">
	
<script type="text/javascript">
	WebFont
			.load({
				// For early access or custom font
				custom : {
					families : [ 'Noto Sans KR' ],
					urls : [ 'https://fonts.googleapis.com/earlyaccess/notosanskr.css' ]
				}
			});
</script>

<meta name="csrf-param" content="authenticity_token">
<meta name="csrf-token"
	content="7EneuGO8zn0ZMh1rrtPFJuQv46Qp0KhXQcUE6FfMhrI+pM27RquG0zRDh1ikq4Atx+hDu2zjY9ncAOXWKGR9HQ==">

<script
	src="https://d1nyaccf3kuclt.cloudfront.net/dist/js/vendor-657a5e912f230aac5947.js"></script>
<script
	src="https://d1nyaccf3kuclt.cloudfront.net/dist/js/utils-a0a5555c959e72e94b35.js"></script>
<link rel="stylesheet" media="all"
	href="https://d1nyaccf3kuclt.cloudfront.net/assets/v3/bucket_ui/bucket_ui-9f9b265c083a1e7b5c38a4f9572ceb9750c6297655f7a6795170838db19ad8e8.css">
<link rel="stylesheet" media="screen"
	href="https://d1nyaccf3kuclt.cloudfront.net/assets/v3/bucket_ui/components-c5c2e6628b430c4bad9c1e71e4581ec7181028e78869db55aeef72a802151eb6.css">
<link rel="stylesheet" media="screen"
	href="https://d1nyaccf3kuclt.cloudfront.net/assets/v3/layout/application-f0e8777a43714b34fc55239ca0a7dafa06952ecff2becbe9df530b9c78213afd.css">
<link rel="stylesheet" media="all"
	href="https://d1nyaccf3kuclt.cloudfront.net/assets/v3/home/index-64530b8f7e4907730fde28c3358fe48ea530d9ca4bd4bf4ec3fff69231d8f8a8.css">
</head>
<body>
	<div id="navigation" class="navigation--top-banner-hidden">
		<nav class="navigation-primary-wrap sticky-top" style="height: 81px;">
			<div class="navigation-primary__container sticky-content float open"
				data-sticky-enabled="true" data-offset="0"
				style="position: fixed; bottom: auto; top: 0px;">
				<div class="navigation-primary">
					<button class="navigation-primary__menu-btn" aria-label="메뉴 열기">
						<span class="icon icon-etc-button-hamburger"></span>
					</button>
					<a class="navigation-primary__logo" href="<%=application.getContextPath()%>/index.do"> <span
						class="icon icon-etc-brand-bi-md logo-md" aria-label="오늘의집"></span>
						<span class="icon icon-etc-brand-bi-xs logo-sm" aria-hidden="true"></span>
					</a>
					<div class="navigation-primary__menu open">
						<ul class="navigation-menu">
							<li class="navigation-menu__primary current active">
								<div class="title">
									<a href="#"> <span
										class="icon mobile-icon icon-shortcut-home"></span> 커뮤니티 <span
										class="open-btn"> <span
											class="icon mobile-icon icon-pointer-angle-down-dark-md"></span>
									</span>
									</a>
								</div>
								<ul>
									<li class="navigation-menu__primary__secondary  active"><a
										href="#">홈</a></li>

									<li class="navigation-menu__primary__secondary "><a
										href="#">사진</a></li>

									<li class="navigation-menu__primary__secondary "><a
										href="#">집들이</a></li>

									<li class="navigation-menu__primary__secondary "><a
										href="#"> 질문과답변 </a></li>
								
								</ul>
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
								<ul>
									<li class="navigation-menu__primary__secondary "><a
										href="<%=application.getContextPath()%>/store/storeMain">스토어홈</a></li>

									<li
										class="navigation-menu__primary__secondary navigation-menu__category desktop-only ">
										<a href="#">카테고리</a>
									</li>

									<li class="navigation-menu__primary__secondary "><a
										href="#">랭킹</a></li>




								</ul>
							</li>
							<li class="navigation-menu__primary">
								<div class="title">
									<a href="#"> <span
										class="icon mobile-icon icon-shortcut-expert"></span> 전문가 <span
										class="open-btn"> <span
											class="icon mobile-icon icon-pointer-angle-down-dark-md"></span>
									</span>
									</a>
								</div>
								<ul>
									<li class="navigation-menu__primary__secondary "><a
										href="#">전문가홈</a></li>

									<li class="navigation-menu__primary__secondary "><a
										href="#">견적계산</a></li>

									<li class="navigation-menu__primary__secondary "><a
										href="#">전문가찾기</a></li>


								</ul>
							</li>
						</ul>

					</div>
					<div class="navigation-primary__search">
						<form class="navigation-search" action="#" accept-charset="UTF-8"
							method="get">
							<input name="utf8" type="hidden" value="✓">
							<div class="navigation-search__box" data-type="">
								<input class="navigation-search__box__submit" type="submit">
								<button class="navigation-search__box__category-btn"
									type="button"></button>
								<button class="navigation-search__box__icon" type="button">
									<span class="icon icon-etc-find-md-gray-dark"></span> <span
										class="icon icon-pointer-triangle-down-gray-dark-xs caret"></span>
								</button>
								<span class="navigation-search__box__icon_blur"> <span
									class="icon icon-etc-find-md-gray-dark"></span>
								</span> <input class="navigation-search__box__input" type="text"
									placeholder=" 검색" disabled="" size="1" name="query"
									autocomplete="off" value=""> <span
									class="navigation-search__box__bg"></span>
								<button class="navigation-search__box__cancel" type="button">
									<span class="icon icon-pointer-x-solid-md"></span>
								</button>
							</div>
							<div style="display: none;"></div>
						</form>
					</div>
					<div class="navigation-primary__actions">
						<button
							class="navigation-primary__search-btn navigation-primary__button button-sm"
							title="검색">
							<span class="icon icon-etc-find-md-gray-dark"></span> <span
								class="icon active icon-etc-find-md-white"></span>
						</button>
						<a
							class="navigation-primary__write-btn navigation-primary__button button-md"
							href="#">글쓰기</a> <a
							class="navigation-primary__cart-btn navigation-primary__button"
							title="장바구니" href="/cart"> <span
							class="icon icon-etc-cart-gray"></span> <span
							class="icon active icon-etc-cart-white"></span>
						</a>
					</div>
					
					<c:if test="${sessionScope.sellerDTO.id == null}"> 
					<div class="navigation-primary__user unlogged">
						<div class="navigation-primary__user__unlogged">
							<a class="navigation-primary__user__unlogged__login"
								href="<%=application.getContextPath()%>/index.do">로그인</a> 
								<a class="navigation-primary__user__unlogged__register" href="<%=application.getContextPath()%>/seller/sellerJoin">회원가입</a>
						</div>
					</div>
					</c:if>
					<c:if test="${sessionScope.sellerDTO.id != null}"> 
					<div class="navigation-primary__user unlogged">
						<div class="navigation-primary__user__unlogged">
							<a class="navigation-primary__user__unlogged__login"
								href="<%=application.getContextPath()%>/seller/sellerLogout">로그아웃</a> <a
								class="navigation-primary__user__unlogged__register"
								href="<%=application.getContextPath()%>/seller/sellerMain">${sellerDTO.id} 페이지</a>
						</div>
					</div>
					</c:if>
					
				</div>
			</div>
		</nav>
		<nav class="navigation-secondary-wrap sticky-top"
			style="height: auto;">
			<div class="navigation-secondary__container sticky-content open"
				data-sticky-enabled="false" style="position: relative;">
				<div class="navigation-secondary">
					<div class="navigation-secondary__menu">
						<ul>
							<li class="navigation-menu__primary__secondary  active"><a
								href="#">홈</a></li>

							<li class="navigation-menu__primary__secondary "><a
								href="#">사진</a></li>

							<li class="navigation-menu__primary__secondary "><a
								href="#">집들이</a></li>

							<li class="navigation-menu__primary__secondary "><a
								href="#"> 질문과답변 </a></li>
							
						</ul>
					</div>
					<div class="navigation-secondary__download">
						<a class="navigation-secondary__download__link" href="/app"> <span
							class="icon icon-etc-brand-app-icon-sm"></span>앱다운로드
						</a>
					</div>
				</div>
			</div>
		</nav>
</body>
</html>