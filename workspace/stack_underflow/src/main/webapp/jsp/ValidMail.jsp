<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/ded2fba49a.js" crossorigin="anonymous"></script>
<title>비밀번호 찾기</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<!-- 서블릿에서 받아온 랜덤생성값 -->
<%String random = (String)request.getAttribute("randomstr"); %>
<script>
$(function(){
	$('#validateBtn').on('click', function(){
		//인증번호 입력값이 받아온 랜덤생성값과 같으면 알러트와 함께 비밀번호 수정 링크로 넘어간다
		if(document.getElementById("validateInput").value=='<%=random %>'){
			alert("인증에 성공했습니다.");
			location.href="<%=request.getContextPath()%>/jsp/updatePassword.jsp";
		}else{
			alert("인증에 실패했습니다.");
		}
	});
});
</script>
<style type="text/css">
.inputPlace {
	height: 35px;
	width: 250px;
	margin-bottom: 3%;
	border: 1px solid;
	border-radius: 7px;
	border-color: lightgray;
}

.inputPlace:hover {
	border-color: lightgray;
	background-color: #E3F6CE;
	border-color: #E3F6CE;
}
.findBtn {
	height: 35px;
	font-size: 13px;
	background-color: #7d4687;
	border-color: white;
	color: white;
	border: 2px outset #9572a5;
	border-radius: 7px;
}

.findBtn:hover {
	color: black;
	background-color: #E3F6CE;
	border-color: #E3F6CE;
}
.common {
	margin-top: 5%;
	font-family: 'Stick No Bills', sans-serif;
	font-size: 2rem;
	text-align: center;
	background: linear-gradient(45deg, #621b70, #c58ad1);
	-webkit-background-clip: text;
	background-clip: text;
	color: transparent;
	font-weight: bold;
}
.findpasCommon {
	margin-left: 5%;
	margin-top: 5%;
}


</style>
</head>
<body>
<h1 class ="common"><i class="fa-brands fa-stack-exchange"></i>
		Stack Underflow 비밀번호 찾기</h1>
	<%
	// 아이디 이메일이 입력됐을때 나타나는 기능
		if(random != null){
	%>	
	<div class="findpasCommon">
		<label class="labelPlace">인증번호 확인</label>
		<input class="inputPlace" type="text" placeholder="인증번호"  id="validateInput">
		<button class="findBtn" id="validateBtn" value="인증하기">인증하기</button>
		<button class="findBtn" id="backBtn" value="인증하기" onclick='history.back()'>뒤로가기</button>
		</div>
		
	<%	
		}
	
	%>
</body>
</html>