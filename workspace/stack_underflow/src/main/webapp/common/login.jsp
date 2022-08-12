<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
$(function(){
$('#sgnupbtn').on('click', function(){
	location.href="<%=request.getContextPath()%>/loginSignUp.do";
		});
	});
</script>
</head>

<%
// 이 JSP영역에서 쿠키는 서블릿에서와 같은 방법으로 사용하면 된다.

String identify = ""; // 쿠키값이 저장될 변수
String chk = ""; // 체크박스 체크용 변수

Cookie[] cookies = request.getCookies(); // 쿠키정보 가져오기

if (cookies != null) {
	for (Cookie cookie : cookies) {
		String name = cookie.getName();
		if ("USERID".equals(name)) { // 내가 원하는 쿠키가 있으면...
	identify = cookie.getValue();
	chk = "checked";
		}
	}
}
%>
<body>
	<div class="container">
		<form class="needs-validation" method="post" action="<%=request.getContextPath()%>/login.do">
			<table>
				<tr>
					<td>ID :</td>
					<td><input type="text" name="id" value="<%=identify%>" placeholder="ID 입력하세요."></td>
				</tr>
				<tr>
					<td>PASS :</td>
					<td><input type="password" name="pass"
						placeholder="PassWord 입력하세요."></td>
				</tr>
				<tr>
					<td colspan="2"><input type="checkbox" name="chkid" <%=chk%>
						value="check">id 기억하기</td>
				</tr>
				<tr>
					<td style="text-align: center;"><input type="submit"
						value="로그인" id="lgnbtn"></td>
					<td style="text-align: center;"><input type="button"
						value="회원가입" id="sgnupbtn"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>