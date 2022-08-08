<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script>
</script>
<style>
	.container{
		margin : 100px auto;
	}
</style>
</head>
<body>
	<!-- 성공! ㅜㅜ --> @
	<!-- 회원가입 폼 작성 -->
	<div class="container">
		<form class="needs-validation" method="post" action="<%=request.getContextPath() %>/insertMember.do">
			<div class="form-group">
				<label for="id">아이디 *</label> 
				<input type="button" id="checkid" value="중복검사" class="btn btn-dark btn-sm">
				<span id="idspan"></span>
				<input type="text" class="form-control" id="id" placeholder="아이디를 입력하세요" name="id" required>
				<div class="valid-feedback">Valid.</div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			
			<div class="form-group">
				<label for="pw">비밀번호</label> 
				<input type="password" class="form-control" id="pw" placeholder="비밀번호를 입력하세요" name="pw" required>
				<div class="valid-feedback">Valid.</div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			
			<div class="form-group">
				<label for="pw2">비밀번호 재확인</label> 
				<input type="password" class="form-control" id="pw2" placeholder="비밀번호를 재입력하세요" name="pw2" required>
				<div class="valid-feedback">Valid.</div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			
			<div class="form-group">
				<label for="name">이름</label> <input type="text" class="form-control" id="name" placeholder="이름을 입력하세요" name="name" required>
				<div class="valid-feedback">Valid.</div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			
			<div class="form-group">
				<label for="regno">주민등록번호 *</label> 
				<input type="text" class="form-control" id="regno" placeholder="주민등록번호를 입력하세요" name="regno" required>
				<div class="valid-feedback">Valid.</div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			
			<div class="form-group">
				<label for="nknm">닉네임 *</label> 
				<input type="text" class="form-control" id="nknm" placeholder="닉네임을 입력하세요" name="nknm" required>
				<div class="valid-feedback">Valid.</div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			
			<div class="form-group">
				<label for="email">이메일 *</label> 
				<input type="text" class="form-control" id="email" placeholder="이메일을 입력하세요" name="email" required>
				<div class="valid-feedback">Valid.</div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			
			<div class="form-group">
				<label for="addr1">주소</label> 
				<input type="text" class="form-control" id="addr1" placeholder="주소를 입력하세요" name="addr1" required>
			</div>
			
			<div class="form-group">
				<label for="addr2">상세주소</label> 
				<input type="text" class="form-control" id="addr2" placeholder="이메일을 입력하세요" name="addr2" required>
			</div>
			
			<div class="form-group">
				<label for="qstn">비밀번호 찾기 질문</label> 
				<input type="text" class="form-control" id="qstn" placeholder="비밀번호 찾기 질문을 입력하세요" name="qstn" required>
				<div class="valid-feedback">Valid.</div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			
			<div class="form-group">
				<label for="ans">비밀번호 찾기 답변</label> 
				<input type="text" class="form-control" id="ans" placeholder="비밀번호 찾기 답변을 입력하세요" name="ans" required>
				<div class="valid-feedback">Valid.</div>
				<div class="invalid-feedback">Please fill out this field.</div>
			</div>
			
			
			<div class = "form-group">
				<label for="picture">프로필 사진</label>
				<input type = "file" id = "picture" name = "picture">
			</div>
			
			<button type="submit" class="btn btn-primary">Submit</button>
			<span id="joinsub"></span>
		</form>
	</div>
</body>
</html>