<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../temp/header.jsp" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/MyPageProfiletop.css" type="text/css">
<script type="text/javascript">
	
</script>
<style type="text/css">
	
</style>
</head>
<body>
<div class="user-show-layout">
		<div class="wrap-nav">
			<div class="myhome-nav">
				<nav class="page-myhome-nav">
					<ul style="transform : translateX(0px);">
						<li class="page-nav-item"><a class="active" href="./memberMyHome">프로필</a></li>
						<li class="page-nav-item"><a href="#">나의쇼핑</a></li>
						<li class="page-nav-item"><a href="#">나의리뷰</a></li>
						<li class="page-nav-item"><a href="#">설정</a></li>
					</ul>
				</nav>
				<nav class="page-myhome-nav">
					<ul style="transform : translateX(0px);">
						<li class="page-nav-item" style="font-size: 15px;"><a href="./memberMyHome">모두보기</a></li>
						<li class="page-nav-item" style="font-size: 15px;"><a href="./memberMyProfilePhoto">사진</a></li>
						<li class="page-nav-item" style="font-size: 15px;"><a href="./memberHousewarming"  class="active">집들이</a></li>
						<li class="page-nav-item" style="font-size: 15px;"><a href="./memberQuestions">질문과답변</a></li>
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
									<img alt="myhomemain" src="../images/myhomemain.png">
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
				
			</div>
		</div>
	</div>
</body>
</html>