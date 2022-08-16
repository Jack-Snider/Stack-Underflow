<%@page import="ufo.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<%
MemberVO memVo = (MemberVO) session.getAttribute("memVoServlet");
session.setAttribute("memVoAction", memVo);
response.sendRedirect(request.getContextPath()+"/basic_frame/frame.jsp");
%>
<body>

</body>

</html>