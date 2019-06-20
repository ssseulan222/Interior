<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집들이 글쓰기</title>
<c:import url="../temp/bootstrap.jsp"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/homepartyWrite.css">

<style type="text/css">
	.header{
		position: absolute;
		top:0;
		left: 60px;
		padding: 13px 0;
		line-height: 30px;
	}
	.icon-common-logo__d-4 {
    	width: 88px;
   		height: 30px;
    	background-position: left -120px top -120px;
	}
	
	.img_wrap {
	    width: 300px;
	    margin-top: 50px;
	}
	.img_wrap img {
	    max-width: 100%;
	}
	div > 
	#action_btn{
		width: 100%;
		background-color: rgba(66,66,66,0.9);
	    min-height: 70px;
	    overflow: hidden;
	    position: fixed;
	    bottom: 0;
	    z-index: 15;
	}
	#action_btn>.right {
	    float: right;
	    line-height: 70px;
	    height: 70px;
	    padding: 0 50px;
	    text-align: center;
	    font-size: 14px;
	    color: #ffffff;
	    font-weight: bold;
	    cursor: pointer;
	}
	#action_btn>.right.positive{
		color: #35c5f0;
	}
	#action_btn>.right.has_border {
    border-right: 1px solid rgba(0,0,0,0.15);
    border-left: 1px solid rgba(0,0,0,0.15);
}






.container-check {
  position: relative;
  padding-left: 35px;
  cursor: pointer;
  font-size: 16px;
  display: inline-block;
  margin-right: 10px;
}

/* Hide the browser's default radio button */
.container-check input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
}

/* Create a custom radio button */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: #eee;
  border-radius: 50%;
}

/* On mouse-over, add a grey background color */
.container-check:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the radio button is checked, add a blue background */
.container-check input:checked ~ .checkmark {
  background-color: #2196F3;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark-check:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the indicator (dot/circle) when checked */
.container-check input:checked ~ .checkmark:after {
  display: block;
}

/* Style the indicator (dot/circle) */
.container-check .checkmark:after {
 	top: 9px;
	left: 9px;
	width: 8px;
	height: 8px;
	border-radius: 50%;
	background: white;
}
.unit.one{
	left: -30px;
	position: relative;
    float: left;
    line-height: 40px;
    width: 40px;
}
.unit.two{
	left: -30px;
	position: relative;
    float: left;
    line-height: 40px;
    width: 40px;
}
#weekmonth{
    display: block;
    float: left;
    width: 200px;
    box-sizing: border-box;
    border: 1px solid #dcdcdc;
    background-color: #ffffff;
    font-size: 15px;
    line-height: 40px;
    height: 40px;
    padding: 0 15px;
    color: #424242;
}
#money{
	display: block;
    float: left;
    width: 200px;
    box-sizing: border-box;
    border: 1px solid #dcdcdc;
    background-color: #ffffff;
    font-size: 15px;
    line-height: 40px;
    height: 40px;
    padding: 0 15px;
    color: #424242;
}
#information>.field>.value.checkbox>div {
    float: left;
    width: 100px;
    padding: 8.5px 0;
}
#information_wrap #information>.field>.label1 {
    float: left;
    height: 40px;
    font-size : 16px;
    line-height: 40px;
    color: #424242;
    width: 110px;
}
.check {
    float: left;
    height: 40px;
}
.value.checkbox label{
	min-height: 20px;
    padding-left: 30px;
    margin-bottom: 0;
    font-weight: 400;
    cursor: pointer;
}
.labelcolor {
    display: inline;
    padding: .2em .6em .3em;
    font-size: 75%;
    font-weight: 700;
    line-height: 1;
    color: #fff;
    text-align: center;
    white-space: nowrap;
    vertical-align: baseline;
    border-radius: .25em;
    }
    .color-list__item {
    width: 24px;
    height: 24px;
    border-radius: 50%;
    display: inline-block;
    cursor: pointer;
    margin: 5px 7px 0 0;
	}
	.color-list__item input {
    position: absolute;
    left: -8000px;
    width: 0;
    height: 0;
    opacity: 0;
	}
	.color-list__item--border {
    width: 23.5px;
    height: 23.5px;
    display: inline-block;
    background-color: #ffffff;
    border: solid 0.5px #bdbdbd;
	}
	.icon-page-write__n-2 {
    width: 24px;
    height: 24px;
    background-position: left -520px top -40px;
	}
	.color-list__item input:checked+.check-icon {
    display: block;
	}
	[class*=icon-page-write__] {
    background-image: url(${pageContext.request.contextPath}/img/page-write.png);
    background-size: 600px auto;
}
#labelcolor {
    height: 40px;
    line-height: 40px;
    color: #424242;
    width: 110px;
}
</style>


