<%@page import="com.interior.community.qna.QnaDTO"%>
<%@page import="com.interior.community.qna.QnaDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	/*
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	QnaDTO qnaDTO = new QnaDTO();
	qnaDTO.setTitle(request.getParameter("title"));
	qnaDTO.setWriter(request.getParameter("writer"));
	qnaDTO.setContents(request.getParameter("contents"));
	
	QnaDAO qnaDAO = new QnaDAO();
	int result = qnaDAO.insert(qnaDTO);
	*/

	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA Write Page</title>
	<c:import url="../temp/bootstrap.jsp" />

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/qnaWrite.css">
<script type="text/javascript">

	//location.href="./qnaList.jsp";

	$(function() {
		$("#save").click(function() {
			$('#frm').submit();
		});
	      
	      //////////////// 저장버튼 클릭시 form 전송
	      /* $("#save").click(function(){
	          oEditors.getById["contents"].exec("UPDATE_CONTENTS_FIELD", []);
	          $("#frm").submit();
	      }); */
	});    

      ////////////// 버튼 5개까지 체크하기
      function count_ck(obj){
		var chkbox = document.getElementsByName("tag");
		var chkCnt = 0;
		for(var i=0;i<chkbox.length; i++){
			if(chkbox[i].checked){
				chkCnt++;
			}
		}
		if(chkCnt>5){
			alert("최대 5개까지 선택 가능합니다.");
			obj.checked = false;
			return false;
		}
	}
	
	/////////////// 버튼 개수 출력
   	function test_checkbox() {
		var i = false;
		var values = document.getElementsByName("tag");
		var count = 0;
		for(var i=0; i<values.length; i++) {
			if(values[i].checked) {
				count++;
			}
		}
		if(count<2) {
			alert("2개 이상 선택");
		}
		else {
			alert(count + " 개 선택했습니다.");
			i = true;
		}
		
		$('.tag_count_t1').html(count);	//몇개 체크했는지 개수출력
		
		return i;
	}
      
