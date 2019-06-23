<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function () {
		var location = document.getElementById("location").innerHTML;
		var pro = document.getElementById("pro").innerHTML;
		if(pro=="필요시공"){
			pro="";
		}
		
	}
</script>
</head>
<body>
	<div class="main">
		<span id="location">서울특별시 강남구</span><span id="pro">필요시공</span>

		<div>
			<div>포트폴리오 준비중</div>
			<div id="expert">
				<div id="expert_info">
					<img alt="profile" src=""> <span id="name"></span> <span>상담신청</span>
				</div>
				<div id="info">
					<p></p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>