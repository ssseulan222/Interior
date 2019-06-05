<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA 쓰기</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/qnaWrite.css">
</head>
<body>	

	<div id="header">
		<a href="../index.do">								<!-- 메인페이지 이동 / 주소 다시확인하기 -->
			<img alt="" src="../img/main.PNG">
		</a>
	</div>
	
	<div id="container">
		<div class="qna">질문하기
		</div>
		<br>
												<!--  <button class="upload_btn"></button> 	<!-- 사진업로드 버튼 / 자리 이동해야됨 --> 
												
			<div class="qna_sub">상품구매, 배송 관련 문의가 필요하시다면 
				<a href="" id="qna_go">문의하러가기</a> 		<!-- 고객센터로 이동 / 주소 다시확인하기 -->
			</div>
		<br>
			<form>
				<div class="form-group">
					<input type="text" class="form-control" id="usr" placeholder="제목을 적어주세요.">
				</div>
			</form>
		<br>
			<form>
				<div class="form-group">
					<textarea class="form-control" rows="17" id="comment" 
					placeholder="내용을 적어주세요.&#13;&#10;참고가 되는 사진을 같이 공유해주시면 더 좋은 답변을 얻을 수 있습니다.&#13;&#10; ※ 비슷한 어려움을 겪는 유저를 위해 답변자에게 포인트를 지급하며, 답변이 달린 질문글은 &#13;&#10;삭제할 수 없습니다. &#13;&#10; ※ 인테리어와 관련 없는 질문은 숨김 및 삭제될 수 있습니다." ></textarea>
				</div>
			</form>
		<br>
			<div>
				<a href="" id="tag"># 클릭하여 주요 키워드를 입력해주세요.		<!-- modal사용해야됨 -->
				</a>
			</div>	
			<div class="tag_count">
				<span class="tag_count_t1"></span>개&nbsp;		<!-- 태그 추가할떄마다 카운트 증가해야됨 -->
				<span class="tag_count_t2"></span>최대
				<span class="tag_count_t3">5</span>개
			</div>
		<br>
	</div> <!-- end container -->

			<div class="footer">
				<div>				<!-- 버튼 클릭시 저장해야됨 -->
					<input type="submit" name="commit" value="질문 저장하기" class="btn btn-lg btn-priority col-6 offset-3">
				</div>
				
				
				
				
			</div>	<!-- end footer -->
</body>
</html>