<%@page import="com.interior.community.qna.QnaDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA List Page</title>
	<c:import url="../temp/bootstrap.jsp" />
	
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/qnaList.css">
<script type="text/javascript">
	$(document).ready(function(){
	    $("#keyword").click(function(){
	        if($("#hiddenList").is(":visible")){
	            $("#hiddenList").slideUp();
	        }else{
	            $("#hiddenList").slideDown();
	        }
	    });
	});
	
	 $(function() {
		$("#qna_go").click(function() {
			location.href="./qnaWrite";
		});
	}); 
	


</script>


</head>
<body>
	 <%-- <c:import url="../temp/header.jsp" /> --%>
	
	
	<div id="header">
	<br><br>
		<h1 class="title">질문과 답변</h1>
		<div class="title_sub">오늘의집 인테리어 고수들과 전문가들에게 조언을 받으세요.</div>
		
		
	<div class="container">
  		<form action="/action_page.php">
    <div class="input-group">
    	<div class="input-group-btn">
        	<button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
      	</div>
      	<input type="text" class="form-control" placeholder="궁금한 것을 검색해보세요." name="search">
    </div>
  		</form>
  		<div class="tag">
  			<a href=""># 리모델링/을수리</a>&nbsp;&nbsp;
  			<a href=""># 20평대</a>&nbsp;&nbsp;
  			<a href=""># 아파트</a>&nbsp;&nbsp;
  			<a href=""># 도배</a>&nbsp;&nbsp;
  		</div>
  		
	<div>
  	<a href="#" id="keyword">키워드 더보기</a>
		<ul id="hiddenList" class="example01" style="display: none;">
			<li class="c1">일반</li>
			  <li><a href="#"># 리모델링/을수리</a></li>
			  <li><a href="#"># 견적</a></li>
			  <li><a href="#"># 업체 추천</a></li>
			  <li><a href="#"># 셀프인테리어</a></li>
			  <li><a href="#"># 신혼</a></li>
			  <li><a href="#"># 리폼</a></li>
			  <li><a href="#"># 디자인 추천</a></li>
			  <br><br>
			<li class="c1">가구</li>
			  <li><a href="#"># 가구배치/이동</a></li>
			  <li><a href="#"># 냉장고</a></li>
			  <li><a href="#"># 블라인드</a></li>
			  <li><a href="#"># 손잡이</a></li>
			  <li><a href="#"># 수전/싱크대</a></li>
			  <li><a href="#"># 소파</a></li>
			  <li><a href="#"># 식탁</a></li>
			  <br><br>
			<li class="c1">공간</li>
			  <li><a href="#"># 단독주택</a></li>
			  <li><a href="#"># 아파트</a></li>
			  <li><a href="#"># 상가</a></li>
			  <li><a href="#"># 원룸</a></li>			  
			  <br><br>
			<li class="c1">평수</li>
			  <li><a href="#"># 10평미만</a></li>
			  <li><a href="#"># 10평대</a></li>
			  <li><a href="#"># 20평대</a></li>
			  <li><a href="#"># 30평대</a></li>			  
			  <li><a href="#"># 40평대</a></li>			  
			  <li><a href="#"># 50평이상</a></li>			  
			  <br><br>
			<li class="c1">실내 공간</li>
			  <li><a href="#"># 화장실</a></li>
			  <li><a href="#"># 베란다</a></li>			  
			  <li><a href="#"># 거실</a></li>			  
			  <li><a href="#"># 주방</a></li>			  
			  <li><a href="#"># 현관</a></li>			  
			  <br><br>
			<li class="c1">기타</li>
			  <li><a href="#"># 기타</a></li>			  
		</ul>
		
	</div>  		
	
	</div>	<!-- end container -->
		
</div>	<!-- end header -->
	<br>
		<div class="qna_btn">
			<input type="button" id="qna_go" value="질문하기" style="background-color: #35C5F0;"
			class="btn btn-lg btn-priority col-6 offset-3">
		</div>
	
	<br>
	<div class="contents">
	<table class="table table-striped">
		<thead>
		<tr>
			<th>NUM</th>
			<th>TITLE</th>
			<th>CONTENTS</th>
			<th>WRITER</th>
			<th>DATE</th>
			<th>HIT</th>
			<!-- <th>TAG</th> -->
		</tr>
		</thead>
		<c:forEach items="${list}" var="dto" >
			<tr>
				<td>${dto.num}</td>
				<td><a href="./qnaSelect?num=${dto.num}">${dto.title}</a></td>
				<td><a href="./qnaSelect?num=${dto.num}">${dto.contents}</a></td>
				<td>${dto.writer}</td>
				<td>${dto.reg_date}</td>
				<td>${dto.hit}</td>
				<%-- <td>${dto.tag}</td> --%>
							
			</tr>
		</c:forEach>
	</table>
	</div>
	
	<div class="page">
  		<ul class="pager">
  			<c:if test="${pager.curBlock gt 1}"> 
   			<li class="previous"><a href="./qnaList?curPage=${pager.startNum-1}&kind=${pager.search.kind}&search=${pager.search.search}">Previous</a></li>
  			</c:if>
  			
  			<li>
  			<ul class="pagination">
  				<c:forEach begin="${pager.startNum }" end="${pager.lastNum}" var="i">
 	  				<li><a href="./qnaList?curPage=${i}&kind=${pager.search.kind}&search=${pager.search.search}">${i}</a></li>
  				</c:forEach>
 			</ul>
  			</li>
  			
  			<c:if test="${pager.curBlock lt pager.totalBlock}">
    		<li class="next"><a href="./qnaList?curPage=${pager.lastNum+1}&kind=${pager.search.kind}&search=${pager.search.search}">Next</a></li>
  			</c:if>
  		</ul>
	</div>
	
	
		
</body>
</html>