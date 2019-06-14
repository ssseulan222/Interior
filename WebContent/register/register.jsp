<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<link href="../css/register.css?ver3" rel="stylesheet" type="text/css" />
<link href="../css/location.css?ver3" rel="stylesheet" type="text/css" />
<script src="../js/register.js?ver3"></script>
<script src="../js/register2.js?ver3"></script>
<script type="text/javascript">
	function goPopup() {
		// 주소검색을 수행할 팝업 페이지를 호출합니다.
		// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
		var pop = window.open("../jusoPopup.jsp", "pop",
				"width=570,height=420, scrollbars=yes, resizable=yes");
	}

	function jusoCallBack(roadFullAddr) {
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		document.getElementById(" roadFullAddr ").value = roadFullAddr;
	}
</script>
</head>
<body>
	<div id="he">
		<a href="#"><span>오늘의집</span><span>전문가센터</span></a> <span>전문가
			가입신청</span> <span>오늘의집과 함께하기 어렵지 않아요.<br> 몇 가지 단계만 진행하시면 고객들을
			만나보실 수 있어요!
		</span>
	</div>
	<div id="b">
		<ul id="menuBar">
			<li class="count" id="01"><span>01</span><br> <span
				class="c_t">서비스정보</span></li>
			<li class="count" id="02"><span>02</span><br> <span
				class="c_t">추가정보</span></li>
			<li class="count" id="03"><span>03</span><br> <span
				class="c_t">기본정보</span></li>
			<li class="count" id="04"><span>04</span><br> <span
				class="c_t">사업자정보</span></li>
			<li><span>가입에 도움이<br>필요하세요?
			</span><br> <a href="#"><img alt="카톡상담" src="#"></a></li>
		</ul>
		<div class="body">
			<div id="head1" class="h">
				<span class="b1">알려드려요</span><br> <span>여기서 입력하시는 정보는<br>
					오늘의집 마이페이지에서<br> 고객들에게 노출됩니다.
				</span>
			</div>
			<br>
			<div id="body1">
				<div id="q1">
					<span>상호를 입력해주세요.</span><span class="necessary">필수</span>
					<p>2~15자 입력 가능합니다. 서비스 상에서 고객에게 닉네임으로 노출됩니다.</p>
					<input type="text" name="name" id="d1">
				</div>
				<div id="q2">
					<span>시공 계약을 어떤 단위로 하시나요?</span><span class="necessary">필수</span>
					<p>고객들이 오늘의집을 통해서 시공 상담 요청을 하실 때 정확한 매칭을 위해 필요합니다.</p>
					<button class="se" value="종합">종합 인테리어 시공(다지인+시공)만 합니다.</button>
					<br>
					<button class="se" value="부분">부분 시공(도배, 타일 등)만 합니다.</button>
					<br>
					<button class="se" value="통합">종합 시공도 하고 부분 시공도 합니다.</button>
				</div>
				<div id="q3">
					<div id="pro01">
						<span>부분 시공이 가능한 전문분야를 3개까지 선택해주세요. </span><span class="necessary">필수</span><br>
						<input type="button" value="도배" class="pro1"> <input
							type="button" value="장판" class="pro1"> <input
							type="button" value="마루" class="pro1"> <br> <input
							type="button" value="주방" class="pro1"> <input
							type="button" value="목공" class="pro1"> <input
							type="button" value="욕실" class="pro1"> <br> <input
							type="button" value="타일" class="pro1"> <input
							type="button" value="페인트" class="pro1"> <input
							type="button" value="시트필름" class="pro1"> <br> <input
							type="button" value="도어" class="pro1"> <input
							type="button" value="샷시" class="pro1"> <input
							type="button" value="블라인드" class="pro1"> <br> <input
							type="button" value="설비" class="pro1"> <input
							type="button" value="조명" class="pro1"> <input
							type="button" value="전문디자인" class="pro1"> <br> <input
							type="button" value="기타" class="pro1">
					</div>
					<div id="pro02">
						<span>부분 시공이 가능한 전문분야를 1개만 선택해주세요. </span><span class="necessary">필수</span><br>
						<input type="button" value="도배" class="pro2"> <input
							type="button" value="장판" class="pro2"> <input
							type="button" value="마루" class="pro2"> <br> <input
							type="button" value="주방" class="pro2"> <input
							type="button" value="목공" class="pro2"> <input
							type="button" value="욕실" class="pro2"> <br> <input
							type="button" value="타일" class="pro2"> <input
							type="button" value="페인트" class="pro2"> <input
							type="button" value="시트필름" class="pro2"> <br> <input
							type="button" value="도어" class="pro2"> <input
							type="button" value="샷시" class="pro2"> <input
							type="button" value="블라인드" class="pro2"> <br> <input
							type="button" value="설비" class="pro2"> <input
							type="button" value="조명" class="pro2"> <input
							type="button" value="전문디자인" class="pro2"> <br> <input
							type="button" value="기타" class="pro2">
					</div>
				</div>
				<div id="q4">
					<span>주거공간 외에 시공 가능한 공간 유형을 모두 선택해주세요.</span>
					<p>중복선택 가능합니다.</p>
					<br> <input type="button" value="사무공간" class="place">
					<input type="button" value="상업공간" class="place">
				</div>
				<div id="q5">
					<span>A/S기간을 얼마나 제공하시나요?</span><span class="necessary">필수</span><br>
					<input type="button" value="미제공" class="a_s"> <input
						type="button" value="6개월" class="a_s"> <input
						type="button" value="1년" class="a_s"> <br> <input
						type="button" value="2년" class="a_s"> <input type="button"
						value="3년 이상" class="a_s">
				</div>
				<div id="q6">
					<span>해당 분야의 경력을 선택해주세요.</span><span class="necessary">필수</span><br>
					<input type="button" value="5년 미만" class="carreer"> <input
						type="button" value="5-9년" class="carreer"> <input
						type="button" value="10-14년" class="carreer"> <br> <input
						type="button" value="15-19년" class="carreer"> <input
						type="button" value="20년 이상" class="carreer">
				</div>
				<div id="q7">
					<span>시공이 가능한 최소금액은 얼마인가요?</span><span class="necessary">필수</span><br>
					<input type="button" value="금액무관" class="pay"> <input
						type="button" value="500만원 이상" class="pay"> <input
						type="button" value="1,000만원 이상" class="pay"> <br> <input
						type="button" value="2,000만원 이상" class="pay"> <input
						type="button" value="3,000만원 이상" class="pay">
				</div>
				<div id="q8">
					<span>계약시 계약금(선금) 비율은 얼마인가요?</span><span class="necessary">필수</span><br>
					<input type="button" value="없음" class="deposit"> <input
						type="button" value="5%" class="deposit"> <input
						type="button" value="10%" class="deposit"> <br> <input
						type="button" value="20%" class="deposit"> <input
						type="button" value="30% 이상" class="deposit">
				</div>
				<div>
					<button id="next1" class="n_btn">다음</button>
				</div>
			</div>

			<div id="head2" class="h">
				<span class="b1">알려드려요</span><br> <span>여기서 입력하시는 정보는<br>
					오늘의집 마이페이지에서<br> 고객들에게 노출됩니다.
				</span>
			</div>
			<br>
			<div id="body2">
				<div id="q1">
					<span>고객에게 제공하는 부가서비스가 있다면 모두 선택해주세요.</span>
					<p>중복선택 가능합니다.</p>
					<input type="button" value="표준계약서" class="tag"> <input
						type="button" value="표준견적서" class="tag"> <input
						type="button" value="직영시공" class="tag"> <br> <input
						type="button" value="설계도면" class="tag"> <input
						type="button" value="3D디자인" class="tag"> <input
						type="button" value="전문감리" class="tag"> <br> <input
						type="button" value="공정표" class="tag"> <input
						type="button" value="세금계산서" class="tag"> <input
						type="button" value="현금영수증" class="tag"> <br> <input
						type="button" value="하자이행증권" class="tag"> <input
						type="button" value="계약이행증권" class="tag"> <input
						type="button" value="마감청소" class="tag">
				</div>
				<div id="q2">
					<span>대표활동지역을 선택해주세요</span><span class="necessary">필수</span>
					<p>선택하신 지역의 고객들에게 노출됩니다. 최대 3개까지 선택 가능합니다.</p>
					<button id="select">
						지역선택<span id="down">▼</span>
					</button>
					<div class="l">
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
					</div>
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
				</div>
				<div id="q3">
					<span>업체를 한 줄로 소개해주세요.</span>
					<p>업체이름과 함께 노출되는 한줄 소개 영역에 들어가는 내용입니다. 고객에게 남기실 업체만의 특별한 점을
						소개해주세요!</p>
					<input type="text" name="info">
				</div>
				<div id="q4">
					<span>운영하고 있는 홈페이지나 블로그가 있다면 주소를 입력해주세요.</span>
					<p>주소를 적어주시면 블로그나 홈페이지에 있는 포트폴리오를 오늘의집에 연결해서 방문자들에게 더 다양한 컨텐츠를
						제공할 수 있습니다.</p>
					<input type="text" name="address">
				</div>
				<div>
					<button id="before1" class="b_btn">이전</button>
					<button id="next2" class="n_btn">다음</button>
				</div>
			</div>
			<div id="head3" class="h">
				<span class="b1">알려드려요</span><br> <span>여기서 입력하시는 정보는<br>
					계정 생성을 위한 것으로<br> 외부에 노출되지 않습니다.
				</span>
			</div>
			<br>
			<div id="body3">
				<div id="q1">
					<span>이메일 주소를 입력해주세요.</span><span class="necessary">필수</span>
					<p>아이디로 사용하실 이메일주소를 입력해주세요.</p>
					<input type="text" id="email">@ <span id="s_email">
						<select>
							<option selected="selected" id="selecteed">선택해주세요</option>
							<option class="ad" value="naver.com">naver.com</option>
							<option class="ad" value="hanmail.net">hanmail.net</option>
							<option class="ad" value="daum.net">daum.net</option>
							<option class="ad" value="gmail.com">gmail.com</option>
							<option class="ad" value="nate.com">nate.com</option>
							<option class="ad" value="hotmail.com">hotmail.com</option>
							<option class="ad" value="outlook.com">outlook.com</option>
							<option class="ad" value="icloud.com">icloud.com</option>
							<option id="self" class="ad">직접입력</option>
					</select>
					</span>
				</div>
				<div id="q2">
					<span>사용하실 비밀번호를 입력해주세요.</span><span class="necessary">필수</span>
					<p>8글자 이상이며 대문자, 소문자, 숫자, 특수문자 중 3가지가 포함되어야 합니다.</p>
					<input type="password" name="p1"> <input type="password"
						name="p2">
				</div>
				<div id="q3">
					<span>핸드폰번호를 입력해주세요.</span><span class="necessary">필수</span>
					<p>연락이 가능한 번호를 입력해주세요.</p>
					<input type="text" name="phone1">-<input type="text"
						name="phone2">-<input type="text" name="phone3">
				</div>
				<div>
					<button id="before2" class="b_btn">이전</button>
					<button id="next3" class="n_btn">다음</button>
				</div>
			</div>
			<div id="head4" class="h">
				<span class="b1">알려드려요</span><br> <span>여기서 입력하시는 정보는<br>
					담당자가 업체를 확인하고<br> 연락을 드리기 위한 것으로<br> 외부에 노출되지 않습니다.
				</span>
			</div>
			<br>
			<div id="body4">
				<div id="q1">
					<span>사업자의 대표자명을 알려주세요.</span><span class="necessary">필수</span><br>
					<input type="text" name="name">
				</div>
				<div id="q2">
					<span>대표 연락처를 입력해주세요.</span> <br> <input type="text"
						name="phone1">-<input type="text" name="phone2">-<input
						type="text" name="phone3">
				</div>
				<div id="q3">
					<span>사업장 주소를 알려주세요.</span><span class="necessary">필수</span><br>
					<input type="text" id=" roadFullAddr " name=" roadFullAddr " />
					<button id="ad" onClick="goPopup();">주소찾기</button>
				</div>
				<div id="q4">
					<span>사업자등록여부를 알려주세요.</span><span class="necessary">필수</span><br>
					<input type="button" value="미등록(프리랜서)" class="r_check"> <input
						type="button" value="등록(개인사업자)" class="r_check"> <input
						type="button" value="등록(법인사업자)" class="r_check"><br>
					<input type="button" value="등록(브랜드대리점)" class="r_check"><br>
					<br>
					<div id="freelancer" class="q4_d">
						<span>신분증을 첨부해주세요.</span><span class="necessary">필수</span><br>
						<p>주민번호 뒷자리를 포스트잇이나 종이로 가린 뒤 사진으로 찍거나 스캔해서 첨부해주세요.</p>
						<input type="file" class="upload"><br>
					</div>
					<div id="individual" class="q4_d">
						<span>사업자등록여부를 알려주세요.</span><span class="necessary">필수</span><br>
						<input type="text">-<input type="text">-<input
							type="text"><br> <span>사업자등록증을 첨부해주세요.</span><span
							class="necessary">필수</span><br> <input type="file"
							class="upload">
					</div>
					<div id="corporation" class="q4_d">
						<span>사업자등록여부를 알려주세요.</span><span class="necessary">필수</span><br>
						<input type="text">-<input type="text">-<input
							type="text"><br> <span>사업자등록증을 첨부해주세요.</span><span
							class="necessary">필수</span><br> <input type="file"
							class="upload"><br> <span>전문건설업등록이 되어 있으신가요?</span><span
							class="necessary">필수</span><br> <input type="checkbox"
							value="industry"> 네, 등록되어 있습니다.
					</div>
					<div id="brand" class="q4_d">
						<span>대리점 혹은 제휴점 코드(번호)를 입력해주세요.</span><br> <input
							type="text"> <span>사업자등록여부를 알려주세요.</span><span
							class="necessary">필수</span><br> <input type="text">-<input
							type="text">-<input type="text"><br> <span>사업자등록증을
							첨부해주세요.</span><span class="necessary">필수</span><br> <input
							type="file" class="upload"><br> <span>전문건설업등록이
							되어 있으신가요?</span><span class="necessary">필수</span><br> <input
							type="checkbox" value="industry"> 네, 등록되어 있습니다.
					</div>
				</div>
				<div id="q5">
					<span>가입경로를 선택해주세요.</span><span class="necessary">필수</span>
					<p>어떻게 오늘의집과 함꼐 하게 되었나요?</p>
					<input type="button" value="이메일" class="route"> <input
						type="button" value="문자" class="route"> <input
						type="button" value="배너광고" class="route"> <br> <input
						type="button" value="인터넷검색" class="route"> <input
						type="button" value="SNS" class="route"> <input
						type="button" value="오늘의집 웹/앱" class="route"> <br> <input
						type="button" value="지인추천" class="route"> <input
						type="button" value="기타" class="route">
				</div>
				<div id="q6">
					<span>가입 약관에 동의해주세요.</span><span class="necessary">필수</span>
					<div>
						<input type="checkbox" name="agree" class="c_check"> 만 14세
						이상입니다. <span class="ne">(필수)</span><br> <input
							type="checkbox" name="agree" class="c_check"> <a
							href="./clause1.jsp" target="_blank">이용약관</a>에 동의 <span
							class="ne">(필수)</span><br> <input type="checkbox"
							name="agree" class="c_check"> <a href="./caluse2.jsp"
							target="_blank">개인정보취급방침</a>에 동의 <span class="ne">(필수)</span><br>
						<input type="checkbox" name="agree" id="marketing" class="c_check">
						<span id="open">이벤트 및 마케팅 활용에 동의 <span>(선택)</span></span><br>
						<input type="checkbox" name="allagree" id="allagree"> 모두
						동의합니다.
					</div>

				</div>
				<div>
					<button id="before3" class="b_btn">이전</button>
					<button id="complete" class="n_btn">완료</button>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<p>
			<a href="#">이용약관</a> <a href="#">개인정보취급방침</a>
		</p>
		<pre>상호명:(주)버킷플레이스  이메일:contact@bucketplace.net  대표이사:이승재  사업자등록번호119-86-91245  통신판매업신고번호:제2018-서울서초-0580호  주소:서울특별시 서초구 강남대로 373 홍우빌딩 14층 버킷플레이스</pre>
		<p>Copyright ⓒ 2014 by Bucket Inc All Rights Reserved</p>
	</footer>

	<div id="modal">
		<div>
			<h2>이벤트 및 마케팅 활용 동의</h2>
			<p>오늘의집 인테리어 전문가 서비스에서 제공하는 이벤트 및 서비스 (제휴서비스 포함) 안내 등 광고성 정보를
				받으시려면 마케팅 목적 이용에 동의하여 주시기 바랍니다.</p>
			<table>
				<thead>
					<tr>
						<td>수집방법</td>
						<td>수집항목</td>
						<td>수집 및 이용목적</td>
						<td>보유 및 이용기간</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>이벤트/마케팅홍보</td>
						<td>당사 및 제휴사 상품 안내, 이벤트 등 광고성 정보 전달 및 참여기회 제공, 회원 대상 각종 마케팅
							활용, 서비스 이용내역, 서비스 내 구매 및 결제 내역</td>
						<td>이름, 아이디, 휴대전화번호, 이메일</td>
						<td>개인정보 이용목적 달성 시, 동의철회 (제휴업체는 제휴계약 종료 시) 및 관계법령에 따른 보관기간까지</td>
					</tr>
				</tbody>
			</table>
			<p>* 동의를 거부하시는 경우에도 서비스는 이용이 가능합니다.</p>
			<button id="close">확인</button>
		</div>
	</div>
</body>
</html>