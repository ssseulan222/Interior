<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<jsp:include page="../temp/header.jsp" />
<style type="text/css">
	body{
		margin-top: 80px;
	}
	.upload-types{
		padding-top: 60px;
	}
	.container{
		margin-right: auto;
	    margin-left: auto;
	    width: calc(100% - 300px);
	    max-width: 100%;
	    box-sizing: border-box;
	    min-height: 1px;
	}
	.row{
		display: flex;
		flex-wrap: wrap;
		box-sizing: border-box;
		margin-right: -10px;
		margin-left: -10px;
	}
	.col-lg-3 {
	    position: relative;
	    width: 100%;
	    min-height: 1px;
	    box-sizing: border-box;
	    -webkit-box-flex: 0;
	    -webkit-flex: 0 0 25%;
	    -moz-box-flex: 0;
	    -moz-flex: 0 0 25%;
	    -ms-flex: 0 0 25%;
	    flex: 0 0 25%;
	    max-width: 25%;
	    padding-right: 5px;
	    padding-left: 5px;
	}
	.upload-types__item {
	    display: block;
	    max-width: 160px;
	    margin: 0 auto 60px;
	}
	a{
		cursor : pointer;
		touch-action: manipulation;
		color: inherit;
		text-decoration: none;
	}
	.upload-types__item__pictogram {
	    position: relative;
	    width: 100%;
	}
	.upload-types__item__pictogram__contents {
	    position: absolute;
	    left: 50%;
	    top: 50%;
	    transform: translate(-50%, -50%);
	    text-align: center;
	    width: 100%;
	}
	.icon {
	    background-repeat: no-repeat;
	    background-size: 400px;
	    display: inline-block;
	}
	.icon-write-dark-photo {
	    width: 70px;
	    height: 56px;
	    background-position: top 0px left 0px;
	}
	.icon-write, [class*=icon-write-] {
	    background-image: url(../img/icon-write.png);
	}
	.upload-types__item__pictogram__contents>p {
	    margin-top: 15px;
	    font-size: 18px;
	}
	.upload-types__item__pictogram:after {
	    content: '';
	    display: block;
	    padding-top: 100%;
	    background: #fafafa;
	    border-radius: 50%;
	}
	.upload-types__item__caption {
	    font-size: 13px;
	}
	.upload-types__item__caption {
	    text-align: center;
	    margin-top: 20px;
	    font-size: 11px;
	    line-height: 1.46;
	    color: #bdbdbd;
	}
	.icon-write-dark-project {
	    width: 70px;
	    height: 56px;
	    background-position: top 0px left -100px;
	}
	.icon-write-dark-review-e {
	    width: 70px;
	    height: 56px;
	    background-position: top -86px left 0px;
	}
	.icon-write-dark-qna {
	    width: 70px;
	    height: 56px;
	    background-position: top -86px left -100px;
	}
</style>
</head>
<body>
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
			      <a class="upload-types__item upload-types__item__project" href="../homeparty/homepartyWritelist">
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