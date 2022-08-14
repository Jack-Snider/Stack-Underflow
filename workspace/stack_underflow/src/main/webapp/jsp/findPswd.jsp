<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<h1>비밀번호 찾기</h1>
	<div class="container">
		<form class="findIdinput" method="post" action="<%=request.getContextPath()%>/findPass.do">
			<table>
				<tr>
					<td>이름 :</td>
					<td><input type="text" name="InputNameText"
						placeholder="이름을 입력하세요."></td>
				</tr>
				<tr>
					<td>이메일:</td>
					<td><input type="text" name="InputEmailText"
						placeholder="이메일을 입력하세요."></td>
				</tr>
				<tr>
					<td style="text-align: center;"><input type="submit"
						value="아이디찾기" id="lgnbtn"></td>
						</tr>
				</table>
				</form>
				</div>
				
</body>
</html>