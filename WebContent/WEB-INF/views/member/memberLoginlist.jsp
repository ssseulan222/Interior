<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#login').click(function() {
			var email = $("#email").val();
			var pw = $("#pw").val();
			 $.ajax({
	                type : 'post',
	                url : './memberLogin',
	                data:
	                {
	                    'email' : email,
	                    'pw' : pw
	                },
	                success : function(data) {
	                	alert(data);
	                   if (data==0) {
	                    	$("#login-from").val('');
	                        $("#result").html("이메일 주소나 비밀번호가 틀립니다.");
	                    } else if(data==1){
	                    	$("#login-from").val('0');
	                        $("#result").html("로그인성공");
	                        $("#login-form").submit();
	                    }else if(data==-1){
	                    	$("#login-from").val('');
	                    	$("#result").html("없는 이메일입니다.");
	                    }
	                }
	            }); // end ajax
	    	
		});
	});
</script>
<style type="text/css">
	.btn-priority{
		background-color: #11b9eb;
	}
	.sign-in-form__form__submit{
		display: block;
	    width: 100%;
	    height: 50px;
	    margin: 20px 0;
	    padding: 13px 15px;
	    font-size: 17px;
	    line-height: 1.41;
	}
	.sign-in-form{
		width: 100%;
	    max-width: 360px;
	    padding: 40px 30px;
	    margin: 0 auto;
	    box-sizing: border-box;
    }
    .sign-in-form_form_input{
    	display: block;
	    width: 100%;
	    margin : 0px;
	    height: 50px;
	    margin: 0;
	    font-size: 15px;
	    line-height: 50px;
	    color: #424242;
    }
    .sign-in-form_action{
	    margin: 20px 0;
	    text-align: center;
	    color: #424242;
	    font-size: 15px;
	    line-height: 1.4;
    }
    .sign-in-form_action_entry{
	   	display: inline-block;
	    padding: 3px 5px;
	    margin: -3px 10px;
    }
    a{
	    color: inherit;
	    text-decoration: none;
    }
    
</style>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div class="sign-in-form">
		<div>
		
		<a href="../index.do"><span>오늘의 집</span></a>
			<form class="sign-in-form__form" id="login-form" action="./memberLoginData" accept-charset="UTF-8" method="post" value="">
			
		    	<input placeholder="이메일" autofocus="autofocus" type="text" name="email" id="email">
			    <div>
			        <input placeholder="비밀번호" autocomplete="off"  type="password" name="pw" id="pw" value="">
			        <!--  <p class="sign-in-form__form__password__caps">Caps Lock이<br>켜져있네요!</p>   -->
			    </div>
			    <input type="button" class="btn btn-default" id="login" value="로그인">
			    <div id="result">
			
				</div>
			</form>
			
		</div>
		<div class="sign-in-form_action">
	        <!-- 비밀번호 찾기, 이메일을 입력하면 그 이메일에 비밀번호를 발송  -->
	        <!-- <a class="sign-in-form__action__entry" href="/users/password/new">비밀번호 재설정</a>   -->
	        <a class="sign-in-form__action__entry" href="./memberJoinlist">회원가입</a>
	    </div>
    </div>
</body>
</html>