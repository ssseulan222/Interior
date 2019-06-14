<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/ExpertSelect.css?ver2" rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="menu">
			<ul>
				<li><a href="#">모두보기</a></li>
				<li><a href="#">리뷰</a></li>
				<li><a href="#">포트폴리오</a></li>
				<li><a href="#">사진</a></li>
			</ul>
		</div>
	<div class="body">
		<div class="info">
			<h1 id="name">
				<!-- ${dto.name}-->
				인테리온 INTERION
			</h1>
			<span id="comfirm"> <img alt="check" src="./img/correct.png"> 전문성인증 <img
				alt="info" src="./img/info.png">
			</span>
				<br>
			<span>종합, 전문디자인</span>
				<br>
			<span>서울특별시 서초구, 서울특별시 동작구, 인천광역시,
				서울특별시 강남구</span>
			<div class="starPoint">
				<img alt="star" src="./img/star_hover.png" class="star"> <img
					alt="star" src="./img/star_hover.png" class="star"> <img
					alt="star" src="./img/star_hover.png" class="star"> <img
					alt="star" src="./img/star_hover.png" class="star"> <img
					alt="star" src="./img/star_hover.png" class="star">
					<span>31개</span>
			</div>
			<div class="button">
				<button id="advice">상담신청</button>
				<button id="more">
					<img alt="more" src="./img/more.png">
				</button>
			</div>
			<div>
				<table>
					<tr>
						<td class="th">위치</td>
						<td>서울특별시 서초구</td>
					</tr>
					<tr>
						<td class="th">경력</td>
						<td>5년 미만</td>
					</tr>
					<tr>
						<td class="th">A/S</td>
						<td>12개월</td>
					</tr>
				</table>
			</div>
			<div class="tag_div">
				<span class="tag">표준계약서</span> <span class="tag">표준견적서</span> <span
					class="tag">직영시공</span> <span class="tag">설계도면</span> <span
					class="tag">3D디자인</span> <span class="tag">전문감리</span> <span
					class="tag">공정표</span> <span class="tag">세금계산서</span> <span
					class="tag">현금영수증</span> <span class="tag">하자이행증권</span> <span
					class="tag">계약이행증권</span> <span class="tag">마감청소</span>
			</div>
			<div class="info">
				<p>::Make a Belief-믿음을 인테리어하다::</p>
				<br>
				<p>
					인테리온은 가감없는 투명한 원가격전으로 스마트하고 믿을 수 있는 인테리어를 지향합니다.<br><br>
					
					·인테리어 전문 플래너를 통한 친절하고 믿을 수 있는 상담<br>
					·고객의 니즈에 맞춰 최적화된 프로젝트 매니저 매칭<br>
					·시스템을 통해 원가격전을 투명하게 알려드리는 스마트 미팅<br>
					·수많은 현장경험으로 꼼꼼한마감을 약속하는 A급 시공팀<br><br>
					
					-Contact-<br>
					02-2135-7227<br>
					서초구 잠원동 31-3, Seoul, Korea
				</p>
			</div>
			<span class="cl" id="open">열기</span>
			<span class="cl" id="close">닫기</span>
		</div>
		<div class="review">
			<h3>고객들의 리뷰</h3><span class="cl" id="r_more">전체보기</span>
		</div>
		<div class="portfolio">
			<h3>포트폴리오</h3><span class="cl" id="p_more">전체보기</span>
		</div>
		<div class="photo">
			<h3>고객들의 리뷰</h3><span class="cl" id="ph_more">전체보기</span>
		</div>
	</div>
</body>
</html>