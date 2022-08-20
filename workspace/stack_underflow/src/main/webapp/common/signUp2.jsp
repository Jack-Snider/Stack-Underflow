<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Heebo:wght@100;200;300&amp;display=swap'>
<link rel="stylesheet" type="text/css" href="../css/signup2.css"/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DynaPuff&family=Silkscreen&family=Stick+No+Bills:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../css/BasicStructor.css"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>StackUnderflow - SignUp</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://kit.fontawesome.com/ded2fba49a.js" crossorigin="anonymous"></script>

<script>
	$(function(){
		$('#loginbackBtn').on('click', function(){
			location.href="<%=request.getContextPath()%>/common/login.jsp";
		});
	});
</script>

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
				.html('<div class="alert alert-success" style="margin-top : 5px;"><strong> 올바른 ID형식입니다. </strong> ID형식에 적합합니다.</div>');
				ruleChk = true;
			}else{
				$(this).css('border', '2px solid red');
				$('#idres')
				.html('<div class="alert alert-danger" style="margin-top : 5px;"><strong> 부적합한 ID형식입니다.</strong> 제발 ID 생성규칙 좀 지켜주세요</div>');
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
				.html('<div class="alert alert-success" style="margin-top : 5px;"><strong>적합한 비밀번호입니다. </strong> 비밀번호 생성 형식에 적합합니다.</div>');
				ruleChk = true;
			}else{
				$(this).css('border', '2px solid red');
				$('#passres')
				.html('<div class="alert alert-danger" style="margin-top : 5px;"><strong> 부적합한 비밀번호이군요.</strong> 제발 비밀번호 생성 형식 좀 지켜주세요.</div>');
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
				.html('<div class="alert alert-success" style="margin-top : 5px;"><strong>멋있는 닉네임이군요!</strong> 사용하셔도 좋습니다.</div>');
				ruleChk = true;
			}else{
				$(this).css('border', '2px solid red');
				$('#dnres')
				.html('<div class="alert alert-danger" style="margin-top : 5px;"><strong>부적합한 닉네임이군요</strong> 제발 닉네임 형식 좀 지켜주세요</div>');
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
							.html('<div class="alert alert-danger" style="margin-top : 5px;"><strong>중복되는 아이디입니다.</strong> 중복되지 않는 아이디를 입력해주세요</div>');
							$('#mem_id').val('');
							dupChk = false;
						}else{
							$('#idres')
							.html('<div class="alert alert-success" style="margin-top : 5px;"><strong>아이디 중복검사 통과</strong> 아이디가 중복되지 않습니다.</div>');
							dupChk = true;
						}
					}else if(res.hasOwnProperty('dnres')){
						if(res.dnres == 1){
							$('#dnres')
							.html('<div class="alert alert-danger" style="margin-top : 5px;"><strong>중복되는 닉네임입니다.</strong>다른 닉네임을 입력해주세요</div>');
							$('#mem_nknm').val('');
							dupChk = false;
						}else{
							$('#dnres')
							.html('<div class="alert alert-success" style="margin-top : 5px;"><strong>닉네임 중복검사 통과</strong> 닉네임이 중복되지 않습니다.</div>');
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
			alert("회원가입성공");
			return true;
		}else{
			alert("회원가입 실패");
			return false;
		}
	}
	
</script>
<style type="text/css">
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
<div id="header">
   <h1>
      <i class="fa-brands fa-stack-exchange" style="color : green; font-size : 2.3em;  float: left;  margin-left: 40px; margin-top: 11px;" ></i>
      <a id ="home" href = "../common/login.jsp">stack underflow</a>
      <div class="mypage-logout-btn">
      </div> 
   </h1>
</div>





