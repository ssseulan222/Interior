<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../common/bootstrap.jsp" />
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
			<h1 id="top2" class="topInfo">회원가입</h1>		
		</div>
		
		<hr>
		
		<form class="form-horizontal" action="./sellerJoin" method="post">
		
			<div class="session">
				<div class="mid-titleDiv">
					<p class="mid-title">회원정보</p>
				</div>
	
				<div class="form-group">
			      	<label for="id" class="col-sm-3">아이디<span class="required">*</span></label>
					<div class="col-sm-9">
						<input type="text" id="id" name="id" class="form-control" placeholder="6자 이상 20자 미만, 대소문자·숫자" required="required">
						<br><div class="phar">
							<p id="error" style="color: red;">사용 불가능한 아이디입니다.</p>
							<p id="right" style="color:blue;">사용 가능한 아이디입니다.</p>
						</div>
				    </div>
			    </div>	
			    
			    <div class="form-group">
			      	<label for="pw" class="col-sm-3">비밀번호<span class="required">*</span></label>
					<div class="col-sm-9">
						<input type="password" id="pw2" class="form-control" placeholder="8자 이상 20자 미만, 대소문자·숫자·특수문자"required="required">
				    </div>
			    </div>
			    
			      <div class="form-group">
			      	<label for="pw" class="col-sm-3">비밀번호 재확인<span class="required">*</span></label>
					<div class="col-sm-9">
						<input type="password" id="pw" name="pw" class="form-control" placeholder="비밀번호 다시 입력"required="required">
						<br><div class="phar">
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
						<input type="text" id="companyName" name="companyName" placeholder="필수" class="form-control"required="required">
				    </div>
			    </div>	
			    
			    <div class="form-group">
			      	<label for="companyNum" class="col-sm-3">사업자등록번호<span class="required">*</span></label>
					<div class="col-sm-9">
						<input type="number" id="companyNum" name="companyNum" placeholder="필수" class="form-control"required="required">
				    </div>
			    </div>
			    <div class="form-group">
			      	<label for="homepage" class="col-sm-3">홈페이지</label>
					<div class="col-sm-9">
						<input type="text" id="homepage" name="homepage" class="form-control">
				    </div>
			    </div>
			  	<div class="form-group">
			      	<label for="address" class="col-sm-3">반품/교환받을 주소</label>
					<div class="col-sm-9">
						<input type="text" id=" address " name="address" class="form-control"  onclick="goPopup()"/>
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
						<input type="text" id="marketerName" name="marketerName" placeholder="필수" class="form-control"required="required">
				    </div>
			    </div>	
			    
			    <div class="form-group">
			      	<label for="phone" class="col-sm-3">전화번호<span class="required">*</span></label>
					<div class="col-sm-9">
						<input type="number" id="phone" name="phone" placeholder="필수" class="form-control"required="required">
				    </div>
			    </div>
			    <div class="form-group">
			      	<label for="email" class="col-sm-3">이메일<a class="required">*</a></label>
					<div class="col-sm-9">
						<input type="text" id="email" name="email" placeholder="필수" class="form-control"required="required">
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
						<input type="text" id="brandName" name="brandName" placeholder="필수" class="form-control"required="required">
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
						<input type="text" id="category" name="category" class="form-control" placeholder="필수" value="" readonly="readonly"required="required">
				    </div>
			    </div>
			    
			    <div class="form-group">
			      	<label for="info" class="col-sm-3">상품소개<span class="required">*</span></label>
					<div class="col-sm-9">
						<textarea  id="info" name="info" class="form-control" rows="5" placeholder="필수" style="resize: none;"required="required"></textarea>
				    </div>
			    </div>
			    <div class="form-group">
			      	<label for="openMarket" class="col-sm-3">타입점 쇼핑몰</label>
					<div class="col-sm-9">
						<input type="text" id="openMarket" name="openMarket" class="form-control">
				    </div>
			    </div>


			</div>
			
			<hr>
			
			<div class="session">
				<div >
					<p class="mid-title">개인정보 수집 및 이용 동의</p>
					<p class="policy">개인정보보호법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관련 법령상의 개인정보보호 규정을
						준수하며, 판매자님이 입점신청 시 필요한 최소한의 개인 정보를 수집합니다.</p>
				</div>
				<div>
					<table class="policyInfo">

						<tr>
							<td class="p1">목적</td>
							<td class="p1">항목</td>
							<td class="p1">보유기간</td>
						</tr>
						<tr>
							<td class="p2">판매자 식별, 입점 검토, 공지사항의 전달</td>
							<td class="p2">영업담당자의 이름/전화번호/이메일</td>
							<td class="p2">입점 처리기간이 종료되는 시점</td>
						</tr>
						</tbody>
					</table>
				</div>
				<div class="agree">
					<input type="checkbox" id="agreeCh" name="agree">
					 입점신청을 위한 개인정보 수집 및 이용에 동의<span class="required">*</span>
				</div>
			</div>
			
			<div id="submitDiv">
				
				<input type="submit" id="submitBtn" value="신청완료">
			</div>
			
		</form>
    
	</div>
	
	
<script type="text/javascript">
   function goPopup() {
      // 주소검색을 수행할 팝업 페이지를 호출합니다.
      // 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
      var pop = window.open("../address/jusoPopup.jsp", "pop",
            "width=570,height=420, scrollbars=yes, resizable=yes,left=500,top=200");
   }

   function jusoCallBack(roadFullAddr,zipNo) {
      // 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
      document.getElementById(" address ").value = "("+zipNo+") "+roadFullAddr;
   }
</script>
	
</body>
</html>