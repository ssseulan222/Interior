<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
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
			<li><a href="#">온라인리뷰</a></li>
			<li><a href="#">포트폴리오</a></li>
			<li><a href="#">사진</a></li>
			<li><a href="#">노하우</a></li>
		</ul>
	</div>
	<div class="info">
		<h3>
			<!-- ${dto.name}-->
			인테리온 INTERION
		</h3>
		<button type="button" class="btn btn-info btn-lg" data-toggle="modal"
			data-target="#myModal">
			<img alt="check" src="./img/correct.png"> 전문성인증 <img alt="info"
				src="./img/info.png">
		</button>
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">전문성인증</h4>
					</div>
					<div class="modal-body">
						<p>각 시공 분야별 공인자격증, 경력증명서, 실제로 시공했던 기록등을 확인한 전문가에게만 주는 인증마크입니다.</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
					</div>
				</div>

			</div>
		</div>
		<span>종합, 전문디자인</span>
		<span>서울특별시 서초구, 서울특별시 동작구, 인천광역시, 서울특별시 강남구</span>
		<div class="starPoint">
			<img alt="star" src="./img/star_hover.png">
				<img alt="star" src="./img/star_hover.png">
					<img alt="star" src="./img/star_hover.png">
						<img alt="star" src="./img/star_hover.png">
							<img alt="star" src="./img/star_hover.png">
							<span>31개</span>
		</div>
		<div class="button">
		<button>상담신청</button>
		<button><img alt="more" src="./img/more.png"></button>
		</div>
		<div>
			<table>
				<tr>
					<td>위치</td><td>서울특별시 서초구</td>
				</tr>
				<tr>
					<td>경력</td><td>5년 미만</td>
				</tr>
				<tr>
					<td>A/S</td><td>12개월</td>
				</tr>
			</table>
		</div>
		<div class="tag_div">
			<span class="tag">표준계약서</span>
			<span class="tag">표준견적서</span>
			<span class="tag">직영시공</span>
			<span class="tag">설계도면</span>
			<span class="tag">3D디자인</span>
			<span class="tag">전문감리</span>
			<span class="tag">공정표</span>
			<span class="tag">세금계산서</span>
			<span class="tag">현금영수증</span>
			<span class="tag">하자이행증권</span>
			<span class="tag">계약이행증권</span>
			<span class="tag">마감청소</span>
		</div>
		<div class="info">
			<p>::Make a Belief-믿음을 인테리어하다::</p>
			<br>
			<p>인테리온은 가감없는 투명한 원가격전으로<br> 
		</div>
	</div>
</body>
</html>