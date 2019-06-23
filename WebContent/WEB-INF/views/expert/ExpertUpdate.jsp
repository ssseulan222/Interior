<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="main">
		<div class="update">
			<div id="head">
			<span>회원정보 수정</span><span><a>탈퇴하기</a></span>
			</div>
			<div id="table">
				<table>
					<tr>
						<td>이메일</td>
						<td>
							<input type="text">@<input type="text">
							<br>
							<p>이메일을 변경하시려면 운영자에게 이메일을 보내주세요.</p>
						</td>
					</tr>
					<tr>
						<td>상호</td><td><input type="text"></td>
					</tr>
					<tr>
						<td>홈페이지</td><td><input type="text">@<input type="text"></td>
					</tr>
					<tr>
						<td>프로필 이미지</td><td><div id="file"><img alt="프로필" src="" ></div></td>
					</tr>
					<tr>
						<td>한줄소개</td><td><input type="text"></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>