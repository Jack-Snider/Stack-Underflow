<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<h1>아이디 찾기</h1>
	<div class="container">
		<form class="findIdinput" method="post" action="<%=request.getContextPath()%>/findId.do">
			<table>
				<tr>
					<td>이름 :</td>
					<td><input type="text" name="InputNameText"
						placeholder="이름을 입력하세요."></td>
				</tr>
				<tr>
					<td>주민번호:</td>
					<td><input type="text" name="InputregNoText"
						placeholder="ex)123456-7891234."></td>
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