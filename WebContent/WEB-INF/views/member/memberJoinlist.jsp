<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 약관동의------------------------------------------------------  -->
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
<%-- 이메일  --%>
	$('#email_last')
				.blur(
						function() {
							var email_first = $('#email_first').val();
							var email_last = $(this).val();
							var emailexp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
							var email = email_first + "@" + email_last;

							if (email.match(emailexp) != null) {
								// ajax 실행
								$
										.ajax({
											type : 'post',
											url : './memberemailCheck',
											data : {
												'email' : email
											},
											success : function(data) {
												if (data == 0) {
													$("#result").html("");
													$("#email").val('0');

												} else {
													$("#result").html(
															"이미 가입된 이메일입니다.");
													$("#email").val('');
												}
											}
										}); // end ajax
							} else {
								result.innerHTML = "이메일 형식이 올바르지 않습니다.";
								$("#email").val('');
							}

						});
		$('#email_first')
				.blur(
						function() {
							var email_first = $(this).val();
							var email_last = $('#email_last').val();
							var emailexp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
							var email = email_first + "@" + email_last;
							if (email.match(emailexp) != null) {
								// ajax 실행
								$
										.ajax({
											type : 'post',
											url : './memberemailCheck',
											data : {
												'email' : email
											},
											success : function(data) {
												if (data == 0) {
													$("#result").html("");
													$("#email").val('0');
												} else {
													$("#result").html(
															"이미 가입된 이메일입니다.");
													$("#email").val('');
												}
											}
										}); // end ajax
							} else {
								result.innerHTML = "이메일 형식이 올바르지 않습니다.";
								$("#email").val('');
							}

						});
<%-- 비밀번호 --%>
	$('#pw')
				.blur(
						function() {
							var pw = document.getElementById("pw").value;
							var pwcheck = document.getElementById("pwcheck").value;
							var pattern1 = /[0-9]/;
							var pattern2 = /[a-zA-Z]/;
							var pattern3 = /[~!@\#$%<>^&*()_+-]/;

							if (pw.length == 0) {
								result_pw.innerHTML = "비밀번호를 입력해 주세요.";
								$("#pww").val('');
							} else if (!pattern1.test(pw) || !pattern2.test(pw)
									|| !pattern3.test(pw)) {
								result_pw.innerHTML = "비밀번호 대문자, 소문자, 숫자, 특수문자 중 3가지가 포함되야 합니다";
								$("#pww").val('');
								return false;
							} else if (pw.length<8&&pw.length>0) {
								result_pw.innerHTML = "비밀번호는 8글자 이상어야합니다";
								$("#pww").val('');
							} else {
								result_pw.innerHTML = "";
								$("#pww").val('0');
							}

						});
		$('#pwcheck').blur(function() {
			var pw = document.getElementById("pw").value;
			var pwcheck = document.getElementById("pwcheck").value;
			if (pwcheck.lenght == 0) {
				result_pwpw.innerHTML = "비밀번호 확인을 입력해 주세요.";
				$("#pwwcheck").val('');
			} else if (pw == pwcheck) {
				result_pwpw.innerHTML = "";
				$("#pwwcheck").val('0');
			} else {
				result_pwpw.innerHTML = "비밀번호가 일치하지 않습니다.";
				$("#pwwcheck").val('');
			}
		});
<%-- 별명  --%>
	$('#nickname').blur(function() {
			var nickname = document.getElementById("nickname");
			var nickname_val = document.getElementById("nickname").value;
			if (nickname_val.length == 0) {
				result_nickname.innerHTML = "별명을 입력 해 주세요";
				$("#nickname1").val('');
			} else if (nickname_val.length > 1 && nickname_val.length < 16) {
<%-- 닉네임중복 확인 --%>
	var nickname = $(this).val();
				// ajax 실행
				$.ajax({
					type : 'post',
					url : './membernicknameCheck',
					data : {
						'nickname' : nickname
					},
					success : function(data) {
						if (data == 0) {
							$("#result_nickname").html("사용 가능한 아이디 입니다.");
							$("#nickname1").val('0');

						} else {
							$("#result_nickname").html("사용 불가능한 아이디 입니다.");
							$("#nickname1").val('');
						}
					}
				}); // end ajax
				// end keyup

			} else if (nickname_val.length > 15) {
				result_nickname.innerHTML = "별명은 15글자 이하여야 합니다.";
				$("#nickname1").val('');
			} else if (nickname_val.length == 1) {
				result_nickname.innerHTML = "별명은 최소 2글자 이상이어야 합니다.";
				$("#nickname1").val('');
			} else {

			}

		});
<%--  약관 동의  --%>
	$('#checkAll').click(function() {
			var c = $(this).prop('checked');
			$('.check').prop('checked', c);
		});
		//*************************************

		$('.check').click(function() {
			var c = true;
			$('.check').each(function() {
				if (!$(this).prop('checked')) {
					c = false;
				}
			});
			$('#checkAll').prop('checked', c);
		});

		//*************************************

		$('#join').click(function() {
			var d = $('#checkAll').prop('checked');
<%-- 약관동의 필수와 선택 --%>
	var a = $('#checka').prop('checked');
			var b = $('#checkb').prop('checked');
			var c = $('#checkc').prop('checked');

			var r = true;
			$(".form-control").each(function() {
				if ($(this).val() == '') {
					r = false;
				}
			});
			if (r) {
				if (d) {
					$("#frm").submit();
					//	location.href="./memberJoin";
				} else if (a & b & c) {
					$("#frm").submit();
					//	location.href="./memberJoin";
				} else {
					//	alert('약관에 동의');
				}
			} else {
				// alert('모두 작성');
			}
		});
<%-- --%>
	});
