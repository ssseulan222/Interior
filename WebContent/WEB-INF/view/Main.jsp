<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.body {
	width: 100%;
	height: 100%;
}

#banner {
	width: 60%;
	margin: 0 auto;
	background-color: #1778ba;
	margin: 0 auto;
	border-radius: 15px;
	text-align: center;
	border-radius: 15px;
	padding: 30px 0;
}

#tag {
	width: 60%;
	margin: 0 auto;
}

#recommend {
	width: 60%;
	margin: 0 auto;
}

#register {
	width: 60%;
	margin: 0 auto;
}

#portfolio{
	width: 60%;
	margin: 0 auto;
}

#required{
	width: 60%;
	margin: 0 auto;
}

#banner>span {
	font-family: 나눔고딕;
	font-weight: bold;
	font-size: 20px;
}

#estimate {
	border-radius: 15px;
	background-color: white;
	color: black;
	padding: 10px 20px;;
}

#text1 {
	color: white;
}

#tag li {
border-radius: 20px;
	padding: 10px 7px;
	display: inline;
	list-style: none;
	margin-left: 15px;
	background-color: #ededed;
	color: rgb(66, 66, 66);
	font-weight: bold;
}
</style>
</head>
<body>
	<div class="body">
		<div id="banner">
			<img alt="banner" src="../img/calculator.png"> <span id="text1">시공별
				비용이 궁금하다면? </span><span id="estimate">예상견적</span>
		</div>
		<div id="tag">
			<span>전문가 찾기</span>
			<ul>
				<li>종합</li>
				<li>도배</li>
				<li>장판</li>
				<li>마루</li>
				<li>주방</li>
				<li>목공</li>
				<li>욕실</li>
				<li>타일</li>
				<li>페인트</li>
				<li>시트필름</li>
				<li>도어</li>
				<li>샷시</li>
				<li>블라인드</li>
				<li>설비</li>
				<li>조명</li>
			</ul>
			<br>
			<ul>
				<li>전문디자인</li>
				<li>방산시장</li>
				<li>기타</li>
			</ul>
		</div>
		<div id="recommend">
			<span>추천 인테리어 전문가</span>
			<div></div>
		</div>
		<div id="register">
			<p>
				인테리어 시공 전문가이신가요? <a href="${pageContext.request.contextPath}/expert/ExpertJoin">가입신청하기</a>
			</p>
		</div>
		<div id="required">
			<span>인테리어 계약 전 필독!</span>
			<div></div>
		</div>
		<div id="portfolio">
			<span>추천 포트폴리오</span>
			<div></div>
		</div>
	</div>
</body>
</html>