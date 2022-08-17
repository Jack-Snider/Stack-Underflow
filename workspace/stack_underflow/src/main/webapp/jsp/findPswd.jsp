<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head><!-- 강명범 시작 -->
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<script>


</script>
<body>
	<h1>비밀번호 찾기</h1>
	
	<!--해당값이 아무것도 없을때 -->
	<%
	if(request.getAttribute("passVo1")==null){
		%>
	
	
		<form class="findPassQstn" method="post" action="<%=request.getContextPath()%>/findPass.do">
			<div class="form-group">
			    <label for="findpass_IDLabel">필수입력) ID를 입력하세요</label><br>
				<input type="text" class="form-control" id="find-passInputId" placeholder="Enter Your Id" name="find-passInputId" required><br><br>
				<label for="mem_qstn">방법 1) 회원가입시 입력했던 질문과 답변으로 찾기</label><br>
				
				<select class="form-control" id="find-pass_qstn" name="find-pass_qstn">
					<option value="What is Your Father Name ?">What is Your Father Name ?</option>
					<option value="What is Your Mother Name ?">What is Your Mother Name ?</option>
					<option value="What is Your Favorite Color ?">What is Your Favorite Color ?</option>
					<option value="What is Your Favorite Food ?">What is Your Favorite Food ?</option>
				</select>
			</div> 
			<div class="form-group">
				<label for="mem_ans">답변을 입력하세요</label> <br> 
				<input type="text" class="form-control" id="find-pass_ans" placeholder="Enter Answer" name="find-pass_ans" required>
			</div>
			<button type="submit" name="change-passBtn" id="change-passBtn">비밀번호 변경하기</button><br><br>
			<label for="mem_passEmail">방법 2) 이메일을 입력하여 비밀번호 변경하기</label><br>
			<input type="text" id="find=pass_input_email" placeholder="Enter your email" name="find=pass_input_email" ><br>
			<button type="submit">이메일 인증하기</button>
		</form>
		<%
		// 아이디 질문 답변이 일치하면 해당 jsp로 이동한다.
		}
	%>
		
	

</body><!-- 강명범 끝 -->
</html>