</script>
<!-- 약관동의----------------------------------------------- -->
<style type="text/css">
	#member_wrap {
		width: 360px;
		margin-right: auto;
		margin-left: auto;
		max-width: 100%;
		box-sizing: border-box;
		min-height: 1px;
		font-size: 15px;
	}
	
	.result_font {
		color: #F77;
		font-size: 13px;
	}
	
	.form-group {
		width: 100%;
		margin-bottom: 5px;
	}
	
	#font_pw {
		font-size: 11px;
	}
	
	.form-control {
		width: 100%;
	}
	
	#has-account {
		text-align: : center;
		text-decoration: none;
	}
	
	.underline {
		text-decoration: underline;
		color: inherit;
	}
	
	.font_block {
		width: 100%;
		margin-bottom: 20px;
		margin-top: 10px;
	}
	
	.check_font {
		margin-bottom: 10px;
	}
	main {
	    margin-top: 60px;
	    margin-bottom: 60px;
	}
	.form-control {
	    transition: .2s border-color, .2s box-shadow, .2s background-color;
	    display: block;
	    box-sizing: border-box;
	    height: 40px;
	    width: 100%;
	    padding: 0 15px;
	    line-height: 40px;
	    border-radius: 10px;
	    border: solid 1px #dbdbdb;
	    background-color: white;
	    color: #424242;
	    font-size: 12px;
	}
	.email-control{
		display:inline-block;
		width: 46%;
		transition: .2s border-color, .2s box-shadow, .2s background-color;
	    box-sizing: border-box;
	    height: 40px;
	    padding: 0 15px;
	    line-height: 40px;
	    border-radius: 10px;
	    border: solid 1px #dbdbdb;
	    background-color: white;
	    color: #424242;
	    font-size: 12px;
	}
	.signup-form__policy{
		margin-bottom: 30px;
		margin-top: 40px;
	}
	.signup-form__policy__check-all {
	    height: 22px;
	    line-height: 22px;
	    position: relative;
	    margin-bottom: 15px;
	}
	.bold {
	    font-weight: bold;
	}
	.signup-form__policy__check-all>.form-check {
	    position: absolute;
	    right: 15px;
	    top: 0;
	}
	.form-check-label {
	    cursor: pointer;
	    display: block;
	    margin-bottom: 10px;
	    padding-left: 32px;
	    min-height: 22px;
	    line-height: 22px;
	    position: relative;
	}
	
	.check-img {
	    box-sizing: border-box;
	    height: 22px;
	    width: 22px;
	    border-radius: 4px;
	    background-color: white;
	    border: solid 1px #dbdbdb;
	    display: block;
	    transition: .2s ease;
	    position: absolute;
	    left: 0;
	    top: 0;
	}
	.signup-form__policy__policy-list{
		border: solid 1px #dbdbdb;
	    padding: 15px;
	    box-sizing: border-box;
	}
	.signup-form__policy__more-14__form-check{
		position: absolute;
		right: 0;
		top : 0;
	}
	.signup-form__policy__policy-item{
		min-height: 22px;
	    position: relative;
	    line-height: 22px;
	}
	.text-red {
    	color: #F77;
	}
	.form-check{
		position: absolute;
    right: 0;
    top: 0;
	}
	.text-gray-light {
	    color: #bdbdbd;
	}
	.check-img:after {
	    content: "";
	    position: absolute;
	    left: 50%;
	    top: 50%;
	    transform: translate(-50%, -50%);
	    box-sizing: border-box;
	    display: block;
	    width: 14px;
	    height: 14px;
	    background-size: 14px;
	    background-color : blue;
	    background-image: url(../img/ic-checkbox.png);
	    opacity: 0;
	}
	#join {
	    width: 100%;
	    margin-bottom: 30px;
	}
	.btn-priority {
	    background-color: #35C5F0;
	    border-color: #35C5F0;
	    color: white;
	}
	.btn-lg {
	    line-height: 1;
	    height: 70px;
	    padding: 26px 0;
	    font-size: 18px;
	}
	.btn {
		margin-top : 20px;
	    box-sizing: border-box;
	    display: inline-block;
	    padding: 0;
	    border-width: 1px;
	    border-style: solid;
	    text-align: center;
	    border-radius: 4px;
	    font-weight: bold;
	}
