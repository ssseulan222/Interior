<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/temp/bs.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/sellerInsert.css">
<script src="<%=request.getContextPath()%>/js/sellerInsert.js"></script>
<title>판매자 상품등록</title>

</head>
<body>
	<div class="sellerJoinFormDiv">
		<div id="topDiv">
			<h4 id="top1" class="topInfo">상품 관리센터</h4>
			<h1 id="top2" class="topInfo">상품등록</h1>
		</div>

		<hr>

		<form class="form-horizontal" action="./sellerInsert" method="post">
			<div class="session">

				<div class="mid-titleDiv">
					<p class="mid-title">판매자 정보</p>
				</div>
				<div class="form-group">
					<label for="seller" class="col-sm-3">판매자<span class="required">*</span></label>
					<div class="col-sm-9">
						<input type="text" id="seller" name="seller" class="form-control" required="required" readonly="readonly" value="${sessionScope.sellerDTO.companyName}" style="background-color: #f9f9f9c4; ">
					</div>
				</div>
			</div>

			<hr>

			<div class="session">

				<div class="mid-titleDiv">
					<p class="mid-title">상품정보</p>
				</div>
				<div class="form-group">
					<label for="name" class="col-sm-3">제품명<span class="required">*</span></label>
					<div class="col-sm-9">
						<input type="text" id="name" name="name" class="form-control" placeholder="상품명을 입력해주세요">
					</div>
				</div>
				
				<div class="form-group">
					<label for="category" class="col-sm-3">카테고리<span class="required">*</span></label>
					<div id="selCatDiv" class="col-sm-7">
						<div id="cat1" class="selCat col-sm-3">
							<h4>대분류</h4>
							<hr>
								<ul>
									<li><a class="category-1" id="1">가구</a></li>
									<li><a class="category-1" id="2">패브릭</a></li>
									<li><a class="category-1" id="3">홈데코/조명</a></li>
									<li><a class="category-1" id="4">가전</a></li>
									<li><a class="category-1" id="5">수납/생활</a></li>
									<li><a class="category-1" id="6">주방</a></li>
									<li><a class="category-1" id="7">DIY자재</a></li>
									<li><a class="category-1" id="8">시공/주문제작</a></li>
									<li><a class="category-1" id="9">반려동물</a></li>
								</ul>
						</div>
						<div id="cat2" class="selCat col-sm-3">
							b
						</div>
						<div id="cat3" class="selCat col-sm-3">
							c
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="category" class="col-sm-3"></label>
					<div class="col-sm-9">
						<input type="text" id="category" name="category" class="form-control" placeholder="선택된 카테고리" readonly="readonly" style="background-color: #f9f9f9c4; ">
					</div>
				</div>

				<div class="form-group">
					<label for="info" class="col-sm-3">제품설명<span class="required">*</span></label>
					<div class="col-sm-9">
						<textarea rows="5" cols="" name="info" id="info" class="form-control" style="resize: none;"></textarea>
					</div>
				</div>

			</div>

			<hr>

			<div class="session">

				<div class="mid-titleDiv">
					<p class="mid-title">가격정보</p>
				</div>
				<div class="form-group">
					<label for="price" class="col-sm-3">정가<span class="required">*</span></label>
					<div class="col-sm-9">
						<input type="number" id="price" name="price" class="form-control" placeholder="정가를 입력해주세요"><span class="unit">원</span>
					</div>
				</div>

				<div class="form-group">
					<label for="saleRate" class="col-sm-3">할인율<span class="required">*</span></label>
					<div class="col-sm-9">
						<input type="number" id="saleRate" name="saleRate" class="form-control" placeholder="할인율을 입력해주세요"><span class="unit">%</span>
					</div>
				</div>

				<div class="form-group">
					<label for="salePrice" class="col-sm-3">할인가<span class="required">*</span></label>
					<div class="col-sm-9">
						<input type="number" id="salePrice" name="salePrice" class="form-control" placeholder="할인된 가격을 입력해주세요"><span class="unit">원</span>
					</div>
				</div>

				<div class="form-group">
					<label for="lowesPrice" class="col-sm-3">최저가 체크<span class="required">*</span></label>
					<div class="radioBtn">
						<div>
							<input type="radio" id="lowesPrice" name="lowesPrice" checked="checked" value="1"> 최저가가 맞습니다.
							<input type="radio" id="lowesPrice" name="lowesPrice" value="0"> 최저가가 아닙니다.
						</div>
					</div>
				</div>

				<div class="form-group">
					<label for="point" class="col-sm-3">포인트 적립률<span class="required">*</span></label>
					<div class="col-sm-9">
						<input type="number" id="point" name="point" class="form-control" readonly="readonly" style="background-color: #f9f9f9c4; "><span class="unit">P</span>
					</div>
				</div>

			</div>

			<hr>
			
			<div class="session">

				<div class="mid-titleDiv">
					<p class="mid-title">배송정보</p>
				</div>
				<div class="form-group">
					<label for="delivery" class="col-sm-3">배송종류<span class="required">*</span></label>
					<div class="col-sm-9">
						 <input type="text" id="delivery" name="delivery" class="form-control" placeholder="일반택배배송/우체국 택배 등">
					</div>
				</div>
				<div class="form-group">
					<label for="deliveryLocal" class="col-sm-3">배송불가지역<span class="required">*</span></label>
					<div class="col-sm-9">
						 <input type="text" id="deliveryLocal" name="deliveryLocal" class="form-control" placeholder="배송불가 지역을 입력해주세요.">
					</div>
				</div>
				<div class="form-group">
					<label for="deliveryDiff" class="col-sm-3">지역별 차등배송비<span class="required">*</span></label>
					<div class="col-sm-9">
						<input type="text" id="deliveryDiff" name="deliveryDiff" class="form-control" placeholder="배송비가 차등 부과되는 지역과 배송비를 입력해주세요">
					</div>
				</div>
				<div class="form-group">
					<label for="freeDeliv" class="col-sm-3">무료택배 체크<span class="required">*</span></label>
					<div class="radioBtn">
						<div>
							<input type="radio" id="freeDeliv" name="freeDeliv" checked="checked" value="1"> 무료택배
							<input type="radio" id="freeDeliv" name="freeDeliv" value="0"> 유료택배
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="deliveryFee" class="col-sm-3">택배비<span class="required">*</span></label>
					<div class="col-sm-9">
						<input type="number" id="deliveryFee" name="deliveryFee" class="form-control"><span class="unit">원</span>
					</div>
				</div>
				
			</div>
			

			<hr>

			<div class="session">

				<div class="mid-titleDiv">
					<p class="mid-title">교환 및 환불 정보</p>
				</div>
				<div class="form-group">
					<label for="returnFee" class="col-sm-3">반품배송비</label>
					<div class="col-sm-9">
						<input type="text" id="returnFee" name="returnFee" class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label for="exchangeFee" class="col-sm-3">교환배송비</label>
					<div class="col-sm-9">
						<input type="text" id="exchangeFee" name="exchangeFee" class="form-control">
					</div>
				</div>

				<div class="form-group">
					<label for="sendPlace" class="col-sm-3">보내실곳</label>
					<div class="col-sm-9">
						<input type="text" id="sendPlace" name="sendPlace" class="form-control" placeholder="우편번호와 주소를 입력해주세요." value="${sellerDTO.address}">
					</div>
				</div>

			</div>

			<hr>

			<div class="session">
				<div>
					<p class="mid-title">개인정보 수집 및 이용 동의</p>
					<p class="policy">개인정보보호법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관련 법령상의 개인정보보호 규정을 준수하며, 판매자님이 입점신청 시 필요한 최소한의 개인 정보를 수집합니다.</p>
				</div>
				<div>
					<table class="policyInfo">

						<tr>
							<td class="p1">목적</td>
							<td class="p1">항목</td>
							<td class="p1">보유기간</td>
						</tr>
						<tr>
							<td class="p2">판매자 식별, 입점 검토, 공지사항의 전달???</td>
							<td class="p2">영업담당자의 이름/전화번호/이메일???</td>
							<td class="p2">입점 처리기간이 종료되는 시점???</td>
						</tr>
						</tbody>
					</table>
				</div>
				<div class="agree">
					<input type="checkbox" id="agreeCh" name="agree"> 상품등록을 위한 약관에 동의 <span class="required">*</span>
				</div>
			</div>

			<div id="submitDiv">

				<input type="submit" id="submitBtn" value="신청완료">
			</div>

		</form>


	</div>
</body>
</html>