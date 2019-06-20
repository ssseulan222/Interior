<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 홈</title>
<c:import url="./temp/bootstrap.jsp" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/index.css">

 <script type="text/javascript">



</script>

</head>
<body>
<c:import url="../views/temp/header.jsp" />
	<div class="container">
	
	<!-- 메인 이미지 -->
	<div class="main_image">
		<div class="img" style="width:840px; float:left;">
		    <img src="<%=request.getContextPath() %>/img/s1.jpeg" id="img_1" style="width: 820px; height: 500px;">
		    <%-- <img src="<%=request.getContextPath() %>/img/p1.png" id="img_2" style="width: 300px; height: 500px;"> --%>
		    
		</div>   
		    
		  <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width: 300px; height: 500px; float:left;">
		    <!-- Indicators -->
		    <ol class="carousel-indicators">
		      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		      <li data-target="#myCarousel" data-slide-to="1"></li>
		      <li data-target="#myCarousel" data-slide-to="2"></li>
		      <li data-target="#myCarousel" data-slide-to="3"></li>
		      <li data-target="#myCarousel" data-slide-to="4"></li>
		      
		    </ol>
		
		    <!-- Wrapper for slides -->
		    <div class="carousel-inner">
		      <div class="item active">
		        <img src="<%=request.getContextPath() %>/img/p1.png" style="width: 300px; height: 500px;">
		      </div>
		
		      <div class="item">
		        <img src="<%=request.getContextPath() %>/img/p2.png" style="width: 300px; height: 500px;">
		      </div>
		    
		      <div class="item">
		        <img src="<%=request.getContextPath() %>/img/p3.png" style="width: 300px; height: 500px;">
		      </div>
		      
		      <div class="item">
		        <img src="<%=request.getContextPath() %>/img/p4.png" style="width: 300px; height: 500px;">
		      </div>
		      
		      <div class="item">
		        <img src="<%=request.getContextPath() %>/img/p5.png" style="width: 300px; height: 500px;">
		      </div>				      				      
		      
		    </div>
		
		    <!-- Left and right controls -->
		    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
		      <span class="glyphicon glyphicon-chevron-left"></span>
		      <span class="sr-only">Previous</span>
		    </a>
		    <a class="right carousel-control" href="#myCarousel" data-slide="next">
		      <span class="glyphicon glyphicon-chevron-right"></span>
		      <span class="sr-only">Next</span>
		    </a>
		  </div>
	 </div>
	</div> <!--  end container-->
	
		  <div class="category">
		    <div class="i1">
		    	<a href="#"><img alt="" src="<%=request.getContextPath() %>/img/d1.jpg"></a>
		    		<div class="text">신혼가구</div>
		    </div>
		    
		    <div class="i1">
		    	<a href="#"><img alt="" src="<%=request.getContextPath() %>/img/d2.jpg"></a>
		    		<div class="text">쇼핑하기</div>
		    </div>
		    
		    <div class="i1">
		    	<a href="#"><img alt="" src="<%=request.getContextPath() %>/img/d3.jpg"></a>
		    		<div class="text">평수별집구경</div>
		    </div>		    
		    
		    <div class="i1">
		    	<a href="#"><img alt="" src="<%=request.getContextPath() %>/img/d4.jpg"></a>
		    		<div class="text">공간별사진</div>
		    </div>
		    
		    <div class="i1">
		    	<a href="#"><img alt="" src="<%=request.getContextPath() %>/img/d5.jpg"></a>
		    		<div class="text">시공업체찾기</div>
		    </div>			    
		    
		    <div class="i1">
		    	<a href="#"><img alt="" src="<%=request.getContextPath() %>/img/d6.jpg"></a>
		    		<div class="text">시공견적계산</div>
		    </div>			  
		  
		    <div class="i1">
		    	<a href="#"><img alt="" src="<%=request.getContextPath() %>/img/d7.jpg"></a>
		    		<div class="text">셀프가이드</div>
		    </div>	
		    		  
		    <div class="i1">
		    	<a href="#"><img alt="" src="<%=request.getContextPath() %>/img/d8.jpg"></a>
		    		<div class="text">질문과답변</div>
		    </div>			  
		</div>	   
	
	
	
    
    
</body>
</html>