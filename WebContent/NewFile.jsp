<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#select").click(function() {
			if($("#location").css("display") == "none"){
				$("#location").css("display", "inline-block");
			}else{
				$("#location").css("display", "none");
				$(".ul").css("display", "none");
			}
		});
		
		$(".location").click(function() {
			if ($(this).attr("id") == "seoul") {
				$(".ul").css("display", "none");
				$("#1").css("display", "inline-block");
			} else if ($(this).attr("id") == "busan") {
				$(".ul").css("display", "none");
				$("#2").css("display", "inline-block");
			} else if ($(this).attr("id") == "daegu") {
				$(".ul").css("display", "none");
				$("#3").css("display", "inline-block");
			} else if ($(this).attr("id") == "incheon") {
				$(".ul").css("display", "none");
				$("#4").css("display", "inline-block");
			} else if ($(this).attr("id") == "gwangju") {
				$(".ul").css("display", "none");
				$("#5").css("display", "inline-block");
			} else if ($(this).attr("id") == "daejeon") {
				$(".ul").css("display", "none");
				$("#6").css("display", "inline-block");
			} else if ($(this).attr("id") == "ulsan") {
				$(".ul").css("display", "none");
				$("#7").css("display", "inline-block");
			} else if ($(this).attr("id") == "gangwon") {
				$(".ul").css("display", "none");
				$("#8").css("display", "inline-block");
			} else if ($(this).attr("id") == "gyunggi") {
				$(".ul").css("display", "none");
				$("#9").css("display", "inline-block");
			} else if ($(this).attr("id") == "gyungsangnam") {
				$(".ul").css("display", "none");
				$("#10").css("display", "inline-block");
			} else if ($(this).attr("id") == "gyungsangbuk") {
				$(".ul").css("display", "none");
				$("#11").css("display", "inline-block");
			} else if ($(this).attr("id") == "jeonranam") {
				$(".ul").css("display", "none");
				$("#12").css("display", "inline-block");
			} else if ($(this).attr("id") == "jeonrabuk") {
				$(".ul").css("display", "none");
				$("#13").css("display", "inline-block");
			} else if ($(this).attr("id") == "chungchennam") {
				$(".ul").css("display", "none");
				$("#14").css("display", "inline-block");
			} else if ($(this).attr("id") == "chungchenbuk") {
				$(".ul").css("display", "none");
				$("#15").css("display", "inline-block");
			} else if ($(this).attr("id") == "jeju") {
				$(".ul").css("display", "none");
				$("#16").css("display", "inline-block");
			}
		});
	});
</script>

