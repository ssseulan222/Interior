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
	<style>
	
	
	.navigation-primary-menu{
		display: block;
	}
	ul{
		list-style: none;
	}
	
	body {
		margin:0;
	}
	.navigation-primary-menu .navigation-menu>li{
		position: relative;
	    display: inline-block;
	    margin: 0 25px -23px -15px;
	    font-size: 18px;
	    font-weight: bold;
	}
	.navigation-primary__menu .navigation-menu>li.current>.title>a {
    color: #35C5F0;
	}
	.navigation-primary__logo {
   		position: static;
    	margin-right: 50px;
    	transform: none;
	}
	.navbar {
	  overflow: hidden;
	  position: fixed;
	  top: 0;
	  width: 100%;
	}
	
	.navbar a {
	  float: left;
	  display: block;
	  color: black;
	  text-align: center;
	  padding: 14px 16px;
	  text-decoration: none;
	  font-size: 17px;
	}
	.navbar a>,active{
		color: #35C5F0;
	}
	.navbar a:hover {
	  background: #ddd;
	  color: black;
	}
	
	.main {
		  padding: 16px;
		  margin-top: 30px;
		  height: 1500px; /* Used in this example to enable scrolling */
	}
	.navigation-primary__container {
    z-index: 502;
    left: 0;
    right: 0;
    transition: top .1s;
    background-color: white;
    border-bottom: 1px solid #ededed;
	}
	.navigation-primary__user{
		float: right;
	}
	.navigation-primary__menu .navigation-menu>li>ul {
    	display: none;
    }
    .navigation-primary__write-btn {
    width: 74px;
    height: 23px;
    border: 1px solid #35C5F0;
    border-radius: 16px;
    color: #09ADDB;
    font-weight: bold;
    text-align: center;
    transition: .1s background, .1s color;
}

    
</style>
</head>
<body>

<div class="navbar navigation-primary__container">
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
					<a href="${pageContext.request.contextPath}/homeparty/homepartylist">집들이</a>
				</li>
			<li class="navigation-menu__primary">
				<div class="title">
					<a href="/store"> <span
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
		<div>
		
		<div class="navigation-primary__user unlogged">
            <div class="navigation-primary__user__unlogged">
            <a class="navigation-primary__write-btn navigation-primary__button button-md" href="${pageContext.request.contextPath}/write/WriteHome" style="font-size: 13px;">글쓰기</a>
            <!-- 비로그인 상태 -->
            <c:if test="${m.nickname == null}"> 
            
              <a href="${pageContext.request.contextPath}/member/memberLogin">로그인</a> 
              <a href="${pageContext.request.contextPath}/member/memberJoin">회원가입</a>
              </c:if>
              <!-- 로그인 상태 -->
              <c:if test="${sessionScope.m.nickname != null}"> 
              <a href="${pageContext.request.contextPath}/member/memberMyHome">마이홈</a>
              </c:if>
            </div>
          </div>
		</div>
		</div>


</body>
</html>