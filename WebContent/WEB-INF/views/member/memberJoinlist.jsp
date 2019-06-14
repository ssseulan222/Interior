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
		margin-bottom: 10px;
		margin-top: 10px;
	}
	
	.check_font {
		margin-bottom: 10px;
	}
	
	
</style>
</head>
<body>
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
				<a class="form-radio-label" href="#"><input type="radio"> <span class="radio-img"></span>시공전문가
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
					class="font_block form-control">이메일</label>
				<div style="width: 100%">
					<input type="text" class="form-control_first" id="email_first"
						name="email_first" size="10"> <span>@</span> <input
						type="text" class="form-control_last" id="email_last"
						name="email_last">
				</div>
				<div id="result" class="result_font"></div>
			</div>
			<br>
			<div class="form-group">
				<label for="title" id="pww" class="font_block form-control">비밀번호</label>
				<p id="font_pw" class="font_block">8자이상 영문 대 소문자, 숫자, 특수문자를
					사용하세요.</p>
				<div style="width: 100%">
					<input type="password" class="form-controll" id="pw" name="pw">
				</div>
				<div id="result_pw" class="result_font"></div>
			</div>
			<div class="form-group">
				<label for="title" id="pwwcheck" class="font_block form-control">비밀번호확인</label>
				<div style="width: 100%">
					<input type="password" class="form-controll" id="pwcheck"
						name="pwcheck">
				</div>
				<div id="result_pwpw" class="result_font"></div>
			</div>
			<div class="form-group" style="margin-top: 50px;">
				<label for="title" id="nickname1" class="font_block form-control">별명</label>
				<p class="font_block">2~15자 자유롭게 입력해주세요.</p>
				<input type="text" class="form-controll" id="nickname"
					name="nickname" value="">
				<div id="result_nickname" class="result_font"></div>
			</div>

			<div class="container">
				<h2>약관동의</h2>
				<div class="checkbox font_block">
					<label><input type="checkbox" id="checkAll"> 전체동의 </label>
				</div>
				<div class="checkbox">
					<label><input type="checkbox" class="check check_font"
						id="checka"> 동의A(필수) </label>
				</div>
				<div class="checkbox">
					<label><input type="checkbox" class="check check_font"
						id="checkb"> 동의B(필수) </label>
				</div>
				<div class="checkbox">
					<label><input type="checkbox" class="check check_font"
						id="checkc"> 동의C(필수) </label>
				</div>
				<div class="checkbox">
					<label><input type="checkbox" class="check check_font"
						id="checkid"> 동의D(선택)</label>
				</div>
				<input type="button" class="btn btn-default" id="join" value="Join">
			</div>
		</form>
		<p id="has-account">
			이미 아이디가 있으신가요? <a class="underline" href="./memberLoginlist">로그인</a>
		</p>
	</section>
</body>
</html>