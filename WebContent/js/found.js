$(function() {
	
	var location="";
	var pro = "";
	$('#ll').change(function() {
		var xhttp;
		if(window.XMLHttpRequest){
			xhttp = new XMLHttpRequest();
		}else{
			xhttp= new ActiveXObject("Microsoft.XMLHTTP");	
		}
		
		location = $("#ll").text();
		pro=$("#pp").text();
		
		xhttp.open("post", "./ExpertFound", true);
		xhttp.setRequestHeader("location", location, "pro" , pro);
		
		xhttp.send();
		
		xhttp.onreadystatechange=function(){
			if(this.readyState==4 && this.status==200){
				$("#expert").html('<c:if test="${list != null}">'+
				'<c:forEach begin="0" step="1" end="${list.size() }" var="i">'+
					'<div>포트폴리오 준비중</div>'+
					'<div id="expert">'+
					'<div id="expert_info">'+
							'<img alt="profile" src=""> <span id="name">${list[i].getName()}</span>'+
							'<span>상담신청</span>'+
						'</div>'+
						'<div id="info">'+
							'<p>${list[i].getInfo()}</p>'+
						'</div>'+
					'</div>'+
				'</c:forEach>'+
			'</c:if>');
			}
		}
	});
});