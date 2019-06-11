<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA 메인</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/qnaMain.css">

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




	
</script>
</head>
<body>
	<h1>qna main</h1>
	<div id="header">
	<br><br>
		<h1 class="title">질문과 답변</h1>
		<div class="title_sub">오늘의집 인테리어 고수들과 전문가들에게 조언을 받으세요.
		</div>
		
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
		<div class="contents">
			<h1>${qna}Main</h1>
				
			
			
			
			
		</div>

</body>
</html>