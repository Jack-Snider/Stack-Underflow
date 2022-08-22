<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Heebo:wght@100;200;300&amp;display=swap'>
<link rel="stylesheet" type="text/css" href="../css/find.css"/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DynaPuff&family=Silkscreen&family=Stick+No+Bills:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../css/BasicStructor.css"/>
	
<!DOCTYPE html>

<html>
<head>
<!-- 강명범 시작 -->
<meta charset="utf-8">
<title> Stack Underflow 아이디 찾기</title>
<script src="https://kit.fontawesome.com/ded2fba49a.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://kit.fontawesome.com/ded2fba49a.js" crossorigin="anonymous"></script>

<style>
fieldset{
   width: 60%;
   margin: 20px auto;
   padding: 20px;
   border-color: black;
   border: 1px solid black; /*중간에 있는 solid가 필수다*/
}
</style>
</head>
<body>
<div>
		<h1 class ="common"><i class="fa-brands fa-stack-exchange"></i>
		Stack Underflow 아이디 찾기</h1>
		</div>
	<div class="container">
		<form class="findIdinput" method="post" action="<%=request.getContextPath()%>/findId.do">
		<fieldset>
		 <legend>&nbsp;아이디 찾기</legend>
					<label class="labelPlace" >이름</label> <br>
					<input class="inputPlace" type="text" name="InputNameText" placeholder="이름을 입력하세요."><br>
					<label class="labelPlace">주민번호</label><br>
					<input class="inputPlace" type="text" name="InputregNoText" placeholder="ex)123456-7891234('-'포함)."><br>
					<input  type="submit" value="아이디찾기" class="findBtn">
					</fieldset>
					</form>
				</div>
</body>
<!-- 강명범 끝 --> 
</html>