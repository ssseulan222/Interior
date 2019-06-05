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
	</div>	<!-- end container -->
		
		
		
	</div>	<!-- end header -->

</body>
</html>