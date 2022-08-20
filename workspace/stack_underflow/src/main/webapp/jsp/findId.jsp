<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Heebo:wght@100;200;300&amp;display=swap'>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DynaPuff&family=Silkscreen&family=Stick+No+Bills:wght@700&display=swap" rel="stylesheet">
	
<!DOCTYPE html>

<html>
<head>
<!-- 강명범 시작 -->
<meta charset="utf-8">
<title> Stack-Underflow 아이디 찾기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://kit.fontawesome.com/ded2fba49a.js" crossorigin="anonymous"></script>
<style type="text/css">
h1{
margin-bottom: 3%;
}
.findIdinput{
margin: auto;
display: block;
}
.labelPlace{
margin-bottom: 3%;
}
.inputPlace{
height:25px;
width:250px;
margin-bottom: 3%;
border: 1px solid;
	border-radius: 7px;
}
#findIdbtn{
height: 40px;
	color: white;
	background-color:black; 
	border: 1px solid;
	border-radius: 7px;
	font-size: 15px;
}
#findIdbtn:hover{
height: 40px;
	color: black;
	background-color:white; 
}
.h1css {
	font-family: 'DynaPuff', cursive;
	font-family: 'Silkscreen', cursive;
	font-family: 'Stick No Bills', sans-serif;
	font-size: 3rem;
	font-weight: bolder;
	color: black;
	text-align: center;
}
</style>
</head>
<body>
<h1 class ="h1css"><i class="fa-brands fa-stack-exchange">StackUnderflow 아이디찾기</i></h1>
	<div class="container">
		<form class="findIdinput" method="post" action="<%=request.getContextPath()%>/findId.do">
					<label class="labelPlace" >이름</label> <br>
					<input class="inputPlace" type="text" name="InputNameText" placeholder="이름을 입력하세요."><br>
					<label class="labelPlace">주민번호</label><br>
					<input class="inputPlace" type="text" name="InputregNoText" placeholder="ex)123456-7891234('-'포함)."><br>
					<input  type="submit"value="아이디찾기" id="findIdbtn"></form>
				</div>
</body>
<!-- 강명범 끝 --> 
</html>