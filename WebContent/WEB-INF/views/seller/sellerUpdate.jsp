<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/common/bs.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/sellerJoin.css">
<script src="<%=request.getContextPath()%>/js/sellerJoin.js"></script>
<title>판매자 회원가입</title>

</head>
<body>
	<div class="sellerJoinFormDiv">
		<div id="topDiv">
			<h4 id="top1" class="topInfo">스토어 관리센터</h4>
			<h1 id="top2" class="topInfo">회원수정</h1>		
		</div>
		
		<hr>
		
		<form class="form-horizontal" action="./sellerUpdate" method="post">
		
			<div class="session">
				<div class="mid-titleDiv">
					<p class="mid-title">회원정보</p>
				</div>
	
				<div class="form-group">
			      	<label for="id" class="col-sm-3">아이디<span class="required">*</span></label>
					<div class="col-sm-9">
						<input type="text" id="id" name="id" class="form-control" readonly="readonly" value="${sellerDTO.id}" required="required">
				    </div>
			    </div>	
			    
			    <div class="form-group">
			      	<label for="pw" class="col-sm-3">비밀번호<span class="required">*</span></label>
					<div class="col-sm-9">
						<input type="password" id="pw2" class="form-control" placeholder="8자 이상, 대소문자·숫자·특수문자" required="required">
				    </div>
			    </div>
			    
			      <div class="form-group">
			      	<label for="pw" class="col-sm-3">비밀번호 재확인<span class="required">*</span></label>
					<div class="col-sm-9">
						<input type="password" id="pw" name="pw" class="form-control" placeholder="비밀번호 다시 입력" required="required">
						<br><div class="form-control2">
							<p id="cor1" style="color: blue;">비밀번호가 일치합니다</p>
							<p id="cor2" style="color: red;">비밀번호가 일치하지 않습니디</p>
						</div>
				    </div>
			    </div>
			</div>
			
			<hr>
			
			<div class="session">
				<div class="mid-titleDiv">
					<p class="mid-title">회사정보</p>
				</div>
	
				<div class="form-group">
			      	<label for="companyName" class="col-sm-3">회사이름<span class="required">*</span></label>
					<div class="col-sm-9">
						<input type="text" id="companyName" name="companyName" class="form-control" value="${sellerDTO.companyName}" readonly="readonly" required="required">
				    </div>
			    </div>	
			    
			    <div class="form-group">
			      	<label for="companyNum" class="col-sm-3">사업자등록번호<span class="required">*</span></label>
					<div class="col-sm-9">
						<input type="number" id="companyNum" name="companyNum" class="form-control" value="${sellerDTO.companyNum}"readonly="readonly" required="required">
				    </div>
			    </div>
			    <div class="form-group">
			      	<label for="homepage" class="col-sm-3">홈페이지</label>
					<div class="col-sm-9">
						<input type="text" id="homepage" name="homepage" class="form-control" value="${sellerDTO.homepage}">
				    </div>
			    </div>
			</div>
			
			<hr>
			
			<div class="session">
				<div class="mid-titleDiv">
					<p class="mid-title">영업담당자 정보</p>
				</div>
	
				<div class="form-group">
			      	<label for="marketerName" class="col-sm-3">이름<span class="required">*</span></label>
					<div class="col-sm-9">
						<input type="text" id="marketerName" name="marketerName" class="form-control" value="${sellerDTO.marketerName}" required="required">
				    </div>
			    </div>	
			    
			    <div class="form-group">
			      	<label for="phone" class="col-sm-3">전화번호<span class="required">*</span></label>
					<div class="col-sm-9">
						<input type="number" id="phone" name="phone" class="form-control" value="${sellerDTO.phone}" required="required">
				    </div>
			    </div>
			    <div class="form-group">
			      	<label for="email" class="col-sm-3">이메일<a class="required">*</a></label>
					<div class="col-sm-9">
						<input type="text" id="email" name="email" class="form-control" value="${sellerDTO.email}" required="required">
				    </div>
			    </div>
			</div>
			
			<hr>
			
			<div class="session">
				<div class="mid-titleDiv">
					<p class="mid-title">상품 정보</p>
				</div>
	
				<div class="form-group">
			      	<label for="brandName" class="col-sm-3">대표브랜드 이름<span class="required">*</span></label>
					<div class="col-sm-9">
						<input type="text" id="brandName" name="brandName" class="form-control" value="${sellerDTO.brandName}" required="required">
				    </div>
			    </div>	
			    
			    <div class="form-group">
			      	<label for="catSelect" class="col-sm-3">취급 카테고리</label>
					<div class="col-sm-9">
						<div class="form-control2">
							<div class="side">
								<label><input type="checkbox" value="여름/인테리어" class="check">여름/인테리어</label>
							</div>
							<div class="side margin">
								<label><input type="checkbox" value="가구" class="check">가구</label>
							</div>
							<div class="side margin">
								<label><input type="checkbox" value="패브릭" class="check">패브릭</label>
							</div>
							<div class="side margin">
								<label><input type="checkbox" value="홈데코/조명" class="check">홈데코/조명</label>
							</div>
							<div class="side margin">
								<label><input type="checkbox" value="가전"  class="check">가전</label>
							</div>
							<div class="side margin">
								<label><input type="checkbox" value="수납/생활"  class="check">수납/생활</label>
							</div>
							<div class="side margin">
								<label><input type="checkbox" value="주방" class="check">주방</label>
							</div>
							<div class="side margin">
								<label><input type="checkbox" value="DIY셀프시공"  class="check">DIY셀프시공</label>
							</div>
							<div class="side margin">
								<label><input type="checkbox" value="시공/서비스"  class="check">시공/서비스</label>
							</div>
							<div class="side margin">
								<label><input type="checkbox" value="반려동물"  class="check">반려동물</label>
							</div>
							<div class="side margin">
								<label><input type="checkbox" value="건자재"  class="check">건자재</label>
							</div>
						</div>
				    </div>
			    </div>
			    
			    <div class="form-group">
			      	<label for="category" class="col-sm-3">선택된 카테고리<span class="required">*</span></label>
					<div class="col-sm-9">
						<input type="text" id="category" name="category" class="form-control" readonly="readonly" value="${sellerDTO.category}" required="required">
				    </div>
			    </div>
			    
			    <div class="form-group">
			      	<label for="info" class="col-sm-3">상품소개<span class="required">*</span></label>
					<div class="col-sm-9">
						<textarea  id="info" name="info" class="form-control" rows="5" style="resize: none;" required="required">${sellerDTO.info}</textarea>
				    </div>
			    </div>
			    <div class="form-group">
			      	<label for="openMarket" class="col-sm-3">타입점 쇼핑몰<span class="required">*</span></label>
					<div class="col-sm-9">
						<input type="text" id="openMarket" name="openMarket" class="form-control" value="${sellerDTO.openMarket}" required="required">
				    </div>
			    </div>
			    <div class="form-group">
			      	<label for="file" class="col-sm-3">첨부 파일</label>
					<div class="col-sm-9">
						<input type="file" id="file" name="file">
				    </div>
			    </div>
			</div>
			
			<hr>
	
			
			<div id="submitDiv">
				<button id="submitBtn">수정완료</button>
				<!-- <input type="button" onclick="joinConfirm()" value="신청완료"> -->
			</div>
			
		</form>

    
	</div>
</body>
</html>