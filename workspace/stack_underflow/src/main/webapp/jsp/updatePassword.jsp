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
<!-- 강명범 시작 -->
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경하기</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://kit.fontawesome.com/ded2fba49a.js" crossorigin="anonymous"></script>
<script>
let passChk = false;
let ruleChk = false;

$(function(){
// 비밀번호 재확인 검사
	$('#mem_pass_check').on('keyup', function(){
		let mem_pass = $('#mem_pass').val();
		let mem_pass_check = $(this).val();
		if(mem_pass == mem_pass_check){
			$(this).css('border', '2px solid blue');
			$('#passchkres')
			.html('<div class="alert alert-success" style="margin-bottom : 1px;"><label id="checkValid">비밀번호 검사 성공 :같은 비밀번호 입니다</label></div><br>');
			passChk = true;
		}else{
			$(this).css('border', '2px solid red');
			$('#passchkres')
			.html('<div class="alert alert-danger" style="margin-bottom : 1px;"><label id="checkValid">비밀번호 검사 실패 : 같은 비밀번호가 아닙니다</label></div><br>');
			passChk = false;
		}	
	});


//비밀번호 유효성
$('#mem_pass').on('keyup', function(){
	let passValue = $(this).val().trim();
	let passReg = /^.*(?=^.{8,20}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/; 
	if(passReg.test(passValue)){
		$(this).css('border', '2px solid blue');
		$('#passres')
		.html('<div class="alert alert-success" style="margin-bottom : 1px;"><label id="checkValid">적합한 비밀번호입니다.  비밀번호 생성 형식에 적합합니다.</label></div><br>');
		ruleChk = true;
	}else{
		$(this).css('border', '2px solid red');
		$('#passres')
		.html('<div class="alert alert-danger" style="margin-bottom : 1px;"><label id="checkValid"> 부적합한 비밀번호이군요. 제발 비밀번호 생성 형식 좀 지켜주세요.</label></div><br>');
		ruleChk = false;
	}
});
});

//submit - "자바스크립트 선언은 jQuery 안에서 사용할 수 없다."
function submitChk(){
	if(passChk&&ruleChk){
		alert("비밀번호 변경 성공");
		return true;
	}else{
		alert("비밀번호 변경 실패");
		return false;
	}
}
</script>

	
	

</head>
<body>


	<h1 class ="common"><i class="fa-brands fa-stack-exchange"></i>
		Stack Underflow 비밀번호 변경하기</h1>
<div class="findpasCommon">
		<form class="changePassForm" method="post" onsubmit="return submitChk();" action="<%=request.getContextPath()%>/updatePassword.do">
		    <p1>※ 비밀번호는 8 ~20자 사이 영어 대,소문자 및 숫자 특수기호 필수 포함</p1><br><br>
			<label class="change_pass">변경하실 패스워드</label><br>
			<input type="text" class="inputPlace" id="mem_pass" name="mem_pass" required><br>
			<div id="passres"></div>
			
			<label class="change_pass">변경하실 패스워드 확인</label><br>
			<input type="text" class="inputPlace" id="mem_pass_check" name="mem_pass_check" required><br>
			<div id="passchkres"></div>
			<button type="submit" class="findBtn" name="changePassBtn" id="changePassBtn">변경하기</button>
	</form>
	</div>
</body>
<!-- 강명범 끝 -->
</html>