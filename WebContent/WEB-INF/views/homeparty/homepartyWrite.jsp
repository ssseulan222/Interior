<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집들이 글쓰기</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/homepartyWrite.css">

</head>
<body>
	<div id="header_top">
	
		<div class="header">
			<a href="">
			<%-- <img class="header_img" alt="" src="/img/common-logo.png">--%>
 			</a>
		</div>
		
		<div class="header_align">
			<div class="title">전체정렬</div>
			<!-- <div class="title_icon_left" data-align="0">왼쪽</div>
			<div class="title_icon_center" data-align="1">가운데</div>
			<div class="title_icon_right" data-align="2">오른쪽</div>
			 -->
		</div>
	</div> <!-- end header_top -->
		
		
	<!-- 커버사진 추가하기 -->
	<div id="contents">
		<div id="image_upload"></div>
		
	</div> <!-- end contents -->
	
	
	<div id="title_write">
		<form action="/action_page.php">
			<div class="form_group">
			
				<label for="title_name">온라인 집들이</label> 
				<input type="text" class="form-control" placeholder="제목을 입력해주세요." name="title_name">
				<br><br>
				
				<div id="form_image">
					<img alt="" src="../img/320.png">&nbsp;&nbsp;nickName
				</div>
				
				<div id="information">
					<p class="information_header">정보를 많이 입력해 주실수록 검색 결과에 많이 노출되어 조회수가 올라갑니다.</p>
					<div class="field">
						<div class="form-group">
						
						<div class="place">공간*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<select id="sel1">
								<option>원룸&amp;오피스텔</option>
								<option>아파트</option>
								<option>빌라&amp;연립</option>
								<option>단독주택</option>
								<option>사무공간</option>
								<option>상업공간</option>
								<option>기타</option>
							</select>
							</div>
							<br><br>
							
							<div class="place">평수*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="text" id="sel1">
							</div>
							<br><br>
							
							<div class="work">작업*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="radio" name="gener">셀프 • DIY&nbsp;&nbsp;&nbsp;&nbsp;  
								<input type="radio" name="gener">반셀프&nbsp;&nbsp;&nbsp;&nbsp;   
								<input type="radio" name="gener">전문가
							</div>
							<br><br>
							
							<div class="bun">분야*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<select>
									<option>리모델링</option>
									<option>홈스타일링</option>
									<option>부분공사</option>
									<option>건축</option>
								</select>
							</div>
							<br><br>
							
							<div class="family">가족형태*
								<select>
									<option>선택해주세요.</option>
									<option>싱글라이프</option>
									<option>신혼부부</option>
									<option>아기가 있는 집</option>
									<option>취학 자녀가 있는 집</option>
									<option>부모님과 함께 사는 집</option>
									<option>기타</option>
								</select>
							</div>
							<br><br>
							
								<div class="style">스타일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<select>
									<option>선택해주세요.</option>
									<option>모던</option>
									<option>미니멀&amp;심플</option>
									<option>내추럴</option>
									<option>북유럽</option>
									<option>빈티지&amp;레트로</option>
									<option>클래식&amp;앤틱</option>
									<option>프렌치&amp;프로방스</option>
									<option>러블리&amp;로맨틱</option>
									<option>인더스트리얼</option>
									<option>한국&amp;아시아</option>
									<option>유니크&amp;믹스매치</option>
								</select>
							</div>
							<br><br>
							
							<div class="day">기간&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="text" id="sel2">
								<input type="radio">주&nbsp;&nbsp;&nbsp;&nbsp;  
								<input type="radio">개월&nbsp;&nbsp;&nbsp;&nbsp;   
							</div>
							<br><br>
							
							<div class="day">예산&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="text" id="sel3">
							</div>
							<br><br>
							<div class="total_color">전체 톤

							</div>
							<br><br>
							<div class="wall_color">벽 컬러
							
							</div>
							<br><br>
							<div class="floor_color">바닥 컬러
							
							</div>
							<br><br>
							
							<div class="style">세부공사&nbsp;&nbsp;
								<select>
									<option>선택해주세요.</option>
									<option>헤링본 마루</option>
									<option>대리석 바닥</option>
									<option>원목마루</option>
									<option>포세린타일</option>
									<option>폴리싱타일</option>
									<option>주방리모델링</option>
									<option>조명시공</option>
									<option>폴딩도어</option>
									<option>중문</option>
									<option>가벽&amp;파티션</option>
									<option>슬라이딩도어</option>
									<option>아트월</option>
									<option>발코니확장</option>
								</select>
							</div>
							<br><br>
							
							<div class="link">링크&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="text" id="sel4" placeholder="버튼 클릭 이동URL">
								<input type="text" id="sel5" placeholder="하단 버튼명">
							</div>
							<br><br>
							
							<div class="location">지역&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<select class="first_select">
									<option value="">시/도 선택</option>
									<option value="0">서울특별시</option>
									<option value="1">부산광역시</option>
									<option value="2">대구광역시</option>
									<option value="3">인천광역시</option>
									<option value="4">광주광역시</option>
									<option value="5">대전광역시</option>
									<option value="6">울산광역시</option>
									<option value="7">강원도</option>
									<option value="8">경기도</option>
									<option value="9">경상남도</option>
									<option value="10">경상북도</option>
									<option value="11">전라남도</option>
									<option value="12">전라북도</option>
									<option value="13">충청남도</option>
									<option value="14">충청북도</option>
									<option value="15">세종특별자치시</option>
									<option value="16">제주특별자치도</option>
								</select>
								<select class="second_select 0"><option value="0">지역 선택</option>
									<option value="1">강남구</option>
									<option value="2">강동구</option>
									<option value="3">강북구</option>
									<option value="4">강서구</option>
									<option value="5">관악구</option>
									<option value="6">광진구</option>
									<option value="7">구로구</option>
									<option value="8">금천구</option>
									<option value="9">노원구</option>
									<option value="10">도봉구</option>
									<option value="11">동대문구</option>
									<option value="12">동작구</option>
									<option value="13">마포구</option>
									<option value="14">서대문구</option>
									<option value="15">서초구</option>
									<option value="16">성동구</option>
									<option value="17">성북구</option>
									<option value="18">송파구</option>
									<option value="19">양천구</option>
									<option value="20">영등포구</option>
									<option value="21">용산구</option>
									<option value="22">은평구</option>
									<option value="23">종로구</option>
									<option value="24">중구</option>
									<option value="25">중랑구</option>
								</select>
							</div>
							<br><br>
							
							<div class="c">(C)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="text" id="sel6" placeholder="사진 저작자를 밝혀주세요.">
							</div>
							<br><br>
							
							<div id="bottom">
								<div>1. 사진은 설명과 함께 최소 10장 이상 올려주세요.</div>
						        <div>2. 소개해주시는 공간에 대한 충분한 설명(스토리텔링)을 남겨주세요.</div>
						        <div>3. 다양한 구도의 스타일링 사진과 도면, 비포 사진은 보시는 분들에게 큰 도움이 됩니다.</div>
						        <div>4. 업로드 후에 일부 사진이 나오지 않는다면, 사진을 삭제한 후 다시 올려주세요.</div>
						        <div>5. 작성 중에는 임시저장(비공개 등록), 완료 후에는 발행신청을 눌러주세요. 게시글 확인 후 스케줄에 맞춰 오픈됩니다.</div>
						        <div>6. 게시글 오픈 전/후, 수정이 필요하실때는 [마이홈]-[나의스토리]에서 작성 게시글을 확인하실 수 있습니다</div>
								</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div> <!-- end title_write -->
	
	
	
</body>
</html>