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
<script type="text/javascript">
var oEditors = [];

$(function() {
	
	nhn.husky.EZCreator.createInIFrame({
          oAppRef: oEditors,
          elPlaceHolder: "contents",
          //SmartEditor2Skin.html 파일이 존재하는 경로
          sSkinURI: "/Servlet_4/se2/SmartEditor2Skin.html",  
          htParams : {
              // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
              bUseToolbar : true,             
              // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
              bUseVerticalResizer : true,     
              // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
              bUseModeChanger : true,         
              fOnBeforeUnload : function(){
                   
              }
          }, 
          fOnAppLoad : function(){
              //기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
              oEditors.getById["contents"].exec("PASTE_HTML", ["기존 DB에 저장된 내용을 에디터에 적용할 문구"]);
          },
          fCreator: "createSEditor2"
      });
      
      //저장버튼 클릭시 form 전송
      $("#save").click(function(){
          oEditors.getById["contents"].exec("UPDATE_CONTENTS_FIELD", []);
          $("#frm").submit();
      });
});
      
</script>

</head>
<body>	

	<div id="header">
		<a href="../index.do">								<!-- 메인페이지 이동 / 주소 다시확인하기 -->
			<img alt="" src="../img/main.PNG">
		</a>
	</div>
	
	<form id="frm" action="./${qna}Main" method="post" enctype="multipart/form-data">
	
	
	<div id="container">
		<div class="qna">질문하기
		</div>
		<br>
				<!--  <button class="upload_btn"></button> 	<!-- 사진업로드 버튼 / 자리 이동해야됨 --> 
												
			<div class="qna_sub">상품구매, 배송 관련 문의가 필요하시다면 
				<a href="../qna/qnaMain" id="qna_go">문의하러가기</a> 		<!-- 고객센터로 이동 / 주소 다시확인하기 -->
			</div>
		<br>
				<div class="form-group">
					<input type="text" class="form-control" id="usr" placeholder="제목을 적어주세요.">
				</div>
		<br>
				<div class="form-group">
					<textarea class="form-control" rows="17" id="comment" 
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
			            <p class="keyword_select">일반</p>				<!-- 체크할때마다 체크박스 카운트 -->
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">리모델링/을수리
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">견적
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">업체추천
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">셀프인테리어
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">신혼
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">리폼
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">디자인 추천
						    </label>
					  	<p class="keyword_select">부분 공정</p>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">가벽
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">단열
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">도배
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">마루
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">목공
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">몰딩
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">바닥
						    </label>
						  <p class="keyword_select">평수</p>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">10평미만
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">10평대
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">20평대
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">30평대
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">40평대
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">50평이상
						    </label>
						<p class="keyword_select">실내공간</p>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">화장실
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">베란다
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">거실
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">주방
						    </label>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">현관
						    </label>
  						<p class="keyword_select">기타</p>
						    <label class="checkbox-inline">
						      <input type="checkbox" value="">기타
						    </label>
			        </div>
			        
			        <div class="modal-footer">
				          <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				          <button type="button" class="btn btn-default" data-dismiss="modal">선택완료</button>
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

			<div class="footer">
				<div>				<!-- 버튼 클릭하면 질문 메인페이지 이동 -->
					<input type="button" name="commit" id="save" value="질문 저장하기" class="btn btn-lg btn-priority col-6 offset-3">
				</div>
				
			</div>	<!-- end footer -->
	  </form>
			
</body>
</html>