<script type="text/javascript">

var sel_file;

	$(document).ready(function() {
	    $("#input_img").on("change", handleImgFileSelect);
	}); 
	
	function handleImgFileSelect(e) {
	    var files = e.target.files;
	    var filesArr = Array.prototype.slice.call(files);
	
	    filesArr.forEach(function(f) {
	        if(!f.type.match("image.*")) {
	            alert("확장자는 이미지 확장자만 가능합니다.");
	            return;
	        }
	
	        sel_file = f;
	
	        var reader = new FileReader();
	        reader.onload = function(e) {
	            $("#img").attr("src", e.target.result);
	        }
	        reader.readAsDataURL(f);
	    });
	}


</script>
<script type="text/javascript">
<%-- 공간 선택 --%>
	$(function() {
		$("#hometitle").blur(function() {
			var hometitle = $("#hometitle").val();
			alert(hometitle);
		});
		$("#place").blur(function() {
			var place = $("#place option:selected").val();
		});
		
		$("#floor").blur(function() {
			var floor = $(this).val();
		});
		$("#field").blur(function() {
			var field=$("#field option:selected").val();
		});
		$("#family").blur(function() {
			var family = $("#family option:selected").val();
		});
		$("#style").blur(function() {
			var style = $("#style option:selected").val();
		});
		$('#money').blur(function() {
			var money = $(this).val();
		});
		
		
		
		
		
		<%-- 기간 주,개월 바꾸기 --%>
		$('input[type=radio][name=weekmonth]').on('click',function(){
			var check = $('input[type=radio][name=weekmonth]:checked').val();
			if(check==0){
				$('#week').css('display','block');
				$('#month').css('display','none');
			}else if(check==1){
				$('#month').css('display','block');
				$('#week').css('display','none');
			}
		});
		
		<%-- --%>
		
		
		
		$("#publish_submit").click(function() {
			// 마지막 버튼 눌렀을때 서브밋 되는 것 $("#homepartywrite").submit();
			var work = $('input[name="work"]:checked').val();
			var check = $('input[type=radio][name=weekmonth]:checked').val();
			var a;
			if(check==0){
				a='주';
			}else if(check==1){
				a='개월';
			}
			var weekmonth = $('#weekmonth').val()+a;
			var color = 
			alert(weekmonth);
			alert(work);
			$("#homepartywrite").submit();
		});
		
		
		
		
	});
	
	
	
	
</script>