</script>
</head>
<body>	

	<div id="header">
		<a href="../index.do">								<!-- 메인페이지 이동 / 주소 다시확인하기 -->
			<img alt="" src="../img/main.PNG">
		</a>
	</div>
	
	<form id="frm" action="./qnaWrite" method="post" enctype="multipart/form-data">
	
	
	<div id="container">
		<div class="qna">질문하기
		</div>
		<br>
				<!--  <button class="upload_btn"></button> 	<!-- 사진업로드 버튼 / 자리 이동해야됨 --> 
												
			<div class="qna_sub">상품구매, 배송 관련 문의가 필요하시다면 
				<a href="../qna/qnaList" id="qna_go">문의하러가기</a> 		<!-- 고객센터로 이동 / 주소 다시확인하기 -->
			</div>
			<br>
				<div class="form-group">
					<input type="text" class="form-control" id="title" name="title" placeholder="제목을 적어주세요.">
				</div>
			<br>
				<div class="form-group">
					<textarea class="form-control" rows="17" id="contents" name="contents"
					placeholder="내용을 적어주세요.&#13;&#10;참고가 되는 사진을 같이 공유해주시면 더 좋은 답변을 얻을 수 있습니다.&#13;&#10; ※ 비슷한 어려움을 겪는 유저를 위해 답변자에게 포인트를 지급하며, 답변이 달린 질문글은 &#13;&#10;삭제할 수 없습니다. &#13;&#10; ※ 인테리어와 관련 없는 질문은 숨김 및 삭제될 수 있습니다." ></textarea>
				</div>
			<br>
		
			<div class="click">
			  <!-- <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal"># 클릭하여 주요 키워드를 입력해주세요.</button> -->
			 <a href="#" data-toggle="modal" data-target="#myModal" class="click_modal"># 클릭하여 주요 키워드를 입력해주세요.</a>
			
			  <div class="modal fade" id="myModal" role="dialog">
			    <div class="modal-dialog">
			    
			      <!-- Modal content-->
			      <div class="modal-content">
			        <div class="modal-header">
			          <button type="button" class="close" data-dismiss="modal">&times;</button>
			          <h4 class="modal-title">키워드 선택 (최대 5개 선택 가능)</h4>
			        </div>
			        
			        
			        
				  		<!-- <form action="/action_page.php"> -->
				    <div class="input-group">
				    	<div class="input-group-btn">
				        	<button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
				      	</div>
				      	<input type="text" class="form-control" placeholder="궁금한 것을 검색해보세요." name="search">
				    </div>
				  		<!-- </form> -->	
			        
			        <div class="modal-body">
			            <div class="keyword_select">일반</div>				<!-- 체크할때마다 체크박스 카운트 -->
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="1" class="tag" onClick="count_ck(this)">리모델링/을수리
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="2" class="tag" onClick="count_ck(this)">견적
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="3" class="tag" onClick="count_ck(this)">업체추천
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="4" class="tag" onClick="count_ck(this)">셀프인테리어
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="5" class="tag" onClick="count_ck(this)">신혼
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="6" class="tag" onClick="count_ck(this)">리폼
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="7" class="tag" onClick="count_ck(this)">디자인 추천
						    </label>
						    <br><br>
					  	<div class="keyword_select">부분 공정</div>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="8" class="tag" onClick="count_ck(this)">가벽
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="9" class="tag" onClick="count_ck(this)">단열
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="10" class="tag" onClick="count_ck(this)">도배
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="11" class="tag" onClick="count_ck(this)">마루
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="12" class="tag" onClick="count_ck(this)">목공
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="13" class="tag" onClick="count_ck(this)">몰딩
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="14" class="tag" onClick="count_ck(this)">바닥
						    </label>
						    <br><br>
						  <div class="keyword_select">평수</div>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="15" class="tag" onClick="count_ck(this)">10평미만
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="16" class="tag" onClick="count_ck(this)">10평대
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="17" class="tag" onClick="count_ck(this)">20평대
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="18" class="tag" onClick="count_ck(this)">30평대
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="19" class="tag" onClick="count_ck(this)">40평대
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="20" class="tag" onClick="count_ck(this)">50평이상
						    </label>
						    <br><br>
						<div class="keyword_select">실내공간</div>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="21" class="tag" onClick="count_ck(this)">화장실
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="22" class="tag" onClick="count_ck(this)">베란다
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="23" class="tag" onClick="count_ck(this)">거실
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="24" class="tag" onClick="count_ck(this)">주방
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="25" class="tag" onClick="count_ck(this)">현관
						    </label>
						    <br><br>
  						<div class="keyword_select">기타</div>
						    <label class="checkbox-inline">
						      <input type="checkbox" name="tag" value="26" class="tag" onClick="count_ck(this)">기타
						    </label>
			        </div>
			        
			        <div class="modal-footer">
				          <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				          <input type="submit" class="btn btn-default" data-dismiss="modal" onclick="return test_checkbox()">
				    </div>
			          
			        </div>
			      </div>
			    </div>
			  </div>
			</div>
				
			<div class="tag_count">
				<span class="tag_count_t1"></span>개&nbsp;		<!-- 태그 추가할떄마다 카운트 증가해야됨 -->
				<span class="tag_count_t2"></span>최대
				<span class="tag_count_t3">5</span>개
			</div>
			
		<br>
		
	</div> <!-- end container -->
	  </form>
	  
	  	 <div class="fileBtn">
			<label for="file">파일 추가</label>
			<input type="file" id="f1" name="f1">
		</div>
	
		<br>
		<div class="footer">
			<div>				<!-- 버튼 클릭하면 질문 메인페이지 이동 -->
				<input type="button" name="commit" id="save" value="질문 저장하기" 
				class="btn btn-lg btn-priority col-6 offset-3">
			</div>
			
		</div>	<!-- end footer -->	  
	  
			
</body>
</html>