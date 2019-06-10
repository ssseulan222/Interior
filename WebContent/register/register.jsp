<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<link href="../css/register.css?ver1" rel="stylesheet" type="text/css"/>
<link href="../css/register2.css?ver1" rel="stylesheet" type="text/css"/>
<script src="../js/register.js?ver1"></script>
<script src="../js/register2.js?ver1"></script>
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
		<li class="count" id="1"><span>01</span><br> <span class="c_t">서비스정보</span></li>
		<li class="count" id="2"><span>02</span><br> <span class="c_t">추가정보</span></li>
		<li class="count" id="3"><span>03</span><br> <span class="c_t">기본정보</span></li>
		<li class="count" id="4"><span>04</span><br> <span class="c_t">사업자정보</span></li>
		<li><span>가입에 도움이<br>필요하세요?</span><br> <a href="#"><img
				alt="카톡상담" src="#"></a></li>
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
				<span>부분 시공이 가능한 전문분야를 3개까지 선택해주세요.
				</span><span class="necessary">필수</span><br>
				<input type="button" value="도배" class="pro1">
				<input type="button" value="장판" class="pro1">
				<input type="button" value="마루" class="pro1">
				<br>
				<input type="button" value="주방" class="pro1">
				<input type="button" value="목공" class="pro1">
				<input type="button" value="욕실" class="pro1">
				<br>
				<input type="button" value="타일" class="pro1">
				<input type="button" value="페인트" class="pro1">
				<input type="button" value="시트필름" class="pro1">
				<br>
				<input type="button" value="도어" class="pro1">
				<input type="button" value="샷시" class="pro1">
				<input type="button" value="블라인드" class="pro1">
				<br>
				<input type="button" value="설비" class="pro1">
				<input type="button" value="조명" class="pro1">
				<input type="button" value="전문디자인" class="pro1">
				<br>
				<input type="button" value="기타" class="pro1">
				</div>
				<div id="pro02">
				<span>부분 시공이 가능한 전문분야를 1개만 선택해주세요.
				</span><span class="necessary">필수</span><br>
				<input type="button" value="도배" class="pro2">
				<input type="button" value="장판" class="pro2">
				<input type="button" value="마루" class="pro2">
				<br>
				<input type="button" value="주방" class="pro2">
				<input type="button" value="목공" class="pro2">
				<input type="button" value="욕실" class="pro2">
				<br>
				<input type="button" value="타일" class="pro2">
				<input type="button" value="페인트" class="pro2">
				<input type="button" value="시트필름" class="pro2">
				<br>
				<input type="button" value="도어" class="pro2">
				<input type="button" value="샷시" class="pro2">
				<input type="button" value="블라인드" class="pro2">
				<br>
				<input type="button" value="설비" class="pro2">
				<input type="button" value="조명" class="pro2">
				<input type="button" value="전문디자인" class="pro2">
				<br>
				<input type="button" value="기타" class="pro2">
				</div>
			</div>
			<div id="q4">
				<span>주거공간 외에 시공 가능한 공간 유형을 모두 선택해주세요.</span>
				<p>중복선택 가능합니다.</p>
				<br>
				<input type="button" value="사무공간" class="place">
				<input type="button" value="상업공간" class="place">
			</div>
			<div id="q5">
				<span>A/S기간을 얼마나 제공하시나요?</span><span class="necessary">필수</span><br>
				<input type="button" value="미제공" class="a_s">
				<input type="button" value="6개월" class="a_s">
				<input type="button" value="1년" class="a_s">
				<br>
				<input type="button" value="2년" class="a_s">
				<input type="button" value="3년 이상" class="a_s">
			</div>
			<div id="q6">
				<span>해당 분야의 경력을 선택해주세요.</span><span class="necessary">필수</span><br>
				<input type="button" value="5년 미만" class="carreer">
				<input type="button" value="5-9년" class="carreer">
				<input type="button" value="10-14년" class="carreer">
				<br>
				<input type="button" value="15-19년" class="carreer">
				<input type="button" value="20년 이상" class="carreer">
			</div>
			<div id="q7">
				<span>시공이 가능한 최소금액은 얼마인가요?</span><span class="necessary">필수</span><br>
				<input type="button" value="금액무관" class="pay">
				<input type="button" value="500만원 이상" class="pay">
				<input type="button" value="1,000만원 이상" class="pay">
				<br>
				<input type="button" value="2,000만원 이상" class="pay">
				<input type="button" value="3,000만원 이상" class="pay">
			</div>
			<div id="q8">
				<span>계약시 계약금(선금) 비율은 얼마인가요?</span><span class="necessary">필수</span><br>
				<input type="button" value="없음" class="deposit">
				<input type="button" value="5%" class="deposit">
				<input type="button" value="10%" class="deposit">
				<br>
				<input type="button" value="20%" class="deposit">
				<input type="button" value="30% 이상" class="deposit">
			</div>
			<div>
				<button id="next1" class="n_btn">다음</button>
			</div>
		</div>

		<div id="head2" class="h">
			<span class="b1">알려드려요</span><br> <span>여기서 입력하시는 정보는<br> 오늘의집
				마이페이지에서<br> 고객들에게 노출됩니다.
			</span>
		</div>
		<br>
		<div id="body2">
			<div id="q1">
				<span>고객에게 제공하는 부가서비스가 있다면 모두 선택해주세요.</span>
				<p>중복선택 가능합니다.</p>
				<input type="button" value="표준계약서" class="tag">
				<input type="button" value="표준견적서" class="tag">
				<input type="button" value="직영시공" class="tag">
				<br>
				<input type="button" value="설계도면" class="tag">
				<input type="button" value="3D디자인" class="tag">
				<input type="button" value="전문감리" class="tag">
				<br>
				<input type="button" value="공정표" class="tag">
				<input type="button" value="세금계산서" class="tag">
				<input type="button" value="현금영수증" class="tag">
				<br>
				<input type="button" value="하자이행증권" class="tag">
				<input type="button" value="계약이행증권" class="tag">
				<input type="button" value="마감청소" class="tag">
			</div>
			<div id="q2">
				<span>대표활동지역을 선택해주세요</span><span class="necessary">필수</span>
				<p>선택하신 지역의 고객들에게 노출됩니다. 최대 3개까지 선택 가능합니다.</p>
				<select>
					<option>서울특별시</option>
					<option>부산광역시</option>
					<option>대구광역시</option>
					<option>인천광역시</option>
					<option>광주광역시</option>
					<option>대전광역시</option>
					<option>울산광역시</option>
					<option>강원도</option>
					<option>경기도</option>
					<option>경상남도</option>
					<option>경상북도</option>
					<option>전라남도</option>
					<option>전라북도</option>
					<option>충청남도</option>
					<option>충청북도</option>
					<option>세종특별자치시</option>
					<option>제주특별자치도</option>
				</select>
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
			<span class="b1">알려드려요</span><br> <span>여기서 입력하시는 정보는<br> 계정
				생성을 위한 것으로<br> 외부에 노출되지 않습니다.
			</span>
		</div>
		<br>
		<div id="body3">
			<div id="q1">
				<span>이메일 주소를 입력해주세요.</span><span class="necessary">필수</span>
				<p>아이디로 사용하실 이메일주소를 입력해주세요.</p>
				<input type="text" name="email">@ <select>
					<option selected="selected">선택해주세요</option>
					<option class="ad">naver.com</option>
					<option class="ad">hanmail.net</option>
					<option class="ad">daum.net</option>
					<option class="ad">gmail.com</option>
					<option class="ad">nate.com</option>
					<option class="ad">hotmail.com</option>
					<option class="ad">outlook.com</option>
					<option class="ad">icloud.com</option>
					<option id="self">직접입력</option>
				</select>
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
			<span class="b1">알려드려요</span><br> <span>여기서 입력하시는 정보는<br> 담당자가
				업체를 확인하고<br> 연락을 드리기 위한 것으로<br> 외부에 노출되지 않습니다.
			</span>
		</div>
		<br>
		<div id="body4">
			<div id="q1">
				<span>사업자의 대표자명을 알려주세요.</span><span class="necessary">필수</span><br> <input type="text"
					name="name">
			</div>
			<div id="q2">
				<span>대표 연락처를 입력해주세요.</span> <br><input type="text" name="phone1">-<input
					type="text" name="phone2">-<input type="text" name="phone3">
			</div>
			<div id="q3">
				<span>사업장 주소를 알려주세요.</span><span class="necessary">필수</span><br> <input type="text"
					name="address" disabled="disabled" id="address">
				<button id="ad">주소찾기</button>
			</div>
			<div id="q4">
				<span>사업자등록여부를 알려주세요.</span><span class="necessary">필수</span><br>
				<input type="button" value="미등록(프리랜서)" class="r_check">
				<input type="button" value="등록(개인사업자)" class="r_check">
				<input type="button" value="등록(법인사업자)" class="r_check"><br>
				<input type="button" value="등록(브랜드대리점)" class="r_check">
				<div id="freelancer">
					<span>신분증을 첨부해주세요.</span><span class="necessary">필수</span><br>
					<p>주민번호 뒷자리를 포스트잇이나 종이로 가린 뒤 사진으로 찍거나 스캔해서 첨부해주세요.</p>
					<input type="file" class="upload"><br>
				</div>
				<div id="individual">
					<span>사업자등록여부를 알려주세요.</span><span class="necessary">필수</span><br>
					<input type="text">-<input type="text">-<input type="text"><br>
					<span>사업자등록증을 첨부해주세요.</span><span class="necessary">필수</span><br>
					<input type="file" class="upload">
				</div>
				<div id="corporation">
					<span>사업자등록여부를 알려주세요.</span><span class="necessary">필수</span><br>
					<input type="text">-<input type="text">-<input type="text"><br>
					<span>사업자등록증을 첨부해주세요.</span><span class="necessary">필수</span><br>
					<input type="file" class="upload"><br>
					<span>전문건설업등록이 되어 있으신가요?</span><span class="necessary">필수</span><br>
					<input type="checkbox" value="industry"> 네, 등록되어 있습니다.
				</div>
				<div id="brand">
				<span>대리점 혹은 제휴점 코드(번호)를 입력해주세요.</span><br>
				<input type="text">
				<span>사업자등록여부를 알려주세요.</span><span class="necessary">필수</span><br>
					<input type="text">-<input type="text">-<input type="text"><br>
					<span>사업자등록증을 첨부해주세요.</span><span class="necessary">필수</span><br>
					<input type="file" class="upload"><br>
					<span>전문건설업등록이 되어 있으신가요?</span><span class="necessary">필수</span><br>
					<input type="checkbox" value="industry"> 네, 등록되어 있습니다.
				</div>
			</div>
			<div id="q5">
				<span>가입경로를 선택해주세요.</span><span class="necessary">필수</span>
				<p>어떻게 오늘의집과 함꼐 하게 되었나요?</p>
				<input type="button" value="이메일" class="route">
				<input type="button" value="문자" class="route">
				<input type="button" value="배너광고" class="route">
				<br>
				<input type="button" value="인터넷검색" class="route">
				<input type="button" value="SNS" class="route">
				<input type="button" value="오늘의집 웹/앱" class="route">
				<br>
				<input type="button" value="지인추천" class="route">
				<input type="button" value="기타" class="route">
			</div>
			<div id="q6">
				<span>가입 약관에 동의해주세요.</span><span class="necessary">필수</span>
				<div>
					<input type="checkbox" name="agree"> 만 14세 이상입니다. <span class="ne">(필수)</span><br>
					<input type="checkbox" name="agree"> 이용약관에 동의 <span class="ne">(필수)</span><br>
					<input type="checkbox" name="agree"> 개인정보취급방침에 동의 <span class="ne">(필수)</span><br>
					<input type="checkbox" name="agree" id="marketing"> 이벤트 및
					마케팅 활용에 동의 <span>(선택)</span><br> <input type="checkbox" name="allagree"
						id="allagree"> 모두 동의합니다.
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
</body>
</html>