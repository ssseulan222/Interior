<%@page import="java.sql.Connection"%>
<%@ page import="com.interior.community.qna.QnaDAO" %>
<%@ page import="com.interior.community.qna.QnaDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>QnA select Page</title>
	<c:import url="../temp/bootstrap.jsp" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/qnaSelect.css">
	
<script type="text/javascript">

 	$(function() {
		$("#deleteBtn").click(function() {
			alert("글이 삭제됩니다.")
		});
	}); 
 
 
 </script>	
	
</head>
<body>
	<%-- <c:import url="../temp/header.jsp" /> --%>
	<div>
		<div class="titleName">질문과 답변</div>
	</div>
	
	<div class="userName"><img alt="이미지" src="../img/m1.png">&nbsp;&nbsp;닉네임
		<button type="button" id="btn" class="btn btn-default">팔로우</button>
		<div class="share" id="share">공유</div>
		<div class="line"></div>
		<div class="keyword">질문과답변 인기 키워드</div>
		<div class="tag">
			<a>#리모델링/올수리</a>&nbsp;&nbsp;&nbsp;&nbsp;
			<a>#20평대</a>&nbsp;&nbsp;&nbsp;&nbsp;
			<a>#아파트</a>&nbsp;&nbsp;&nbsp;&nbsp;
			<a>#도배</a>
		</div>
		<div class="qnaTitle">인테리어 궁금한 것 직접 질문해보세요!</div>
		<div>
			<a href="./qnaWrite"><input type="button" name="qna" id="qna" value="질문하러 가기"
			class="btn btn-lg btn-priority col-6 offset-3"></a>
		</div>
	
	</div>
	
	<div class="contents">
		<div class="title">${dto.title}</div>
		<div class="con">${dto.contents}</div>
		<div class="img">사진 들어가는곳</div>
		<div class="date">${dto.reg_date}&nbsp;&nbsp;·&nbsp;&nbsp;조회수 : ${dto.hit}</div>
	</div>
	
	
	
	<div class="buttons">
		<input type="hidden" id="num" value="${dto.num}">
		<button type="button" id="updateBtn" class="btn btn-primary" 
		onclick="location.href='./qnaUpdate?num=${dto.num}'">수정하기</button>
		
		<button type="button" id="deleteBtn" class="btn btn-danger" 
		onclick="location.href='./qnaDelete?num=${dto.num}'">삭제하기</button>
	</div>
	
	<c:catch>
		 <c:forEach items="${upload}" var="up">
		 	<h4>UPLOAD : <a href="../upload/${up.fname}">${up.oname}</a></h4>
		 </c:forEach>
		</c:catch>
	
	
	
			
		
		



	<!-- <form action="form1" method="post"> -->
	<%-- <c:if test="${dto != null}"> --%>
<%-- 	<div class="contents">
	
		<h4>NUM :${dto.num}</h4>
		<h4>TITLE :${dto.title}</h4>
		<h4>CONTENTS :${dto.contents}</h4>
		<h4>WRITER :${dto.writer}</h4>
		<h4>DATE :${dto.reg_date}</h4>
		<h4>HIT :${dto.hit}</h4>
		<h4>TAG :${dto.tag}</h4>
		
		
		
	</div>  --%>
		
	
	<%-- </c:if> --%>
	<!-- </form> -->
</body>
</html>