<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/writeHomelist.css">
<style type="text/css">
	
</style>
</head>
<body>
<c:import url="../common/header.jsp" />
	<main role="main" id="root">
		<section class="container upload-types">
			<h2 class="text-black bold">글쓰기</h2>
			<div class="row">
			    <section class="col-4 col-lg-3 col-xl-2 upload-types__item__wrap">
			      <a class="upload-types__item upload-types__item__photo" href="/snapshots/upload_card">
			        <div class="upload-types__item__pictogram">
			          <div class="upload-types__item__pictogram__contents">
			            <span class="icon icon-write-dark-photo" aria-hidden="true"></span>
			            <span class="icon icon-write-light-photo active" aria-hidden="true"></span>
			            <p class="bold">사진</p>
			          </div>
			        </div>
			        <p class="upload-types__item__caption">예쁜 집 사진을 공유해서 많은 사람들에게 영감을 주세요.</p>
			</a>    </section>
			    <section class="col-4 col-lg-3 col-xl-2 upload-types__item__wrap">
			      <a class="upload-types__item upload-types__item__project" href="../homeparty/homepartyWrite">
			        <div class="upload-types__item__pictogram">
			          <div class="upload-types__item__pictogram__contents">
			            <span class="icon icon-write-dark-project" aria-hidden="true"></span>
			            <span class="icon icon-write-light-project active" aria-hidden="true"></span>
			            <p class="bold">집들이</p>
			          </div>
			        </div>
			        <p class="upload-types__item__caption">여러분의 집 인테리어 스토리를 사진 여러장과 함께 자랑하세요.</p>
			</a>    </section>
			    <section class="col-4 col-lg-3 col-xl-2 upload-types__item__wrap">
			      <a class="upload-types__item upload-types__item__review-e" href="/expert_reviews/new?source=6">
			        <div class="upload-types__item__pictogram">
			          <div class="upload-types__item__pictogram__contents">
			            <span class="icon icon-write-dark-review-e" aria-hidden="true"></span>
			            <span class="icon icon-write-light-review-e active" aria-hidden="true"></span>
			            <p class="bold">전문가/시공 리뷰</p>
			          </div>
			          
			           
			        </div>
			        <p class="upload-types__item__caption">전문가, 시공업체의 리뷰를 쓰고 포인트도 받으세요.</p>
			</a>    </section>
			    <section class="col-4 col-lg-3 col-xl-2 upload-types__item__wrap">
			      <a class="upload-types__item upload-types__item__qna" href="../qna/qnaWrite">
			        <div class="upload-types__item__pictogram">
			          <div class="upload-types__item__pictogram__contents">
			            <span class="icon icon-write-dark-qna" aria-hidden="true"></span>
			            <span class="icon icon-write-light-qna active" aria-hidden="true"></span>
			            <p class="bold">질문하기</p>
			          </div>
			        </div>
			        <p class="upload-types__item__caption">인테리어 고수들과 전문가들에게 질문을 해보세요.</p>
			</a>    </section>
		  </div>
		</section>
	</main>
</body>
</html>