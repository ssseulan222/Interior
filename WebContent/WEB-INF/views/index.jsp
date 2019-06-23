<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 홈</title>
<c:import url="../views/common/bootstrap.jsp" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">

 <script type="text/javascript">



</script>
<style type="text/css">
	.container {
		width:70%;
		margin: 0 auto;	
	}
	.category{
		width: 100%;
		margin: 0 auto;
	}
	.hit_img{
		width: 100%;
	}

</style>

</head>
<body>
<c:import url="../views/common/header.jsp" />

<nav class="navigation-secondary-wrap sticky-top" style="height: auto;">
    <div class="navigation-secondary__container sticky-content open" data-sticky-enabled="false" style="position: relative;">
      <div class="navigation-secondary">
        <div class="navigation-secondary__menu"><ul>
        <li class="navigation-menu__primary__secondary  activee" id="home">
    <a href="${pageContext.request.contextPath}/index.do">홈</a>
  </li>

        <li class="navigation-menu__primary__secondary " id="homeparty">
    <a href="${pageContext.request.contextPath}/homeparty/homeparty">집들이</a>
  </li>
  <li class="navigation-menu__primary__secondary" id="qna">
    <a href="${pageContext.request.contextPath}/qna/qnaList">질문과답변</a>
  </li>
    </ul></div>
      </div>
    </div>
  </nav>

	<div class="container">
	<!-- 메인 이미지 -->
	<div class="main_image">
		<div class="sample_image">
		    <img src="<%=request.getContextPath() %>/img/s1.jpeg" id="img_1" style="width: 800px; height: 500px;">
		</div>   
		    
		  <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width: 300px; height: 500px; display: inline-block;">
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
	
	
		  <div class="category">
		
		    <div class="i1">
		    	<a href="#"><img alt="" src="${pageContext.request.contextPath}/img/d2.jpg"></a>
		    		<div class="text">쇼핑하기</div>
		    </div>
		    
		    <div class="i1">
		    	<a href="#"><img alt="" src="${pageContext.request.contextPath}/img/d3.jpg"></a>
		    		<div class="text">평수별집구경</div>
		    </div>		    
		     <div class="i1">
		    	<a href="#"><img alt="" src="${pageContext.request.contextPath}/img/d5.jpg"></a>
		    		<div class="text">시공업체찾기</div>
		    </div>			    
		    
		    <div class="i1">
		    	<a href="#"><img alt="" src="${pageContext.request.contextPath}/img/d6.jpg"></a>
		    		<div class="text">시공견적계산</div>
		    </div>			  
		  
		    <div class="i1">
		    	<a href="#"><img alt="" src="${pageContext.request.contextPath}/img/d7.jpg"></a>
		    		<div class="text">셀프가이드</div>
		    </div>	
		    
		    <div class="i1">
		    	<a href="#"><img alt="" src="${pageContext.request.contextPath}/img/d8.jpg"></a>
		    		<div class="text">질문과답변</div>
		    </div>			  
		</div>
		<br>

		<div  class="hit_img" style="font-size : 15px; font-weight: bold; margin-top: 15px;">오늘의 인기 사진<br>
		
		<div class="hit_img_nav">
			<div class="s1">
				<a href="#"><img alt="이미지1" src="${pageContext.request.contextPath}/img/hitimg/640.jpg" style="width: 100%; height: 100%;"></a>
			</div>
			
			<div class="s1">
				<a href="#"><img alt="이미지2" src="${pageContext.request.contextPath}/img/hitimg/6401.jpg" style="width: 100%; height: 100%;"></a>
			</div>
			
			<div class="s1">
				<a href="#"><img alt="이미지3" src="${pageContext.request.contextPath}/img/hitimg/6402.jpg" style="width: 100%; height: 100%;"></a>
			</div>
			
			<div class="s1">
				<a href="#"><img alt="이미지4" src="${pageContext.request.contextPath}/img/hitimg/6403.jpg" style="width: 100%; height: 100%;"></a>
			</div>			
		</div> 
		</div>
</div> <!--  end container-->
    
    <c:import url="../views/common/footer.jsp" />
</body>
</html>