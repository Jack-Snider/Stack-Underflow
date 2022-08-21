<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>StackUnderflow - SignUp</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="../css/signup.css"/>
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script>
	
	let passChk = false;
	let ruleChk = false;
	let dupChk = false;
	
	$(function(){
		
		// 비밀번호 재확인 검사
		$('#mem_pass_check').on('keyup', function(){
			let mem_pass = $('#mem_pass').val();
			let mem_pass_check = $(this).val();
			if(mem_pass == mem_pass_check){
				$(this).css('border', '2px solid blue');
				$('#passchkres')
				.html('<div class="alert alert-success" style="margin-top : 5px;"><strong>비밀번호 검사 성공!</strong> 같은 비밀번호 입니다</div>');
				passChk = true;
			}else{
				$(this).css('border', '2px solid red');
				$('#passchkres')
				.html('<div class="alert alert-danger" style="margin-top : 5px;"><strong>비밀번호 검사 실패</strong> 같은 비밀번호가 아닙니다</div>');
				passChk = false;
			}	
		});
		
		// 유효성 검사
		// 아이디 유효성
		$('#mem_id').on('keyup', function(){
			let idValue = $(this).val().trim();
			let idReg = /^[A-Za-z][A-Za-z0-9]{3,11}$/;
			if(idReg.test(idValue)){
				$(this).css('border', '2px solid blue');
				$('#idres')
				.html('<div class="alert alert-success" style="margin-top : 5px;"><strong>Appropriate ID</strong> This is Keep the ID Rules</div>');
				ruleChk = true;
			}else{
				$(this).css('border', '2px solid red');
				$('#idres')
				.html('<div class="alert alert-danger" style="margin-top : 5px;"><strong>Inappropriate ID</strong> Please `Keep the ID Rules</div>');
				ruleChk = false;
			}
		});
		
		// 비밀번호 유효성
		$('#mem_pass').on('keyup', function(){
			let passValue = $(this).val().trim();
			let passReg = /^.*(?=^.{8,20}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/; 
			if(passReg.test(passValue)){
				$(this).css('border', '2px solid blue');
				$('#passres')
				.html('<div class="alert alert-success" style="margin-top : 5px;"><strong>Appropriate Password</strong> This is Keep the Password Rules</div>');
				ruleChk = true;
			}else{
				$(this).css('border', '2px solid red');
				$('#passres')
				.html('<div class="alert alert-danger" style="margin-top : 5px;"><strong>Inappropriate Password</strong> Please Keep the Password Rules</div>');
				ruleChk = false;
			}
		});
		
		// 닉네임 유효성
		$('#mem_nknm').on('keyup', function(){
			let nknmValue = $(this).val().trim();
			let nknmReg = /^[A-Za-z][A-Za-z0-9]{3,7}$/; 
			if(nknmReg.test(nknmValue)){
				$(this).css('border', '2px solid blue');
				$('#dnres')
				.html('<div class="alert alert-success" style="margin-top : 5px;"><strong>Appropriate Display Name</strong> This is Keep the Display Name Rules</div>');
				ruleChk = true;
			}else{
				$(this).css('border', '2px solid red');
				$('#dnres')
				.html('<div class="alert alert-danger" style="margin-top : 5px;"><strong>Inappropriate Display Name</strong> Please Keep the Display Name Rules</div>');
				ruleChk = false;
			}
		});
		
		// 중복 검사
		$('#idcheck, #dncheck').on('click', function(){
			$(this).empty();
			let id = $(this).attr('id');
			let value = "";
			if(id == 'idcheck'){
				value = $('#mem_id').val().trim();
				if(value.length<1) alert('아이디를 입력해주세요');
			}else {
				value = $('#mem_nknm').val().trim();
				if(value.length<1) alert('닉네임을 입력해주세요');
			}
			$.ajax({
				url : '/stack_underflow/DuplicationCheck.do',
				data : {[id] : value},
				type : 'post',
				success : function(res){
					if(res.hasOwnProperty('idres')){
						if(res.idres == 1){
							$('#idres')
							.html('<div class="alert alert-danger" style="margin-top : 5px;"><strong>Duplicated</strong> Please Enter the No-Duplicated ID</div>');
							$('#mem_id').val('');
							dupChk = false;
						}else{
							$('#idres')
							.html('<div class="alert alert-success" style="margin-top : 5px;"><strong>Valid</strong> This is No-Duplicated ID</div>');
							dupChk = true;
						}
					}else if(res.hasOwnProperty('dnres')){
						if(res.dnres == 1){
							$('#dnres')
							.html('<div class="alert alert-danger" style="margin-top : 5px;"><strong>Duplicated</strong> Please Enter the No-Duplicated Display Name</div>');
							$('#mem_nknm').val('');
							dupChk = false;
						}else{
							$('#dnres')
							.html('<div class="alert alert-success" style="margin-top : 5px;"><strong>Valid</strong> This is No-Duplicated Display Name</div>');
							dupChk = true;
						}
					}
				},
				error : function(xhr){
					alert(xhr.status);
				},
				dataType : 'json'
			});
			
		});
		
	});
	
	// submit - "자바스크립트 선언은 jQuery 안에서 사용할 수 없다."
	function submitChk(){
		if(passChk && ruleChk && dupChk){
			alert("Sign Up Success");
			return true;
		}else{
			alert("Sign Up Fail");
			return false;
		}
	}
	
</script>
<style>
	.container{
		padding : 50px;
		width : 1000px;
		border : 1px solid;
		margin : 100px auto;
	}
	
	label{
		font-weight : bold;
	}

</style>
</head>
<body>

	<div class="container">
		<form method="post" enctype="multipart/form-data" onsubmit="return submitChk();" action="<%=request.getContextPath() %>/InsertMember.do">
		
			<div class="form-group">
				<label for="mem_id">ID&nbsp;&nbsp;</label> 
				<input type="button" id="idcheck" value="아이디 중복체크" class="btn btn-dark btn-sm">
				<input type="text" class="form-control" id="mem_id" placeholder="아이디를 입력하세요" name="mem_id" required>
				<div id="idres"></div>
			</div>
			
			<div class="form-group">
				<label for="mem_pass">비밀번호</label> 
				<input type="password" class="form-control" id="mem_pass" placeholder="비밀번호를 입력하세요" name="mem_pass" required>
				<div id="passres"></div>
			</div>
			
			<div class="form-group">
				<label for="mem_pass_check">비밀번호 확인</label> 
				<input type="password" class="form-control" id="mem_pass_check" placeholder="동일한 비밀번호를 입력하세요" name="mem_pass_check" required>
				<div id="passchkres"></div>
			</div>
			
			<div class="form-group">
				<label for="mem_nknm">닉네임&nbsp;&nbsp;</label> 
				<input type="button" id="dncheck" value="닉네임 중복확인" class="btn btn-dark btn-sm">
				<input type="text" class="form-control" id="mem_nknm" placeholder="닉네임을 입력하세요" name="mem_nknm" required>
				<div id="dnres"></div>
			</div>
			
			<div class="form-group">
				<label for="mem_nm">이름</label> 
				<input type="text" class="form-control" id="mem_nm" placeholder="이름을 입력하세요" name="mem_nm" required>
			</div>
			
			<div class="form-group">
				<label for="mem_regno1">주민등록번호</label> 
				   <div class="form-row">
				     <div class="col" style="display:inline;">
				       <input type="text" class="form-reg-control" id="mem_regno1" name="mem_regno1"> -
				       <input type="text" class="form-reg-control" id="mem_regno2" name="mem_regno2">
				     </div>
				   </div>
			</div>
			
			<div class="form-group">
				<label for="mem_email">이메일 주소</label> 
				<input type="email" class="form-control" id="mem_email" placeholder="이메일 주소를 입력하세요 (ex:12345@abcde.com)" name="mem_email" required>
			</div>
			
			<div class="form-group">
				<label for="mem_addr1">집 주소</label> 
				<input type="text" class="form-control" id="mem_addr1" placeholder="주소를 입력하세요" name="mem_addr1" required>
			</div>
			
			<div class="form-group">
				<label for="mem_addr2">상세 주소</label> 
				<input type="text" class="form-control" id="mem_addr2" placeholder="상세주소를 입력하세요" name="mem_addr2" required>
			</div>
			
			<div class="form-group">
  				<label for="mem_qstn">비밀번호 찾기 질문 힌트</label>
				  <select class="form-control" id="mem_qstn" name="mem_qstn">
				    <option value="What is Your Father Name ?">What is Your Father Name ?</option>
				    <option value="What is Your Mother Name ?">What is Your Mother Name ?</option>
				    <option value="What is Your Favorite Color ?">What is Your Favorite Color ?</option>
				    <option value="What is Your Favorite Food ?">What is Your Favorite Food ?</option>
				  </select>
			</div>

			<div class="form-group">
				<label for="mem_ans">비밀번호 찾기 답변 힌트</label> 
				<input type="text" class="form-control" id="mem_ans" placeholder="답변을 입력하세요" name="mem_ans" required>
			</div>
			
			<div class="form-group">
				<label for="mem_ans">프로필 사진</label> 
      			<input type="file" class="form-control-file border" name="pfImg">
    		</div>
			
			<button type="submit" class="btn btn-primary">회원가입하기</button>
			<span id="joinsub"></span>
		
		</form>
	</div>
</body>
</html>