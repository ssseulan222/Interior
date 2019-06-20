<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/MyPageProfiletop.css" type="text/css">
<jsp:include page="../temp/header.jsp" />
<style type="text/css">
	body{
		margin-top: 50px;
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
							<a href="./memberMyReview">리뷰쓰기</a>
						</li>
						<li class="page-nav-item page-nav-item-nav">
							<a href="./memberMyWriteReview" class="active active-botton">내가 작성한 리뷰</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>
		<div>
			
		</div>
		
	</div>
</body>
</html>