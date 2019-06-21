<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/MyPageProfiletop.css" type="text/css">
<jsp:include page="${pageContext.request.contextPath}/temp/header.jsp" />
<script type="text/javascript">


</script>

<style type="text/css">
	/*  contents css*/
	body{
		margin-top: 50px;
	}
	.contents{
		padding-top: 50px;
	}
	section{
		
		display: block;
	}
	.wrap-contents{
		width: 66%;
		order :2;
		margin-left: 8.333333333333333333%;
		padding-left: 10px;
		padding-right: 10px;
	}
	.post{
		margin-bottom: 60px;
		position: relative;
	}
	.post-title{
		color: #000;
	    font-weight: 700;
	    position: relative;
	    margin-bottom: 20px;
	}
	h5 {
		font-size: 18px;
		
	}
	.post-upload{
		display: flex;
		justify-content: center;
		align-items: center;
		width: 100%;    
		padding: 80px 0;
	    border: 1px dashed #dbdbdb;
	    box-sizing: border-box;
	    color: #757575;
	    font-weight: 700;
	    font-size: 13px;
	}
	
	
</style>
</head>
<body>
	<div class="user-show-layout">
		<div class="wrap-nav">
			<div class="myhome-nav">
				<nav class="page-myhome-nav">
					<ul style="transform : translateX(0px);">
						<li class="page-nav-item"><a class="active" href="./memberMyHome">프로필</a></li>
						<li class="page-nav-item"><a href="./memberMyShopping">나의쇼핑</a></li>
						<li class="page-nav-item"><a href="./memberMyReview">나의리뷰</a></li>
						<li class="page-nav-item"><a href="#">설정</a></li>
					</ul>
				</nav>
				<nav class="page-myhome-nav">
					<ul style="transform : translateX(0px);">
						<li class="page-nav-item page-nav-item-nav"><a href="./memberMyHome" class="active active-botton">모두보기 </a></li>
						<li class="page-nav-item page-nav-item-nav"><a href="./memberMyProfilePhoto">사진</a></li>
						<li class="page-nav-item page-nav-item-nav"><a href="./memberHousewarming">집들이</a></li>
						<li class="page-nav-item page-nav-item-nav"><a href="./memberQuestions">질문과답변</a></li>
					</ul>
				</nav>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="wrap-profile">
					<div class="sticky-container" style="position: sticky; top:51px;">
						<div class="sticky-child" style="position: relative;">
							<div class="user-profile">
								<div class="user-profile-image">
									<img alt="myhomemain" src="../img/myhomemain.png">
								</div>
								<div class="user-profile-top">
									<div style="margin-top: 10px">
										<strong class="profile-info-name">별명</strong>
									</div>
									<div style="margin-left: -10px; margin-right: -10px;  color: #bdbdbd;">
										<div style="display: inline-block;" class="follower"><a>팔로워</a></div>
										<div style="display: inline-block;" class="follower"><a>팔로잉</a></div>
									</div>
								</div>
								<div class="short-cut">
									<div class="short-cut-item">
										<a href="#">스크랩북</a>
									</div>
									<div class="short-cut-item">
										<a href="#">좋아요</a>
									</div>
									<div class="short-cut-item">
										<a href="#">설정</a>
									</div>
								</div>
							</div>							
						</div>						
					</div>
				</div>
				<div class="wrap-contents">
					<div class="contents">
						<section class="post">
							<h5 class="post-title">사진 <strong>0</strong></h5>
							<a href="#" class="post-upload"><span></span>첫번째 사진을 올려보세요</a>
						</section>
						<section class="post">
							<h5 class="post-title">집들이 <strong>0</strong></h5>
							<a href="#" class="post-upload"><span></span>첫번째 집들이를 올려보세요</a>
						</section>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
