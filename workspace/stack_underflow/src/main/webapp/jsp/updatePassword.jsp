<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 강명범 시작 -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<h1>비밀번호 변경하기</h1>

		<form class="changePassForm" method="post" action="<%=request.getContextPath()%>/updatePassword.do">
			<label for="change_pass">변경하실 패스워드</label><br>
			<input type="text" class="form-control" id="change-passInput" name="change-passInput" required><br><br>
			
			<label for="change_pass">변경하실 패스워드 확인</label><br>
			<input type="text" class="form-control" id="change-passInput-validate" name="change-passInput-validate" required><br><br>
			<button type="submit" name="changePassBtn" id="changePassBtn">변경하기</button>
	</form>
</body>
<!-- 강명범 끝 -->
</html>