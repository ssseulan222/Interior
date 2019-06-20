<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/pignose.calendar.css">
<script src="./pignoce.calendar.js"></script>
</head>
<body>
	<header>
		<img alt="logo" src="./img/logo.png"><span>오늘의집</span>
	</header>
	<div>
		<img alt="expert_logo" src=""> <span>인테리온 INTERION</span> <img
			alt="correct" src="./img/correct"> <span> <img
			alt="loading" src="./img/loding"> 초기화
		</span>
	</div>
	<div>
		<img alt="" src=""> <span>해당 전문가님의 시공 가능 지역</span> <br>
		서울특별시 서초구, 서울특별시 동작구, 인천광역시, 서울특별시 강남구
	</div>
	<div>
		<span>필요한 시공 항목을 모두 선택해주세요.</span> <input type="button" value="종합">
		<input type="button" value="전문디자인">
	</div>
	<div>
		<span>이름</span> <input type="text">
	</div>
	<div>
		<span>연락처</span> <input type="text">-<input type="text">-<input
			type="text">
	</div>
	<div>
		<span>시공 지역</span>
		<button>
			서울특별시 강남구 <span>▼</span>
		</button>
	</div>
	<div>
		<table>
			<tr>
				<td>아파트</td><td>오피스텔</td>
			</tr>
			<tr>
				<td>빌라</td><td>주택</td>
			</tr>
			<tr>
				<td>사무공간</td><td>상업공간</td>
			</tr>
		</table>
		<table>
			<tr>
				<td>공급</td><td>전용</td>
			</tr>
		</table>
		<select>
			<option>면적</option>
		</select>
		<span></span>
	</div>
	<div>
		<span>예산 범위</span>
		<select>대략적인 예산을 선택해주세요</select>
		<span>해당 전문가의 최소 시공가능금액은 500만원입니다.</span>
		<span></span>
	</div>
	<div>
		<span>시공 완료 희망일(이사예정일)</span>
		<div class="calendar"></div>
	</div>
	<div>
		<span>상담 내용</span>
		<textarea rows="" cols=""></textarea>
	</div>
	<div>
		<span>참고사진</span>(선택)
		<div>
		
		</div>
		현장 사진을 올려주시면 전문가분들이 참고해주셔서 더 빠르고 정확한 견적을 받을 수 있습니다.<br>
		최대 5장까지 등록할 수 있습니다.
	</div>
	<div>
		<input type="checkbox"> <a>서비스 이용을 위한 제3자 정보제공</a> 동의
	</div>
	<button>상담 신청하기</button>
</body>
</html>