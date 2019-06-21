<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
</script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/MyPageProfiletop.css" type="text/css">
<jsp:include page="${pageContext.request.contextPath}/temp/header.jsp" />
<style type="text/css">
	body{
		margin-top: 50px;
	}
	
	.nav-nav{
		font-size: 15px;
	}
	.container{
		margin-bottom: 40px;
	}
	.row{
		display: flex;
		flex-wrap: wrap;
		box-sizing: border-box;
		margin-right: -10px;
		margin-left: -10px;
	}
	.wrap-profile{
		order:1;
		padding-top: 30px;
		padding-left: 10px;
		padding-right: 10px;
	}
	.user-profile{
		padding-top: 20px;
	}
	.user-profile img{
		border-radius : 100%;
		width: 130px;
		height: 130px;
		margin-right: 50px;
	}
	.user-profile-top{
		font-size: 13px;
	}
	.profile-info-name{
		font-size: 30px;
    	line-height: 40px;
   		margin-bottom: 9px;
    	overflow-wrap: break-word;
	}
	.follower{
		color: inherit; 
		padding-left: 10px; 
		padding-right: 10px;
	}
	.short-cut{
		margin-top: 30px;
	}
	.short-cut-item a{
		display: block;
		width: 100%;
		margin-left: 10px;
		margin-right: 10px;
		
	}
	.short-cut{
		display: flex;
   		box-sizing: border-box;
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
						<li class="page-nav-item" style="font-size: 15px;"><a href="./memberMyHome">모두보기</a></li>
						<li class="page-nav-item" style="font-size: 15px;"><a href="./memberMyProfilePhoto" class="active-botton active">사진</a></li>
						<li class="page-nav-item" style="font-size: 15px;"><a href="./memberHousewarming">집들이</a></li>
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
				
			</div>
		</div>
	</div>
</body>
</html>