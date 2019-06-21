<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/MyPageProfiletop.css" type="text/css">
<jsp:include page="${pageContext.request.contextPath}/temp/header.jsp"/>
<style type="text/css">
	body{
		margin-top: 50px;
	}
	#content{
		width: 950px;
		margin: 50px auto;
		overflow: hidden;
	}
	div{
		display: block;
	}
	#search-panel{
		margin-bottom: 40px;
		overflow: hidden;
	}
	.title{
		font-size: 18px;
		font-weight: bold;
	}
	.search{
		padding-top: 10px;
	}
	.search-query{
		position: relative;
	}
	input{
		float: left;
		width: 85%;
		display: block;
	    padding: 0 60px 0 20px;
	    border: 1px solid #dcdcdc;
	    box-sizing: border-box;
	    height: 50px;
	    font-size: 18px;
	    line-height: 50px;
	}
	#brand-search{
		display: block;
	    width: 100px;
	    height: 50px;
	    line-height: 50px;
	    border: none;
	    border-radius: 4px;
	    background-color: #35c5f0;
	    font-size: 15px;
	    font-weight: bold;
	    color: #ffffff;
	    text-align: center;
	    cursor: pointer;
	    float: right;
	}
	
</style>
<script type="text/javascript">
	
</script>

</head>
<body>
	<div class="user-show-layout">
		<div class="wrap-nav">
			<div class="myhome-nav">
				<nav class="page-myhome-nav">
					<ul style="transform : translateX(0px);">
						<li class="page-nav-item"><a href="./memberMyHome">프로필</a></li>
						<li class="page-nav-item"><a href="./memberMyShopping">나의쇼핑</a></li>
						<li class="page-nav-item"><a class="active" href="./memberMyReview">나의리뷰</a></li>
						<li class="page-nav-item"><a href="#">설정</a></li>
					</ul>
				</nav>
				<nav class="page-myhome-nav">
					<ul>
						<li class="page-nav-item page-nav-item-nav">
							<a href="./memberMyReview" class="active active-botton">리뷰쓰기</a>
						</li>
						<li class="page-nav-item page-nav-item-nav">
							<a href="./memberMyWriteReview">내가 작성한 리뷰</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>
		<div id="content">
			<div id="search-panel">
				<div class="title">
					내가 사용하는 가구 소품 리뷰쓰기
				</div>
				<div class="search">
					<div class="query search-query">
						<input type="text" id="review-search-query" placeholder="브랜드 제품이름" autocomplete="off">
						<span id="brand-search">검색</span>
					</div>
				</div>
			</div>
		</div>
		
	</div>
</body>
</html>