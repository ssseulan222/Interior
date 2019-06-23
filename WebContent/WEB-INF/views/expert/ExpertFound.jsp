<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="../js/found_ph.js"></script>
<script src="../js/found.js"></script>
<link href="../css/location.css" rel="stylesheet" type="text/css" />
<link href="../css/found.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="main">
	<form action="./ExpertFound">
		<span id="ll" class="sp">서울특별시 강남구</span><span id="pp" class="sp">필요시공</span><button id="btn" class="sp" onclick="click"></button>
		<input type="text" name="location" id="location" class="loc"><input type="text" name="pro" id="pro" class="loc">
		</form><div class="l1">
			<ul id="locat">
				<li id="seoul" class="location">서울특별시<span>></span></li>
				<li id="busan" class="location">부산광역시<span>></span></li>
				<li id="daegu" class="location">대구광역시<span>></span></li>
				<li id="incheon" class="location">인천광역시<span>></span></li>
				<li id="gwangju" class="location">광주광역시<span>></span></li>
				<li id="daejeon" class="location">대전광역시<span>></span></li>
				<li id="ulsan" class="location">울산광역시<span>></span></li>
				<li id="gangwon" class="location">강원도<span>></span></li>
				<li id="gyunggi" class="location">경기도<span>></span></li>
				<li id="gyungsangnam" class="location">경상남도<span>></span></li>
				<li id="gyungsangbuk" class="location">경상북도<span>></span></li>
				<li id="jeonranam" class="location">전라남도<span>></span></li>
				<li id="jeonrabuk" class="location">전라북도<span>></span></li>
				<li id="chungchennam" class="location">충청남도<span>></span></li>
				<li id="chungchenbuk" class="location">충청북도<span>></span></li>
				<li id="saejong" class="location">세종특별자치시</li>
				<li id="jeju" class="location">제주특별자치도<span>></span></li>
			</ul>
		</div>
		<ul id="1" class="ul">
			<li class="seoul l">강남구</li>
			<li class="seoul l">강동구</li>
			<li class="seoul l">강북구</li>
			<li class="seoul l">강서구</li>
			<li class="seoul l">관악구</li>
			<li class="seoul l">광진구</li>
			<li class="seoul l">구로구</li>
			<li class="seoul l">금천구</li>
			<li class="seoul l">노원구</li>
			<li class="seoul l">도봉구</li>
			<li class="seoul l">동대문구</li>
			<li class="seoul l">동작구</li>
			<li class="seoul l">마포구</li>
			<li class="seoul l">서대문구</li>
			<li class="seoul l">서초구</li>
			<li class="seoul l">성동구</li>
			<li class="seoul l">성북구</li>
			<li class="seoul l">송파구</li>
			<li class="seoul l">양천구</li>
			<li class="seoul l">영등포구</li>
			<li class="seoul l">용산구</li>
			<li class="seoul l">은평구</li>
			<li class="seoul l">종로구</li>
			<li class="seoul l">중구</li>
			<li class="seoul l">중랑구</li>
		</ul>
		<ul id="2" class="ul">
			<li class="busan l">강성구</li>
			<li class="busan l">금정구</li>
			<li class="busan l">남구</li>
			<li class="busan l">동구</li>
			<li class="busan l">동래구</li>
			<li class="busan l">부산진구</li>
			<li class="busan l">북구</li>
			<li class="busan l">사상구</li>
			<li class="busan l">사하구</li>
			<li class="busan l">서구</li>
			<li class="busan l">수영구</li>
			<li class="busan l">연제구</li>
			<li class="busan l">영도구</li>
			<li class="busan l">중구</li>
			<li class="busan l">해운대구</li>
			<li class="busan l">기장군</li>
		</ul>
		<ul id="3" class="ul">
			<li class="daegu l">남구</li>
			<li class="daegu l">달서구</li>
			<li class="daegu l">동구</li>
			<li class="daegu l">북구</li>
			<li class="daegu l">서구</li>
			<li class="daegu l">수성구</li>
			<li class="daegu l">중구</li>
			<li class="daegu l">달성군</li>
		</ul>
		<ul id="4" class="ul">
			<li class="incheon l">계양구</li>
			<li class="incheon l">미추홀구</li>
			<li class="incheon l">남동구</li>
			<li class="incheon l">동구</li>
			<li class="incheon l">부평구</li>
			<li class="incheon l">서구</li>
			<li class="incheon l">연수구</li>
			<li class="incheon l">중구</li>
			<li class="incheon l">강화군</li>
			<li class="incheon l">옹진군</li>
		</ul>
		<ul id="5" class="ul">
			<li class="gwangju l">광산구</li>
			<li class="gwangju l">남구</li>
			<li class="gwangju l">동구</li>
			<li class="gwangju l">북구</li>
			<li class="gwangju l">서구</li>
		</ul>
		<ul id="6" class="ul">
			<li class="daejeon l">대덕구</li>
			<li class="daejeon l">동구</li>
			<li class="daejeon l">서구</li>
			<li class="daejeon l">유성구</li>
			<li class="daejeon l">중구</li>
		</ul>
		<ul id="7" class="ul">
			<li class="ulsan l">남구</li>
			<li class="ulsan l">동구</li>
			<li class="ulsan l">북구</li>
			<li class="ulsan l">중구</li>
			<li class="ulsan l">울주군</li>
		</ul>
		<ul id="8" class="ul">
			<li class="gangwon l">강릉시</li>
			<li class="gangwon l">고성군</li>
			<li class="gangwon l">동해시</li>
			<li class="gangwon l">삼척시</li>
			<li class="gangwon l">속초시</li>
			<li class="gangwon l">양구군</li>
			<li class="gangwon l">양양군</li>
			<li class="gangwon l">영월군</li>
			<li class="gangwon l">원주시</li>
			<li class="gangwon l">인제군</li>
			<li class="gangwon l">정선군</li>
			<li class="gangwon l">철원군</li>
			<li class="gangwon l">춘천시</li>
			<li class="gangwon l">태백시</li>
			<li class="gangwon l">평창군</li>
			<li class="gangwon l">홍천군</li>
			<li class="gangwon l">화천군</li>
			<li class="gangwon l">횡성군</li>
		</ul>
		<ul id="9" class="ul">
			<li class="gyunggi l">가평군</li>
			<li class="gyunggi l">고양시</li>
			<li class="gyunggi l">과천시</li>
			<li class="gyunggi l">광명시</li>
			<li class="gyunggi l">광주시</li>
			<li class="gyunggi l">구리시</li>
			<li class="gyunggi l">군포시</li>
			<li class="gyunggi l">김포시</li>
			<li class="gyunggi l">남양주시</li>
			<li class="gyunggi l">동두천시</li>
			<li class="gyunggi l">부천시</li>
			<li class="gyunggi l">성남시</li>
			<li class="gyunggi l">수원시</li>
			<li class="gyunggi l">시흥시</li>
			<li class="gyunggi l">안산시</li>
			<li class="gyunggi l">안양시</li>
			<li class="gyunggi l">양주시</li>
			<li class="gyunggi l">양평군</li>
			<li class="gyunggi l">여주시</li>
			<li class="gyunggi l">연천군</li>
			<li class="gyunggi l">오산시</li>
			<li class="gyunggi l">용인시</li>
			<li class="gyunggi l">의왕시</li>
			<li class="gyunggi l">의정부시</li>
			<li class="gyunggi l">이천시</li>
			<li class="gyunggi l">파주시</li>
			<li class="gyunggi l">평택시</li>
			<li class="gyunggi l">포천시</li>
			<li class="gyunggi l">하남시</li>
			<li class="gyunggi l">화성시</li>
			<li class="gyunggi l">안성시</li>
		</ul>
		<ul id="10" class="ul">
			<li class="gyungsangnam l">거제시</li>
			<li class="gyungsangnam l">거창군</li>
			<li class="gyungsangnam l">고성군</li>
			<li class="gyungsangnam l">김해시</li>
			<li class="gyungsangnam l">남해군</li>
			<li class="gyungsangnam l">마산시</li>
			<li class="gyungsangnam l">밀양시</li>
			<li class="gyungsangnam l">사천시</li>
			<li class="gyungsangnam l">산청군</li>
			<li class="gyungsangnam l">양산시</li>
			<li class="gyungsangnam l">의령군</li>
			<li class="gyungsangnam l">진주시</li>
			<li class="gyungsangnam l">창녕군</li>
			<li class="gyungsangnam l">창원시</li>
			<li class="gyungsangnam l">통영시</li>
			<li class="gyungsangnam l">하동군</li>
			<li class="gyungsangnam l">함안군</li>
			<li class="gyungsangnam l">함양군</li>
			<li class="gyungsangnam l">합천군</li>
		</ul>
		<ul id="11" class="ul">
			<li class="gyungsangbuk l">경산시</li>
			<li class="gyungsangbuk l">경주시</li>
			<li class="gyungsangbuk l">구미시</li>
			<li class="gyungsangbuk l">김천시</li>
			<li class="gyungsangbuk l">문경시</li>
			<li class="gyungsangbuk l">상주시</li>
			<li class="gyungsangbuk l">안동시</li>
			<li class="gyungsangbuk l">영주시</li>
			<li class="gyungsangbuk l">영천시</li>
			<li class="gyungsangbuk l">포항시</li>
			<li class="gyungsangbuk l">고령군</li>
			<li class="gyungsangbuk l">군위군</li>
			<li class="gyungsangbuk l">봉화군</li>
			<li class="gyungsangbuk l">성주군</li>
			<li class="gyungsangbuk l">영덕군</li>
			<li class="gyungsangbuk l">영양군</li>
			<li class="gyungsangbuk l">예천군</li>
			<li class="gyungsangbuk l">울릉군</li>
			<li class="gyungsangbuk l">울진군</li>
			<li class="gyungsangbuk l">의성군</li>
			<li class="gyungsangbuk l">청도군</li>
			<li class="gyungsangbuk l">청송군</li>
			<li class="gyungsangbuk l">칠곡군</li>
		</ul>
		<ul id="12" class="ul">
			<li class="jeonranam l">광양시</li>
			<li class="jeonranam l">나주시</li>
			<li class="jeonranam l">목포시</li>
			<li class="jeonranam l">순천시</li>
			<li class="jeonranam l">여수시</li>
			<li class="jeonranam l">강진군</li>
			<li class="jeonranam l">고흥군</li>
			<li class="jeonranam l">곡성군</li>
			<li class="jeonranam l">구례군</li>
			<li class="jeonranam l">담양군</li>
			<li class="jeonranam l">무안군</li>
			<li class="jeonranam l">보성군</li>
			<li class="jeonranam l">신안군</li>
			<li class="jeonranam l">영광군</li>
			<li class="jeonranam l">영암군</li>
			<li class="jeonranam l">완도군</li>
			<li class="jeonranam l">장성군</li>
			<li class="jeonranam l">장흥군</li>
			<li class="jeonranam l">진도군</li>
			<li class="jeonranam l">함평군</li>
			<li class="jeonranam l">해남군</li>
			<li class="jeonranam l">화순군</li>
		</ul>
		<ul id="13" class="ul">
			<li class="jeonrabuk l">군산시</li>
			<li class="jeonrabuk l">김제시</li>
			<li class="jeonrabuk l">남원시</li>
			<li class="jeonrabuk l">익산시</li>
			<li class="jeonrabuk l">전주시</li>
			<li class="jeonrabuk l">정읍시</li>
			<li class="jeonrabuk l">고창군</li>
			<li class="jeonrabuk l">무주군</li>
			<li class="jeonrabuk l">부안군</li>
			<li class="jeonrabuk l">순창군</li>
			<li class="jeonrabuk l">완주군</li>
			<li class="jeonrabuk l">임실군</li>
			<li class="jeonrabuk l">장수군</li>
			<li class="jeonrabuk l">진안군</li>
		</ul>
		<ul id="14" class="ul">
			<li class="chungchennam l">계룡시</li>
			<li class="chungchennam l">공주시</li>
			<li class="chungchennam l">논산시</li>
			<li class="chungchennam l">보령시</li>
			<li class="chungchennam l">서산시</li>
			<li class="chungchennam l">아산시</li>
			<li class="chungchennam l">천안시</li>
			<li class="chungchennam l">금산군</li>
			<li class="chungchennam l">당진시</li>
			<li class="chungchennam l">부여군</li>
			<li class="chungchennam l">서천군</li>
			<li class="chungchennam l">연기군</li>
			<li class="chungchennam l">예산군</li>
			<li class="chungchennam l">청양군</li>
			<li class="chungchennam l">태안군</li>
			<li class="chungchennam l">홍성군</li>
		</ul>
		<ul id="15" class="ul">
			<li class="chungchenbuk l">제천시</li>
			<li class="chungchenbuk l">청주시</li>
			<li class="chungchenbuk l">충주시</li>
			<li class="chungchenbuk l">괴산군</li>
			<li class="chungchenbuk l">단양군</li>
			<li class="chungchenbuk l">보은군</li>
			<li class="chungchenbuk l">영동군</li>
			<li class="chungchenbuk l">옥천군</li>
			<li class="chungchenbuk l">음성군</li>
			<li class="chungchenbuk l">증평군</li>
			<li class="chungchenbuk l">진천군</li>
			<li class="chungchenbuk l">청원군</li>
		</ul>
		<ul id="16" class="ul">
			<li class="jaeju l">제주시</li>
			<li class="jaeju l">서귀포시</li>
		</ul>

		<ul class="ul2">
			<li class="p">종합</li>
			<li class="p">도배</li>
			<li class="p">장판</li>
			<li class="p">마루</li>
			<li class="p">주방</li>
			<li class="p">목공</li>
			<li class="p">욕실</li>
			<li class="p">타일</li>
			<li class="p">페인트</li>
			<li class="p">시트필름</li>
			<li class="p">도어</li>
			<li class="p">샷시</li>
			<li class="p">블라인드</li>
			<li class="p">설비</li>
			<li class="p">조명</li>
			<li class="p">전문디자인</li>
		</ul>
		<div id="expert">
			<c:if test="${list.size() != 0}">
				<c:forEach begin="0" end="${list.size()-1}" var="i">
					<div>포트폴리오 준비중</div>
					<div id="expert">
						<div id="expert_info">
							<img alt="profile" src=""> <span id="name">${list[i].getName()}</span>
							<span>상담신청</span>
						</div>
						<div id="info">
							<p>${list[i].getInfo()}</p>
						</div>
					</div>
				</c:forEach>
			</c:if>

		</div>
	</div>
</body>
</html>