<style type="text/css">
.ul {
	display: none;
}
ul{
	display: none;
	border: 1px solid black;
	width: 150px;
	height:250px;
	padding: 15px;
	overflow-y: scroll; 
}
li{
	list-style: none;
}
.location{
}
</style>
</head>
<body>
	<button id="select">
		지역선택<span id="down">▼</span>
	</button><br>

	<ul id="location">
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
	<ul id="1" class="ul">
		<li class="seoul">강남구</li>
		<li class="seoul">강동구</li>
		<li class="seoul">강북구</li>
		<li class="seoul">강서구</li>
		<li class="seoul">관악구</li>
		<li class="seoul">광진구</li>
		<li class="seoul">구로구</li>
		<li class="seoul">금천구</li>
		<li class="seoul">노원구</li>
		<li class="seoul">도봉구</li>
		<li class="seoul">동대문구</li>
		<li class="seoul">동작구</li>
		<li class="seoul">마포구</li>
		<li class="seoul">서대문구</li>
		<li class="seoul">서초구</li>
		<li class="seoul">성동구</li>
		<li class="seoul">성북구</li>
		<li class="seoul">송파구</li>
		<li class="seoul">양천구</li>
		<li class="seoul">영등포구</li>
		<li class="seoul">용산구</li>
		<li class="seoul">은평구</li>
		<li class="seoul">종로구</li>
		<li class="seoul">중구</li>
		<li class="seoul">중랑구</li>
	</ul>
	<ul id="2" class="ul">
		<li class="busan">강성구</li>
		<li class="busan">금정구</li>
		<li class="busan">남구</li>
		<li class="busan">동구</li>
		<li class="busan">동래구</li>
		<li class="busan">부산진구</li>
		<li class="busan">북구</li>
		<li class="busan">사상구</li>
		<li class="busan">사하구</li>
		<li class="busan">서구</li>
		<li class="busan">수영구</li>
		<li class="busan">연제구</li>
		<li class="busan">영도구</li>
		<li class="busan">중구</li>
		<li class="busan">해운대구</li>
		<li class="busan">기장군</li>
	</ul>
	<ul id="3" class="ul">
		<li class="daegu">남구</li>
		<li class="daegu">달서구</li>
		<li class="daegu">동구</li>
		<li class="daegu">북구</li>
		<li class="daegu">서구</li>
		<li class="daegu">수성구</li>
		<li class="daegu">중구</li>
		<li class="daegu">달성군</li>
	</ul>
	<ul id="4" class="ul">
		<li class="incheon">계양구</li>
		<li class="incheon">미추홀구</li>
		<li class="incheon">남동구</li>
		<li class="incheon">동구</li>
		<li class="incheon">부평구</li>
		<li class="incheon">서구</li>
		<li class="incheon">연수구</li>
		<li class="incheon">중구</li>
		<li class="incheon">강화군</li>
		<li class="incheon">옹진군</li>
	</ul>
	<ul id="5" class="ul">
		<li class="gwangju">광산구</li>
		<li class="gwangju">남구</li>
		<li class="gwangju">동구</li>
		<li class="gwangju">북구</li>
		<li class="gwangju">서구</li>
	</ul>
	<ul id="6" class="ul">
		<li class="daejeon">대덕구</li>
		<li class="daejeon">동구</li>
		<li class="daejeon">서구</li>
		<li class="daejeon">유성구</li>
		<li class="daejeon">중구</li>
	</ul>
	<ul id="7" class="ul">
		<li class="ulsan">남구</li>
		<li class="ulsan">동구</li>
		<li class="ulsan">북구</li>
		<li class="ulsan">중구</li>
		<li class="ulsan">울주군</li>
	</ul>
	<ul id="8" class="ul">
		<li class="gangwon">강릉시</li>
		<li class="gangwon">고성군</li>
		<li class="gangwon">동해시</li>
		<li class="gangwon">삼척시</li>
		<li class="gangwon">속초시</li>
		<li class="gangwon">양구군</li>
		<li class="gangwon">양양군</li>
		<li class="gangwon">영월군</li>
		<li class="gangwon">원주시</li>
		<li class="gangwon">인제군</li>
		<li class="gangwon">정선군</li>
		<li class="gangwon">철원군</li>
		<li class="gangwon">춘천시</li>
		<li class="gangwon">태백시</li>
		<li class="gangwon">평창군</li>
		<li class="gangwon">홍천군</li>
		<li class="gangwon">화천군</li>
		<li class="gangwon">횡성군</li>
	</ul>
	<ul id="9" class="ul">
		<li class="gyunggi">가평군</li>
		<li class="gyunggi">고양시</li>
		<li class="gyunggi">과천시</li>
		<li class="gyunggi">광명시</li>
		<li class="gyunggi">광주시</li>
		<li class="gyunggi">구리시</li>
		<li class="gyunggi">군포시</li>
		<li class="gyunggi">김포시</li>
		<li class="gyunggi">남양주시</li>
		<li class="gyunggi">동두천시</li>
		<li class="gyunggi">부천시</li>
		<li class="gyunggi">성남시</li>
		<li class="gyunggi">수원시</li>
		<li class="gyunggi">시흥시</li>
		<li class="gyunggi">안산시</li>
		<li class="gyunggi">안양시</li>
		<li class="gyunggi">양주시</li>
		<li class="gyunggi">양평군</li>
		<li class="gyunggi">여주시</li>
		<li class="gyunggi">연천군</li>
		<li class="gyunggi">오산시</li>
		<li class="gyunggi">용인시</li>
		<li class="gyunggi">의왕시</li>
		<li class="gyunggi">의정부시</li>
		<li class="gyunggi">이천시</li>
		<li class="gyunggi">파주시</li>
		<li class="gyunggi">평택시</li>
		<li class="gyunggi">포천시</li>
		<li class="gyunggi">하남시</li>
		<li class="gyunggi">화성시</li>
		<li class="gyunggi">안성시</li>
	</ul>
	<ul id="10" class="ul">
		<li class="gyungsangnam">거제시</li>
		<li class="gyungsangnam">거창군</li>
		<li class="gyungsangnam">고성군</li>
		<li class="gyungsangnam">김해시</li>
		<li class="gyungsangnam">남해군</li>
		<li class="gyungsangnam">마산시</li>
		<li class="gyungsangnam">밀양시</li>
		<li class="gyungsangnam">사천시</li>
		<li class="gyungsangnam">산청군</li>
		<li class="gyungsangnam">양산시</li>
		<li class="gyungsangnam">의령군</li>
		<li class="gyungsangnam">진주시</li>
		<li class="gyungsangnam">창녕군</li>
		<li class="gyungsangnam">창원시</li>
		<li class="gyungsangnam">통영시</li>
		<li class="gyungsangnam">하동군</li>
		<li class="gyungsangnam">함안군</li>
		<li class="gyungsangnam">함양군</li>
		<li class="gyungsangnam">합천군</li>
	</ul>
	<ul id="11" class="ul">
		<li class="gyungsangbuk">경산시</li>
		<li class="gyungsangbuk">경주시</li>
		<li class="gyungsangbuk">구미시</li>
		<li class="gyungsangbuk">김천시</li>
		<li class="gyungsangbuk">문경시</li>
		<li class="gyungsangbuk">상주시</li>
		<li class="gyungsangbuk">안동시</li>
		<li class="gyungsangbuk">영주시</li>
		<li class="gyungsangbuk">영천시</li>
		<li class="gyungsangbuk">포항시</li>
		<li class="gyungsangbuk">고령군</li>
		<li class="gyungsangbuk">군위군</li>
		<li class="gyungsangbuk">봉화군</li>
		<li class="gyungsangbuk">성주군</li>
		<li class="gyungsangbuk">영덕군</li>
		<li class="gyungsangbuk">영양군</li>
		<li class="gyungsangbuk">예천군</li>
		<li class="gyungsangbuk">울릉군</li>
		<li class="gyungsangbuk">울진군</li>
		<li class="gyungsangbuk">의성군</li>
		<li class="gyungsangbuk">청도군</li>
		<li class="gyungsangbuk">청송군</li>
		<li class="gyungsangbuk">칠곡군</li>
	</ul>
	<ul id="12" class="ul">
		<li class="jeonranam">광양시</li>
		<li class="jeonranam">나주시</li>
		<li class="jeonranam">목포시</li>
		<li class="jeonranam">순천시</li>
		<li class="jeonranam">여수시</li>
		<li class="jeonranam">강진군</li>
		<li class="jeonranam">고흥군</li>
		<li class="jeonranam">곡성군</li>
		<li class="jeonranam">구례군</li>
		<li class="jeonranam">담양군</li>
		<li class="jeonranam">무안군</li>
		<li class="jeonranam">보성군</li>
		<li class="jeonranam">신안군</li>
		<li class="jeonranam">영광군</li>
		<li class="jeonranam">영암군</li>
		<li class="jeonranam">완도군</li>
		<li class="jeonranam">장성군</li>
		<li class="jeonranam">장흥군</li>
		<li class="jeonranam">진도군</li>
		<li class="jeonranam">함평군</li>
		<li class="jeonranam">해남군</li>
		<li class="jeonranam">화순군</li>
	</ul>
	<ul id="13" class="ul">
		<li class="jeonrabuk">군산시</li>
		<li class="jeonrabuk">김제시</li>
		<li class="jeonrabuk">남원시</li>
		<li class="jeonrabuk">익산시</li>
		<li class="jeonrabuk">전주시</li>
		<li class="jeonrabuk">정읍시</li>
		<li class="jeonrabuk">고창군</li>
		<li class="jeonrabuk">무주군</li>
		<li class="jeonrabuk">부안군</li>
		<li class="jeonrabuk">순창군</li>
		<li class="jeonrabuk">완주군</li>
		<li class="jeonrabuk">임실군</li>
		<li class="jeonrabuk">장수군</li>
		<li class="jeonrabuk">진안군</li>
	</ul>
	<ul id="14" class="ul">
		<li class="chungchennam">계룡시</li>
		<li class="chungchennam">공주시</li>
		<li class="chungchennam">논산시</li>
		<li class="chungchennam">보령시</li>
		<li class="chungchennam">서산시</li>
		<li class="chungchennam">아산시</li>
		<li class="chungchennam">천안시</li>
		<li class="chungchennam">금산군</li>
		<li class="chungchennam">당진시</li>
		<li class="chungchennam">부여군</li>
		<li class="chungchennam">서천군</li>
		<li class="chungchennam">연기군</li>
		<li class="chungchennam">예산군</li>
		<li class="chungchennam">청양군</li>
		<li class="chungchennam">태안군</li>
		<li class="chungchennam">홍성군</li>
	</ul>
	<ul id="15" class="ul">
		<li class="chungchenbuk">제천시</li>
		<li class="chungchenbuk">청주시</li>
		<li class="chungchenbuk">충주시</li>
		<li class="chungchenbuk">괴산군</li>
		<li class="chungchenbuk">단양군</li>
		<li class="chungchenbuk">보은군</li>
		<li class="chungchenbuk">영동군</li>
		<li class="chungchenbuk">옥천군</li>
		<li class="chungchenbuk">음성군</li>
		<li class="chungchenbuk">증평군</li>
		<li class="chungchenbuk">진천군</li>
		<li class="chungchenbuk">청원군</li>
	</ul>
	<ul id="16" class="ul">
		<li class="jaeju">제주시</li>
		<li class="jaeju">서귀포시</li>
	</ul>
</body>
</html>