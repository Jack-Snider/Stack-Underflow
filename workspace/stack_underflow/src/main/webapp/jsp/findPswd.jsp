<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<link rel="stylesheet" type="text/css" href="../css/find.css"/>
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
</head>
<body>

	<h1 class ="h1css"><i class="fa-brands fa-stack-exchange">Stack Underflow 비밀번호찾기</i></h1>
	<!--해당값이 아무것도 없을때 -->
	<!--   <%
	if (request.getAttribute("passVo1") == null) {
	%>
	-->

	<form class="findPassQstn" method="post"
		action="<%=request.getContextPath()%>/findPassQstn.do">
		<div class="form-group">
		<p>방법 1)</p>
			<label  class="labelPlace" for="findpass_IDLabel">필수입력) ID를 입력하세요</label><br> 
			<input  class="inputPlace" type="text" class="form-control" id="find-passInputId" placeholder="Enter Your Id" name="find-passInputId" required><br><br> 
			<label  class="labelPlace" for="mem_qstn">회원가입시 입력했던 질문과 답변으로 찾기</label><br>
			<select class="form-control" id="find-pass_qstn" name="find-pass_qstn">
			<option value="What is Your Father Name ?">What is Your Father Name ?</option>
			<option value="What is Your Mother Name ?">What is Your Mother Name ?</option>
			<option value="What is Your Favorite Color ?">What is Your Favorite Color ?</option>
			<option value="What is Your Favorite Food ?">What is Your Favorite Food ?</option>
			</select>
		</div>
		<div class="form-group">
			<label  class="labelPlace" for="mem_ans">답변을 입력하세요</label> <br> 
			<input  class="inputPlace" type="text" class="form-control" id="find-pass_ans" placeholder="Enter Answer" name="find-pass_ans">
			<button class="findpassbtn" type="submit" name="change-passBtn" id="change-passBtn">비밀번호 변경하기</button>
			<br><br>
		</div>
	</form>
	<form class="findPassEmail" method="post" action="<%=request.getContextPath()%>/findPassMail.do">
	
	<p>방법 2)</p>
		<label    class="labelPlace" class="labelPlace" for="findpass_EmailLabel">필수입력) ID를 입력하세요</label><br> 
		<input   class="inputPlace" type="text" class="form-control" id="find-passInputId" placeholder="Enter Your Id" name="find-passInputId" required><br><br> 
	    <label   class="labelPlace"  class="labelPlace" for="mem_passEmail">이메일을 입력하여 비밀번호 변경하기</label><br>
		<input   class="inputPlace" type="text" id="findpass_input_email" placeholder="Enter your email" name="findpass_input_email">
		<button class="findpassbtn" id="submitbtn" type="submit">인증메일 보내기</button><br>

	</form>
	
	
	<%
	}
	%>
	<%
	// 아이디 이메일이 입력됐을때 나타나는 기능
		if(random != null){
	%>	
		<label>인증번호 확인</label>
		<input type="text" placeholder="인증번호"  id="validateInput">
		<button class="findpassbtn" id="validateBtn" value="인증하기">버튼</button>
		
	<%	
		}
	
	%>


</body>
<!-- 강명범 끝 -->
</html>