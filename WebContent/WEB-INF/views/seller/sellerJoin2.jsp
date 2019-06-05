<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/common/bs.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/sellerJoin2.css">
<script src="<%=request.getContextPath()%>/js/sellerJoin.js"></script>
<title>판매자 회원가입</title>

</head>
<body>
	<div class="joinForm">
		<div id="title">
			<h4>스토어 관리센터</h4>
			<h1>입점신청</h1>
		</div>
		<hr>
		<div>
			<form action="/sellerJoin" method="post">
			<div>
				<h3>회원정보</h3>
				<table>
					<tr>
						<td class="title">아이디<a class="nec">*</a></td>
						<td class="input"><input type="text" name="id" id="id" placeholder="6자 이상, 영대소문자, 숫자로 입력해주세요" class="nec3"></td>
					</tr>
					<tr>
						<td class="title">비밀번호<a class="nec">*</a></td>
						<td class="input"><input type="password" name="password" placeholder="8자 이상, 영대소문자, 숫자, 특수문자로 입력해주세요" class="nec3"></td>
					</tr>
					<tr>
						<td class="title">비밀번호 재확인<a class="nec">*</a></td>
						<td class="input"><input type="password" name="password" id="pw" placeholder="비밀번호를 다시 입력해주세요" class="nec3"></td>
					</tr>
				</table>
			</div>
			<hr>
			<div>
				<h3>회사정보</h3>
				<table>

					<tr>
						<td class="title">회사이름 <a class="nec">*</a></td>
						<td class="input"><input type="text" name="companyName" placeholder="오늘의 집" class="nec3"></td>
					</tr>
					<tr>
						<td class="title">사업자등록번호 <a class="nec">*</a></td>
						<td class="input"><input type="number" name="companyNum" placeholder="-빼고 숫자만 입력해주세요" class="nec3"></td>
					</tr>
					<tr>
						<td class="title">홈페이지</td>
						<td class="input"><input type="text" name="homepage" placeholder="www.ohou.se"></td>
					</tr>
					</tbody>
				</table>
			</div>
			<hr>
			<div>
				<h3>영업담당자 정보</h3>
				<table class="input">

					<tr>
						<td class="title">이름 <a class="nec">*</a></td>
						<td class="input"><input type="text" name="marketerName" placeholder="집냥이" class="nec3"></td>
					</tr>
					<tr>
						<td class="title">전화번호 <a class="nec">*</a></td>
						<td class="input"><input type="number" name="phone" placeholder="-빼고 숫자만 입력해주세요" class="nec3"></td>
					</tr>
					<tr>
						<td class="title">이메일 <a class="nec">*</a></td>
						<td class="input"><input type="email" name="email" placeholder="zipnyang.ohou.se" class="nec3"></td>
					</tr>
					</tbody>
				</table>
			</div>
			<hr>
			<div>
				<h3>상품정보</h3>
				<table class="input">

					<tr>
						<td class="title">대표브랜드 이름 <a class="nec">*</a></td>
						<td class="input"><input type="text" name="brandName" placeholder="이케아" class="nec3"></td>
					</tr>
					<tr>
						<td class="title">취급 카테고리 <a class="nec">*</a></td>
						<td class="input">
							<table id="selCat">
								<tr>
									<td><input type="checkbox" id="1" value="여름/인테리어" name="cat" class="check">여름/인테리어</td>
									<td><input type="checkbox" id="2" value="가구" name="cat" class="check">가구</td>
									<td><input type="checkbox" id="3" value="패브릭" name="cat" class="check">패브릭</td>
									<td><input type="checkbox" id="4" value="홈데코/조명" name="cat" class="check">홈데코/조명</td>
								</tr>
								<tr>
									<td><input type="checkbox" id="5" value="가전" name="cat" class="check">가전</td>
									<td><input type="checkbox" id="6" value="수납/생활" name="cat" class="check">수납/생활</td>
									<td><input type="checkbox" id="7" value="주방" name="cat" class="check">주방</td>
									<td><input type="checkbox" id="8" value="DIY셀프시공" name="cat" class="check">DIY셀프시공</td>
								</tr>
								<tr>
									<td><input type="checkbox" id="9" value="시공/서비스" name="cat" class="check">시공/서비스</td>
									<td><input type="checkbox" id="10" value="반려동물" name="cat" class="check">반려동물</td>
									<td><input type="checkbox" id="11" value="건자재" name="cat" class="check">건자재</td>
									<td><input type="checkbox" id="12" value="" name="cat" class="check">전체선택/해제</td>
								</tr>
							</table>
					</tr>
					<tr>
						<td class="title">선택된 카테고리</td>
						<td class="input">
						<div id="categoryDiv">
							<input type="text" id="category" name="category" class="nec3" readonly="readonly">
						</div>
						</td>
					</tr>
					<tr>
						<td class="title">상품소개 <a class="nec">*</a></td>
						<td class="input"><textarea name="info" rows="5" cols="" class="nec3" placeholder="판매하시는 상품에 대한 설명을 입력해주세요."></textarea></td>
					</tr>
					<tr>
						<td class="title">타입점쇼핑몰 <a class="nec">*</a></td>
						<td class="input"><input type="text" name="openMarket" placeholder="ex)11번가, 쿠팡" class="nec3"></td>
					</tr>
					<tr>
						<td class="title">판매 관련 첨부 파일</td>
						<td class="input"><input type="file"></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td class="input"><p>※ 참고할 수 있는 파일을 10MB 용량 이하의 이미지, ZIP, PDF 등의 파일 형태로
							첨부해주세요.<br /> 첨부파일 관련 URL주소가 있다면 상품 소개 입력창에 남겨주세요.</p>
						</td>
					</tr>
					</tbody>
				</table>
			</div>
			<hr>
			<div>
				<h3>개인정보 수집 및 이용 동의</h3>
				<p>개인정보보호법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관련 법령상의 개인정보보호 규정을
					준수하며, 판매자님이 입점신청 시 필요한 최소한의 개인 정보를 수집합니다.</p>
				<div>
					<table id="alert">

						<tr>
							<td class="ob1">목적</td>
							<td class="ob1">항목</td>
							<td class="ob1">보유기간</td>
						</tr>
						<tr>
							<td class="ob2">판매자 식별, 입점 검토, 공지사항의 전달</td>
							<td class="ob2">영업담당자의 이름/전화번호/이메일</td>
							<td class="ob2">입점 처리기간이 종료되는 시점</td>
						</tr>
						</tbody>
					</table>
				</div>
				<div class="agree">
					<input type="checkbox" id="agree" name="agree">
					 <label>입점신청을 위한 개인정보 수집 및 이용에 동의 <a id="nec2">(필수)</a></label>
				</div>
			</div>
			<div id="apply">
				<input type="button" value="신청완료" id="submit">
			</div>
			</form>
		</div>
	</div>
</body>
</html>