</style>
</head>
<body>
<header id="simplefield-gnb" class="simplified-gnb">
	<div>
		<a href="${pageContext.request.contextPath}/index.do">오늘의집</a>
	</div>
</header>
<main role="main">
	<section id="member_wrap">
		<div>
			<div>
				<label class="form-radio-label"> 
				<input class="form-radio" type="radio" name="signup-form-type" value="0" checked="">
					<span class="radio-img" id="radio-img-first"></span>일반 유저
				</label>
			</div>
			<div>
				<!-- 전문가 페이지 이동 -->
				<a class="form-radio-label" href="#"><input type="radio"> <span class="radio-img"></span>판매자회원가입
				</a>
			</div>
			<div>
				<!-- 전문가 페이지 이동 -->
				<a class="form-radio-label" href="#"><input type="radio"> <span class="radio-img"></span>전문가
				</a>
			</div>
		</div>
		<h3 class="font_block">회원가입</h3>
		<form action="./memberJoin" method="get" enctype="multipart/form-data" id="frm">
			<div class="form-group">
				<label for="title" id="email" name="email"
					class="font_block">이메일</label>
				<div style="width: 100%">
					<input type="text" class="form-control_first email-control" id="email_first"
						name="email_first"> 
						<span>@</span> 
						<input type="text" class="form-control_last email-control" id="email_last"
						name="email_last">
				</div>
				<div id="result" class="result_font"></div>
			</div>
			<br>
			<div class="form-group">
				<label for="title" id="pww" class="font_block">비밀번호</label>
				<p id="font_pw" class="font_block">8자이상 영문 대 소문자, 숫자, 특수문자를
					사용하세요.</p>
				<div style="width: 100%">
					<input type="password" class="form-controll  form-control" id="pw" name="pw">
				</div>
				<div id="result_pw" class="result_font"></div>
			</div>
			<div class="form-group">
				<label for="title" id="pwwcheck" class="font_block">비밀번호확인</label>
				<div style="width: 100%">
					<input type="password" class="form-controll  form-control" id="pwcheck"
						name="pwcheck">
				</div>
				<div id="result_pwpw" class="result_font"></div>
			</div>
			<div class="form-group" style="margin-top: 50px;">
				<label for="title" id="nickname1" class="font_block">별명</label>
				<p class="font_block">2~15자 자유롭게 입력해주세요.</p>
				<input type="text" class="form-controll  form-control" id="nickname"
					name="nickname" value="">
				<div id="result_nickname" class="result_font"></div>
			</div>
			
		<section id="signup-form__policy" class="signup-form__policy">
			<div class="signup-form__policy__check-all">
				<label class="bold">약관동의</label>
				<div class="form-check signup-form__policy__check-all__form-check">
                    <label class="form-check-label text-heading-5 bold">
                        <input id="checkAll" class="form-check signup-form__policy__check-all__input" type="checkbox">
                        <span class="check-img"></span>
                        전체 동의
                    </label>
                </div>
				<div class="signup-form__policy__policy-list">
				<div class="checkbox signup-form__policy__policy-item">
					<label for="signup-form__policy__more-14__input">만 14세 이상입니다.</label>
					<div class="form-check signup-form__policy__more-14__form-check">
					<label class="form-check-label bold">
                            <input type="checkbox" id="checka" class="check form-check form-check signup-form__policy__item__input signup-form__policy__more-14__input" name="confirm_upper_14">
                            <span class="check-img"></span>
                            동의 <span class="text-red">(필수)</span>
                        </label>
					</div>
				</div>
				
				<div class="checkbox signup-form__policy__policy-item">
					<div class="signup-form__policy__policy-item">
                    <label for="signup-form__policy__use-policy__input">
                        <a class="bold simplified-footer__policy policy-use underline" href="./memberusepolicy">이용약관</a>
                    </label>
                    <div class="form-check signup-form__policy__use-policy__form-check">
                        <label class="form-check-label bold">
                            <input type="checkbox" id="checkb" class="check form-check signup-form__policy__item__input signup-form__policy__use-policy__input" name="confirm_use_policy">
                            <span class="check-img"></span>
                            동의 <span class="text-red">(필수)</span>
                        </label>
                    </div>
                </div>
				</div>
				<div class="checkbox signup-form__policy__policy-item">
                    <label for="signup-form__policy__privacy__input">
                        <a class="bold simplified-footer__policy policy-privacy underline" href="./memberprivacy">개인정보취급방침</a>
                    </label>
                    <div class="form-check signup-form__policy__privacy__form-check">
                        <label class="form-check-label bold">
                            <input type="checkbox" id="checkc" class="check check_font form-check signup-form__policy__item__input signup-form__policy__privacy__input" name="confirm_privacy">
                            <span class="check-img"></span>
                            동의 <span class="text-red">(필수)</span>
                        </label>
                    </div>
                </div>
				<div class="checkbox signup-form__policy__policy-item">
                    <label for="signup-form__policy__promotion__input">이벤트 등 프로모션 알림 메일 수신</label>
                    <div class="form-check signup-form__policy__promotion__form-check">
                        <label class="form-check-label bold">
                            <input type="checkbox" id="checkid" class="check check_font form-check signup-form__policy__item__input signup-form__policy__promotion__input" name="confirm_market_email">
                            <span class="check-img"></span>
                            동의 <span class="text-gray-light">(선택)</span>
                        </label>
                    </div>
                </div>
				</div>
				<button id="join" class="btn btn-lg btn-priority btn-default" type="submit" form="new_normal_user">
            회원가입하기
        </button>
        <p id="has-account" style="margin-bottom: 50px;">이미 아이디가 있으신가요?
        <a class="bold underline" href="./memberLoginlist">로그인</a></p>
				
			</div>
		</section>
		</form>
		
	</section>
</main>	
</body>
</html>