</head>
<body>	
<div>
	
		<form action="./homepartyWrite" id="homepartywrite" method="GET">
		<div id="header_top">
	
		<div class="header">
			<a href="">
			<%-- <img class="header_img" alt="" src="/img/common-logo.png">--%>
 			</a>
		</div>
		<div class="header_align">
		<div class="header">
	        <a class="title" href="${pageContext.request.contextPath}/index.do">
	        	오늘의집
	          <span class="icon-common-logo__d-4" aria-label="오늘의집"></span>
			</a>    
		</div>
			<div class="title">전체정렬</div>
			<!-- <div class="title_icon_left" data-align="0">왼쪽</div>
			<div class="title_icon_center" data-align="1">가운데</div>
			<div class="title_icon_right" data-align="2">오른쪽</div>
			 -->
		</div>
	</div> <!-- end header_top -->
		
	
	<!-- <form id="frm" action="/expert/homeparty//homepartyWriteAction" method="post" enctype="multipart/form-data">
		<input type="hidden" id="temp" name="temp" value="imgUpload">
	 -->
	 
	<!-- 커버사진 추가하기 -->
	<div id="contents">
		
		<div id="image_upload">
			<input type="file" id="input_img">
			<div class="img_wrap">
				<img id="img">
			</div>
		<!--  <input type="file" id="fileName" name="fileName">
		 <input type="submit" value="저장"> -->
		</div>
		
	</div> <!-- end contents -->
	
	
	<!-- </form>
	 -->
	
	
	<div id="title_write">
		
			<div class="form_group">
			
				<label for="title_name">온라인 집들이</label> 
				<input type="text" class="form-control" placeholder="제목을 입력해주세요." name="hometitle" id="hometitle">
				<br><br>
				
				<div id="form_image">
					<img alt="" src="../img/320.png">&nbsp;&nbsp;nickName
				</div>
				
				<div id="information">
					<p class="information_header">정보를 많이 입력해 주실수록 검색 결과에 많이 노출되어 조회수가 올라갑니다.</p>
					<div class="field">
						<div class="form-group">
						
						<div class="place">공간*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<select id="place" name="place">
								<option value="원룸">원룸&amp;오피스텔</option>
								<option value="아파트">아파트</option>
								<option value="빌라">빌라&amp;연립</option>
								<option value="단독주택">단독주택</option>
								<option value="사무공간">사무공간</option>
								<option value="상업공간">상업공간</option>
								<option value="기타">기타</option>
							</select>
							</div>
							<br><br>
							
							<div class="place">평수*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input maxlength="3" type="text" id="floor" name="floor">
							</div>
							<br><br>
							
							<div class="work">작업*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<div class="ui-checked">
							<label class="container-check">셀프 • DIY
							  <input type="radio" name="work" value="0">
							  <span class="checkmark"></span>
							</label>
							<label class="container-check">반셀프
							  <input type="radio" name="work" value="1">
							  <span class="checkmark"></span>
							</label>
							<label class="container-check">전문가
							  <input type="radio" checked="checked" name="work" value="2">
							  <span class="checkmark"></span>
							</label>
							</div>
							</div>
							<br><br>
							
							<div class="bun">분야*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<select id="field" name="field">
									<option value="리모델링">리모델링</option>
									<option value="홈스타일링">홈스타일링</option>
									<option value="부분공사">부분공사</option>
									<option value="건축">건축</option>
								</select>
							</div>
							<br><br>
							
							<div class="family">가족형태*
								<select id="family" name="family">
									<option value="0">선택해주세요.</option>
									<option value="싱글">싱글라이프</option>
									<option value="신혼">신혼부부</option>
									<option value="아기가 있는집">아기가 있는 집</option>
									<option value="취학 자녀가 있는집">취학 자녀가 있는 집</option>
									<option value="부모님과 함께">부모님과 함께 사는 집</option>
									<option value="기타">기타</option>
								</select>
							</div>
							<br><br>
							
								<div class="style">스타일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<select id="style" name="style">
									<option value="0">선택해주세요.</option>
									<option value="모던">모던</option>
									<option value="미니멀">미니멀&amp;심플</option>
									<option value="내추럴">내추럴</option>
									<option value="북유럽">북유럽</option>
									<option value="빈티지">빈티지&amp;레트로</option>
									<option value="클래식">클래식&amp;앤틱</option>
									<option value="프렌치">프렌치&amp;프로방스</option>
									<option value="러블리">러블리&amp;로맨틱</option>
									<option value="언더스트리얼">인더스트리얼</option>
									<option value="한국아시아">한국&amp;아시아</option>
									<option value="유니크">유니크&amp;믹스매치</option>
								</select>
							</div>
							<br><br>
							<div class="field">
								<div class="label1">기간
									<div class="value has-unit">
										<input type="number" name="weekmonthnumber" id="weekmonth"> 
										<div class="unit one" id="week">주</div>
										<div class="unit two" id="month" style="display: none;">개월</div>
										<div class="value checkbox">
											<div class="ui-checked">
											<label class="container-check">주
											  <input type="radio" value="0" name="weekmonth" id="week" checked="checked">
											  <span class="checkmark"></span>
											</label>
											<label class="container-check">개월
											  <input type="radio" value="1" name="weekmonth" id="month">
											  <span class="checkmark"></span>
											</label>
											</div>
										</div>
										
									</div>
								</div>
							</div>
							<br><br>
							
							<div class="field">
								<div class="label1">예산
									<div class="value has-unit">
										<input type="number" name="money" id="money"> 
										<div class="unit one">만원</div><br>
										
										
									</div>
								</div>
							</div>
							<br><br>
							
			<div class="field color-list--multiple color-list">
          <div id="labelcolor">전체톤</div>
            <label class="color-list__item" style=" background-color:#000000">
              <input type="checkbox" name="color" id="color" value="#000000" class="color-list__select">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item color-list__item--border" style=" background-color:#FFFFFF">
              <input type="checkbox" name="color" id="color" value="#FFFFFF" class="color-list__select">
              <span class="check-icon icon-page-write__o-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#BDBDBD">
              <input type="checkbox" name="color" id="color" value="#BDBDBD" class="color-list__select">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#F4E7C5">
              <input type="checkbox" name="color" id="color" value="#F4E7C5" class="color-list__select">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#e8c078">
              <input type="checkbox" name="color" id="color" value="#e8c078" class="color-list__select">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#644134">
              <input type="checkbox" name="color" id="color" value="#644134" class="color-list__select">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#d53736">
              <input type="checkbox" name="color" id="color" value="#d53736" class="color-list__select">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#ee8a94">
              <input type="checkbox" name="color" id="color" value="#ee8a94" class="color-list__select">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#fed144">
              <input type="checkbox" name="color" id="color" value="#fed144" class="color-list__select">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#96d783">
              <input type="checkbox" name="color" id="color" value="#96d783" class="color-list__select">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#90d0c5">
              <input type="checkbox" name="color" id="color" value="#90d0c5" class="color-list__select">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#3d97dd">
              <input type="checkbox" name="color" id="color" value="#3d97dd" class="color-list__select">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#223e5f">
              <input type="checkbox" name="color" id="color" value="#223e5f" class="color-list__select">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>

          
            

          <div class="color-list__save-list">
                      <div class="color-list__save-list__item">
              <input class="color" value="11" type="hidden" name="project[color_lists_attributes][0][color]" id="project_color_lists_attributes_0_color">
              <input class="destroy" value="false" type="hidden" name="project[color_lists_attributes][0][_destroy]" id="project_color_lists_attributes_0__destroy">
            </div><div class="color-list__save-list__item">
              <input class="color" value="12" type="hidden" name="project[color_lists_attributes][1][color]" id="project_color_lists_attributes_1_color">
              <input class="destroy" value="false" type="hidden" name="project[color_lists_attributes][1][_destroy]" id="project_color_lists_attributes_1__destroy">
            </div><div class="color-list__save-list__item">
              <input class="color" value="10" type="hidden" name="project[color_lists_attributes][2][color]" id="project_color_lists_attributes_2_color">
              <input class="destroy" value="false" type="hidden" name="project[color_lists_attributes][2][_destroy]" id="project_color_lists_attributes_2__destroy">
            </div><div class="color-list__save-list__item">
              <input class="color" value="9" type="hidden" name="project[color_lists_attributes][3][color]" id="project_color_lists_attributes_3_color">
              <input class="destroy" value="false" type="hidden" name="project[color_lists_attributes][3][_destroy]" id="project_color_lists_attributes_3__destroy">
            </div></div>

          <div class="color-list__field">
            <p class="color-list__field__text">다중 선택 가능</p>
          </div>
        </div>

          
            

         
						
							<div class="field color-list">
          <div id="labelcolor">벽 컬러</div>
            <label class="color-list__item" style=" background-color:#000000">
              <input type="radio" value="0" name="project[wall_color]" id="project_wall_color_0">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item color-list__item--border" style=" background-color:#FFFFFF">
              <input type="radio" value="1" name="project[wall_color]" id="project_wall_color_1">
              <span class="check-icon icon-page-write__o-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#BDBDBD">
              <input type="radio" value="2" name="project[wall_color]" id="project_wall_color_2">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#F4E7C5">
              <input type="radio" value="3" name="project[wall_color]" id="project_wall_color_3">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#e8c078">
              <input type="radio" value="4" name="project[wall_color]" id="project_wall_color_4">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#644134">
              <input type="radio" value="5" name="project[wall_color]" id="project_wall_color_5">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#d53736">
              <input type="radio" value="6" name="project[wall_color]" id="project_wall_color_6">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#ee8a94">
              <input type="radio" value="7" name="project[wall_color]" id="project_wall_color_7">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#fed144">
              <input type="radio" value="8" name="project[wall_color]" id="project_wall_color_8">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#96d783">
              <input type="radio" value="9" name="project[wall_color]" id="project_wall_color_9">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#90d0c5">
              <input type="radio" value="10" name="project[wall_color]" id="project_wall_color_10">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#3d97dd">
              <input type="radio" value="11" name="project[wall_color]" id="project_wall_color_11">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#223e5f">
              <input type="radio" value="12" name="project[wall_color]" id="project_wall_color_12">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
        </div>
        
							<div class="field color-list">
          <div id="labelcolor">바닥 컬러</div>
            <label class="color-list__item" style=" background-color:#000000">
              <input type="radio" value="0" name="project[floor_color]" id="project_floor_color_0">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item color-list__item--border" style=" background-color:#FFFFFF">
              <input type="radio" value="1" name="project[floor_color]" id="project_floor_color_1">
              <span class="check-icon icon-page-write__o-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#BDBDBD">
              <input type="radio" value="2" name="project[floor_color]" id="project_floor_color_2">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#F4E7C5">
              <input type="radio" value="3" name="project[floor_color]" id="project_floor_color_3">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#e8c078">
              <input type="radio" value="4" name="project[floor_color]" id="project_floor_color_4">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#644134">
              <input type="radio" value="5" name="project[floor_color]" id="project_floor_color_5">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#d53736">
              <input type="radio" value="6" name="project[floor_color]" id="project_floor_color_6">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#ee8a94">
              <input type="radio" value="7" name="project[floor_color]" id="project_floor_color_7">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#fed144">
              <input type="radio" value="8" name="project[floor_color]" id="project_floor_color_8">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#96d783">
              <input type="radio" value="9" name="project[floor_color]" id="project_floor_color_9">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#90d0c5">
              <input type="radio" value="10" name="project[floor_color]" id="project_floor_color_10">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#3d97dd">
              <input type="radio" value="11" name="project[floor_color]" id="project_floor_color_11">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
            <label class="color-list__item" style=" background-color:#223e5f">
              <input type="radio" value="12" name="project[floor_color]" id="project_floor_color_12">
              <span class="check-icon icon-page-write__n-2"></span>
            </label>
        </div>
							<br><br>
							<div class="style">세부공사&nbsp;&nbsp;
								<select>
									<option>선택해주세요.</option>
									<option>헤링본 마루</option>
									<option>대리석 바닥</option>
									<option>원목마루</option>
									<option>포세린타일</option>
									<option>폴리싱타일</option>
									<option>주방리모델링</option>
									<option>조명시공</option>
									<option>폴딩도어</option>
									<option>중문</option>
									<option>가벽&amp;파티션</option>
									<option>슬라이딩도어</option>
									<option>아트월</option>
									<option>발코니확장</option>
								</select>
							</div>
							<br><br>
							<!-- 
							<div class="link">링크&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="text" id="sel4" placeholder="버튼 클릭 이동URL">
								<input type="text" id="sel5" placeholder="하단 버튼명">
							</div> -->
							<br><br>
							
							<div class="location">지역&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<select class="first_select">
									<option value="">시/도 선택</option>
									<option value="0">서울특별시</option>
									<option value="1">부산광역시</option>
									<option value="2">대구광역시</option>
									<option value="3">인천광역시</option>
									<option value="4">광주광역시</option>
									<option value="5">대전광역시</option>
									<option value="6">울산광역시</option>
									<option value="7">강원도</option>
									<option value="8">경기도</option>
									<option value="9">경상남도</option>
									<option value="10">경상북도</option>
									<option value="11">전라남도</option>
									<option value="12">전라북도</option>
									<option value="13">충청남도</option>
									<option value="14">충청북도</option>
									<option value="15">세종특별자치시</option>
									<option value="16">제주특별자치도</option>
								</select>
								<select class="second_select 0"><option value="0">지역 선택</option>
									<option value="1">강남구</option>
									<option value="2">강동구</option>
									<option value="3">강북구</option>
									<option value="4">강서구</option>
									<option value="5">관악구</option>
									<option value="6">광진구</option>
									<option value="7">구로구</option>
									<option value="8">금천구</option>
									<option value="9">노원구</option>
									<option value="10">도봉구</option>
									<option value="11">동대문구</option>
									<option value="12">동작구</option>
									<option value="13">마포구</option>
									<option value="14">서대문구</option>
									<option value="15">서초구</option>
									<option value="16">성동구</option>
									<option value="17">성북구</option>
									<option value="18">송파구</option>
									<option value="19">양천구</option>
									<option value="20">영등포구</option>
									<option value="21">용산구</option>
									<option value="22">은평구</option>
									<option value="23">종로구</option>
									<option value="24">중구</option>
									<option value="25">중랑구</option>
								</select>
							</div>
							<br><br>
							
							<div class="c">(C)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="text" id="sel6" placeholder="사진 저작자를 밝혀주세요.">
							</div>
							<br><br>
							
							<div id="bottom" style="margin-bottom: 100px;">
								<div>1. 사진은 설명과 함께 최소 10장 이상 올려주세요.</div>
						        <div>2. 소개해주시는 공간에 대한 충분한 설명(스토리텔링)을 남겨주세요.</div>
						        <div>3. 다양한 구도의 스타일링 사진과 도면, 비포 사진은 보시는 분들에게 큰 도움이 됩니다.</div>
						        <div>4. 업로드 후에 일부 사진이 나오지 않는다면, 사진을 삭제한 후 다시 올려주세요.</div>
						        <div>5. 작성 중에는 임시저장(비공개 등록), 완료 후에는 발행신청을 눌러주세요. 게시글 확인 후 스케줄에 맞춰 오픈됩니다.</div>
						        <div>6. 게시글 오픈 전/후, 수정이 필요하실때는 [마이홈]-[나의스토리]에서 작성 게시글을 확인하실 수 있습니다</div>
							</div>
									
									
						</div>
					</div>
				</div>
			</div>
		
	</div> <!-- end title_write -->
	<div id="action_btn">
		<div id="publish_submit" class="right positive">발행신청</div>
		<div id="private_submit" class="right has_border">임시저장</div>	
	</div>
	</form>
</div>	
	

</body>
</html>