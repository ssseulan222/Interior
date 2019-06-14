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
		<div class="img" style="width:800px; float:left;">
		    <img src="<%=request.getContextPath() %>/img/s1.jpeg" id="img_1" style="width: 800px; height: 500px;">
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
	
	
		<%-- <!-- 슬라이드 이미지 -->
	    <div class="slide_image">
	    	<div class="banner_wraper">
			    <img src="<%=request.getContextPath() %>/img/p1.png">
			    <img src="/img/p2.png">
			    <img src="/img/p3.png">
			    <img src="/img/p4.png">
			    <img src="/img/p5.png">
			</div>
	    </div> --%>
	
	
	
	</div> <!--  end container-->
    
    
</body>
</html>