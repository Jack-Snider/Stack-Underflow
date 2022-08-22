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
<script src="https://kit.fontawesome.com/ded2fba49a.js" crossorigin="anonymous"></script>
<title>비밀번호 찾기</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>


</head>
<body>

	<h1 class ="common"><i class="fa-brands fa-stack-exchange"></i>
		Stack Underflow 비밀번호 찾기</h1>
	<!--해당값이 아무것도 없을때 -->

	<div class="findpasCommon">
	<form class="findPassQstn" method="post" action="<%=request.getContextPath()%>/findPassQstn.do">
		<div class="form-group">
		<p>방법 1)</p>
			<label  class="labelPlace"> - 필수입력) ID를 입력하세요</label><br><br>
			<input  class="inputPlace" type="text" class="form-control" id="find-passInputId" placeholder="Enter Your Id" name="find-passInputId" required><br><br> 
			<label  class="labelPlace" for="mem_qstn"> - 회원가입시 입력했던 질문과 답변으로 찾기</label><br><br>
			<select class="form-control" id="find-pass_qstn" name="find-pass_qstn">
			<option value="What is Your Father Name ?">What is Your Father Name ?</option>
			<option value="What is Your Mother Name ?">What is Your Mother Name ?</option>
			<option value="What is Your Favorite Color ?">What is Your Favorite Color ?</option>
			<option value="What is Your Favorite Food ?">What is Your Favorite Food ?</option>
			</select>
		</div>
		<div class="form-group">
			<label  class="labelPlace" for="mem_ans">답변을 입력하세요</label> <br> <br>
			<input  class="inputPlace" type="text" class="form-control" id="find-pass_ans" placeholder="Enter Answer" name="find-pass_ans">
			<button class="findBtn" type="submit" name="change-passBtn" id="change-passBtn">비밀번호 변경하기</button>
			<br><br>
		</div>
	</form>
	<form class="findPassEmail" method="post" action="<%=request.getContextPath()%>/findPassMail.do">
	
	<p>방법 2)</p>
		<label    class="labelPlace" class="labelPlace" for="findpass_EmailLabel"> - 필수입력) ID를 입력하세요</label><br><br> 
		<input   class="inputPlace" type="text" class="form-control" id="find-passInputId" placeholder="Enter Your Id" name="find-passInputId" required><br><br> 
	    <label   class="labelPlace"  class="labelPlace" for="mem_passEmail"> - 이메일을 입력하여 비밀번호 변경하기</label><br><br>
		<input   class="inputPlace" type="text" id="findpass_input_email" placeholder="Enter your email" name="findpass_input_email">
		<button class="findBtn" id="submitbtn" type="submit">인증메일 보내기</button><br>

	</form>
	</div>
	




</body>
<!-- 강명범 끝 -->
</html>