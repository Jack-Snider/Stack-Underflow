<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>StackUnderflow - SignUp</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Heebo:wght@100;200;300&amp;display=swap'>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=DynaPuff&family=Silkscreen&family=Stick+No+Bills:wght@700&display=swap">
<link rel="stylesheet" type="text/css" href="../css/signup2.css"/>
<link rel="stylesheet" type="text/css" href="../css/BasicStructor.css"/>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://kit.fontawesome.com/ded2fba49a.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	$(function(){
		$('#loginbackBtn').on('click', function(){
			location.href="<%=request.getContextPath()%>/common/login.jsp";
		});
	});
</script>
<!-- 호겸 시작 -->
<script>
	
	let passChk = false;
	let ruleChk = false;
	let dupChk = false;
	
	$(function(){
		// 주소 검색
		$('#postcodesearch').on('click', function(){
			new daum.Postcode({
				oncomplete : function(data){
					$('#mem_addr1').val(data.address);
					$('#mem_postcode').val(data.zonecode);
				}
			}).open();
		});
		
		// 비밀번호 재확인 검사
		$('#mem_pass_check').on('keyup', function(){
			let mem_pass = $('#mem_pass').val();
			let mem_pass_check = $(this).val();
			if(mem_pass == mem_pass_check){
				$(this).css('border', '2px solid blue');
				$('#passchkres')
				.html('<div class="alert alert-success" style="margin-top : 5px;"><strong> 비밀번호 재확인에 성공했습니다. </strong></div>');
				passChk = true;
			}else{
				$(this).css('border', '2px solid red');
				$('#passchkres')
				.html('<div class="alert alert-danger" style="margin-top : 5px;"><strong> 비밀번호 재확인에 실패했습니다. </strong></div>');
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
				.html('<div class="alert alert-success" style="margin-top : 5px;"><strong> 적합한 ID 형식입니다. </strong></div>');
				ruleChk = true;
			}else{
				$(this).css('border', '2px solid red');
				$('#idres')
				.html('<div class="alert alert-danger" style="margin-top : 5px;"><strong> 부적합한 ID 형식입니다. </strong></div>');
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
				.html('<div class="alert alert-success" style="margin-top : 5px;"><strong> 적합한 비밀번호 형식입니다. </strong></div>');
				ruleChk = true;
			}else{
				$(this).css('border', '2px solid red');
				$('#passres')
				.html('<div class="alert alert-danger" style="margin-top : 5px;"><strong> 부적합한 비밀번호 형식입니다. </strong></div>');
				ruleChk = false;
			}
		});
		
		// 닉네임 유효성
		$('#mem_nknm').on('keyup', function(){
			let nknmValue = $(this).val().trim();
			let nknmReg = /^[A-Za-z가-힣][A-Za-z가-힣0-9]{3,7}$/; 
			if(nknmReg.test(nknmValue)){
				$(this).css('border', '2px solid blue');
				$('#dnres')
				.html('<div class="alert alert-success" style="margin-top : 5px;"><strong> 적합한 닉네임 형식입니다. </strong></div>');
				ruleChk = true;
			}else{
				$(this).css('border', '2px solid red');
				$('#dnres')
				.html('<div class="alert alert-danger" style="margin-top : 5px;"><strong> 부적합한 닉네임 형식입니다. </strong></div>');
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
							.html('<div class="alert alert-danger" style="margin-top : 5px;"><strong>이미 존재하는 아이디입니다.</strong></div>');
							$('#mem_id').val('');
							dupChk = false;
						}else{
							$('#idres')
							.html('<div class="alert alert-success" style="margin-top : 5px;"><strong>사용할 수 있는 아이디입니다.</strong></div>');
							dupChk = true;
						}
					}else if(res.hasOwnProperty('dnres')){
						if(res.dnres == 1){
							$('#dnres')
							.html('<div class="alert alert-danger" style="margin-top : 5px;"><strong>이미 존재하는 닉네임입니다.</strong></div>');
							$('#mem_nknm').val('');
							dupChk = false;
						}else{
							$('#dnres')
							.html('<div class="alert alert-success" style="margin-top : 5px;"><strong>사용할 수 있는 닉네임입니다.</strong></div>');
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
			return true;
		}else{
			alert("회원가입에 실패했습니다. 중복 검사와 올바른 형식을 지켜주세요.");
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
<section class="card">
		<form method="post" enctype="multipart/form-data" onsubmit="return submitChk();"action="<%=request.getContextPath()%>/InsertMember.do">
		<div>
		<h1 class ="common"><i class="fa-brands fa-stack-exchange"></i>Stack Underflow - Sign Up</h1>
		<br>
        <button id="loginbackBtn" type="button" name="loginbackBtn">로그인 페이지</button>
		</div>		
			<div class="form-group">
			   <label class="inputlabel" for="mem_id">ID&nbsp;&nbsp;</label> 
			   <input type="button" id="idcheck" value="중복 검사" class="btnCheck"><br>
			   <input type="text" class="inputPlace" id="mem_id" placeholder="아이디를 입력하세요" name="mem_id" required><br>
			   <p class="instructor">※ ID는 영어로 시작하고 영문 또는 숫자를 4~12자 사이로 입력하세요.</p><!-- 고쳐야됨 -->
			   <div id="idres"></div>
			</div>
			
			<div class="form-group">
			    <label class="inputlabel" for="mem_pass">비밀번호</label><br>
			    <input type="password" class="inputPlace" id="mem_pass" placeholder="비밀번호를 입력하세요" name="mem_pass" required>
			   <p class="instructor">※ 8~20자 사이의 영어, 숫자, 특수 기호를 1개 이상 포함해주세요.</p>
			    <div id="passres"></div>
			</div>
			
			
			<div class="form-group">
			    <label class="inputlabel" for="mem_pass_check">비밀번호 확인</label><br> 
			    <input type="password" class="inputPlace" id="mem_pass_check" placeholder="위와 동일한 비밀번호를 입력하세요" name="mem_pass_check" required>
			    <div id="passchkres"></div>
			</div>
			
			<div class="form-group">
			    <label class="inputlabel" for="mem_nknm">닉네임&nbsp;&nbsp;</label>
				<input type="button" id="dncheck" value="중복 검사" class="btnCheck"><br>
				<input type="text" class="inputPlace" id="mem_nknm" placeholder="닉네임을 입력하세요" name="mem_nknm" required>
				<p class="instructor">※ 영어 또는 한글로 시작하고 영어, 한글, 숫자를 4~8자 사이로 입력하세요.</p>
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
			    <label class="inputlabel" for="mem_postcode">우편번호</label>
			    <input type="button" id="postcodesearch" value="검색" class="btnCheck"> <br>
				<input type="text" class="inputPlace" id="mem_postcode" placeholder="우편번호를 입력하세요" name="mem_postcode" required>
			</div>
			
			<div class="form-group">
			    <label class="inputlabel" for="mem_addr1">주소</label> <br>
				<input type="text" class="inputPlace" id="mem_addr1" placeholder="주소를 입력하세요" name="mem_addr1" required>
			</div>
			
			<div class="form-group">
		        <label class="inputlabel" for="mem_addr2">상세 주소</label> <br>
				<input type="text" class="inputPlace" id="mem_addr2" placeholder="상세 주소를 입력하세요" name="mem_addr2" required>
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
			
			<button type="submit" id="submitBtn">회원가입</button>

		</form>
		</section>

</body>
<!-- 호겸 끝 -->
</html>