<section class="card">
		<form method="post" enctype="multipart/form-data" onsubmit="return submitChk();"action="<%=request.getContextPath()%>/InsertMember.do">
		<div>
		<h1 class ="h1css"><i class="fa-brands fa-stack-exchange"></i>
		Stack Underflow - Sign Up</h1>
        <button id="loginbackBtn" type="button" name="loginbackBtn">로그인 페이지로</button>
		</div>		
			<div class="form-group">
			   <label class="inputlabel" for="mem_id">ID&nbsp;&nbsp;</label> 
			   <input type="button" id="idcheck" value="아이디 중복체크" class="btnCheck"><br>
			   <input type="text" class="inputPlace" id="mem_id" placeholder="아이디를 입력하세요" name="mem_id" required><br>
			   <p class="instructor">※ ID는 3 ~12자 사이 영어 대,소문자 및 숫자</p>
			   <div id="idres"></div>
			</div>
			
			<div class="form-group">
			    <label class="inputlabel" for="mem_pass">비밀번호</label><br>
			    <input type="password" class="inputPlace" id="mem_pass" placeholder="비밀번호를 입력하세요" name="mem_pass" required>
			   <p class="instructor">※ 비밀번호는 8 ~20자 사이 영어 대,소문자 및 숫자 특수기호 필수 포함</p>
			    <div id="passres"></div>
			</div>
			
			
			<div class="form-group">
			    <label class="inputlabel" for="mem_pass_check">비밀번호 확인</label><br> 
			    <input type="password" class="inputPlace" id="mem_pass_check" placeholder="동일한 비밀번호를 입력하세요" name="mem_pass_check" required>
			    <div id="passchkres"></div>
			</div>
			
			<div class="form-group">
			    <label class="inputlabel" for="mem_nknm">닉네임&nbsp;&nbsp;</label>
				<input type="button" id="dncheck" value="닉네임 중복확인" class="btnCheck"><br>
				<input type="text" class="inputPlace" id="mem_nknm" placeholder="닉네임을 입력하세요" name="mem_nknm" required>
				<p class="instructor">※ 닉네임은 3 ~12자 사이 영어 대,소문자 및 숫자</p>
				<div id="dnres"></div>
			</div>
			
			<div class="form-group">
			    <label class="inputlabel" for="mem_nm">이름</label> <br>
			    <input type="text" class="inputPlace" id="mem_nm" placeholder="이름을 입력하세요" name="mem_nm" required>
			</div>
			
			<div class="form-group">
		     	<label  class="inputlabel" for="mem_regno1" >주민등록번호</label><br>
				<div class="regNo-input" style="display:inline;">
				<input type="text" class="inputPlace" id="mem_regno1" name="mem_regno1"> -
				<input type="text" class="inputPlace" id="mem_regno2" name="mem_regno2">
				</div>
		    </div>
		    
			<div class="form-group">
		     	<label class="inputlabel" for="mem_email">이메일 주소</label> <br>
				<input type="email" class="inputPlace" id="mem_email" placeholder="이메일 주소를 입력하세요 (ex:12345@abcde.com)" name="mem_email" required>
			</div>
			
			<div class="form-group">
			    <label class="inputlabel" for="mem_addr1">집 주소</label> <br>
				<input type="text" class="inputPlace" id="mem_addr1" placeholder="주소를 입력하세요" name="mem_addr1" required>
			</div>
			
			<div class="form-group">
		        <label class="inputlabel" for="mem_addr2">상세 주소</label> <br>
				<input type="text" class="inputPlace" id="mem_addr2" placeholder="상세주소를 입력하세요" name="mem_addr2" required>
			</div>
			
			<div class="form-group">
			     <label class="inputlabel" for="mem_qstn">비밀번호 찾기 질문 힌트</label><br>
				 <select class="inputPlace" id="mem_qstn" name="mem_qstn">
				 <option value="What is Your Father Name ?">아버지의 성함은?</option>
				 <option value="What is Your Mother Name ?">어머니의 성함은 ?</option>
				 <option value="What is Your Favorite Color ?">좋아하는 색깔은 ?</option>
				 <option value="What is Your Favorite Food ?">좋아하는 음식은 ?</option>
				 </select>
			</div>
			
			<div class="form-group">
			     <label class="inputlabel"  for="mem_ans">비밀번호 찾기 답변 힌트</label> <br>
				 <input type="text" class="inputPlace" id="mem_ans" placeholder="답변을 입력하세요" name="mem_ans" required>
			</div>
			
			<div class="form-group">
			     <label  class="inputlabel" for="mem_ans">프로필 사진</label> <br>
      		     <input type="file" id="fileInput" name="pfImg">
			</div>
			
			<button type="submit" id="submitBtn">회원가입하기</button>

		</form>
		</section>


</body>
</html>