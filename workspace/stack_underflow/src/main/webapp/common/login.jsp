<%@page import="ufo.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>
<!DOCTYPE html>
<html>
<head>
<!-- 명범   시작 -->
<meta charset="utf-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	
<!-- 아이디 체크값을 기억하는 기능  -->
<%
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
<!-- 회원가입 버튼을 눌렀을때 이동하는 기능 -->
<script>
	$(function(){
		$('#sgnupbtn').on('click', function(){
			location.href="<%=request.getContextPath()%>/loginSignUp.do";
		});
	});
</script>
</head>

<body>

<!-- id 값이 null값일 때 처리하는기능 -->

<script>
//로그인이 널값이 경우 처리하는 기능
function validateForm(form) {
	if (!form.idInput.value) {
		alert("아이디란이 비었습니다.");
		return false;
	}
	if (!form.passInput.value) {
		alert("패스워드란이 비었습니다.");
		return false;
	}
}
</script>
<%
if (session.getAttribute("Mem_vo") == null) {
%>

	<form onsubmit="return validateForm(this)" method="post"
		name="loginform" action="<%=request.getContextPath()%>/login.do;">
		ID : <input type="text" name="idInput" value="<%=identify%>"placeholder="ID 입력하세요."><br> 
		PASSWORD : <input type="password" name="passInput" placeholder="PassWord 입력하세요."><br>
		<input type="checkbox" name="chkid" <%=chk%> value="check"> id 기억하기
		<p>
			<a href="../jsp/findId.jsp" onclick="window.open(this.href, '_blank', 'width=600, height=600'); return false;">아이디 찾기 </a>|
			<a href="../jsp/findPswd.jsp" onclick="window.open(this.href, '_blank', 'width=600, height=600'); return false;">비밀번호 찾기 </a>
		</p>

		<input type="submit" value="로그인" id="lgnbtn"> 
		<input type="button" value="회원가입" id="sgnupbtn">

	</form>
<%
}else{
%>
<script>alert("<%=session.getAttribute("Mem_name")%>님 환영합니다.");
location.href="../basic_frame/frame.jsp";
</script>
<%
}
%>

	<!-- 명범   끝 -->
</body>
</html>