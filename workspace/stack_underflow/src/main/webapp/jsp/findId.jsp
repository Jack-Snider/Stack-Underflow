<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 강명범 시작 -->
<meta charset="utf-8">
<title> Stack-Underflow 아이디 찾기</title>
</head>
<body>
<h1>아이디 찾기</h1>
	<div class="container">
		<form class="findIdinput" method="post" action="<%=request.getContextPath()%>/findId.do">
					이름 : <input type="text" name="InputNameText" placeholder="이름을 입력하세요."><br>
					주민번호: <input type="text" name="InputregNoText" placeholder="ex)123456-7891234('-'포함)."><br>
					<input type="submit"value="아이디찾기" id="lgnbtn"></form>
				</div>
</body>
<!-- 강명범 끝 --> 
</html>