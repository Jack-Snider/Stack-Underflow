<%@page import="ufo.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
  	<!-- 호겸 수정 시작 -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>MyPage</title>
    <link rel="stylesheet" href="css/simplebar.css">
    <link rel="stylesheet" href="css/feather.css">
    <link rel="stylesheet" href="css/daterangepicker.css">
    <link rel="stylesheet" href="css/app-light.css" id="lightTheme">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
	<!-- 호겸 수정 끝 -->
	<!-- 호겸 시작 -->
  	<% 
		MemberVO memVo = (MemberVO)session.getAttribute("Mem_vo"); 
		String mem_pass = memVo.getMem_pass();
	%> 
	<!-- 호겸 끝 -->
  	<script>
  	// 호겸 시작
	$(function(){

/*		
		var form = $('#uploadForm')[0];
		var formData = new FormData(form);
		
		
		$.ajax({
			url : '/stack_underflow/profileUpload.do?files',
			type : 'post', 'files',
			data : formData,
			        contentType : false,
			        processData : false,   
			success : function( res ){
				
			}
		});
		
*/			
		$.ajax({
			url : '/stack_underflow/getMemberInfo.do',
			type : 'post',
			success : function(res){
				$('#mem_nm').attr("readonly", true).val(res.mem_nm);
				
				$('#mem_nknm').attr("readonly", true).val(res.mem_nknm);
				//$( '#nickname' ).attr( "readonly" , true ).val( res.mem_nknm );
				$( '#nickname' ).text( res.mem_nknm );
				$('#mem_email').attr("readonly", true).val(res.mem_email);
				$('#mem_addr1').attr("readonly", true).val(res.mem_addr1);
				$('#mem_addr2').attr("readonly", true).val(res.mem_addr2);
				$('#main-btn2').hide();
			},
			error : function(xhr){
				alert(xhr.status);
			},
			dataType : 'json'
		});
		$('#main-btn1').on('click', function(){
			//$('#mem_nm').attr("readonly", false); 
			$('#mem_nknm').attr("readonly", false);
			$('#mem_email').attr("readonly", false);
			$('#mem_addr1').attr("readonly", false);
			$('#mem_addr2').attr("readonly", false);
			$('#main-btn2').show();
		});
		$('#main-btn2').on('click', function(){
			let mem_nm = $('#mem_nm').val();
			let mem_nknm = $('#mem_nknm').val();
			let mem_email = $('#mem_email').val();
			let mem_addr1 = $('#mem_addr1').val();
			let mem_addr2 = $('#mem_addr2').val();
			$.ajax({
				url : '/stack_underflow/updateMemberInfo.do',
				type : 'post',
				data : {"mem_nknm" : mem_nknm, "mem_email" : mem_email, "mem_addr1" : mem_addr1, "mem_addr2" : mem_addr2},
				success : function(res){
					$('#mem_nknm').attr("readonly", true).val(res.mem_nknm);
					$('#mem_email').attr("readonly", true).val(res.mem_email);
					$('#mem_addr1').attr("readonly", true).val(res.mem_addr1);
					$('#mem_addr2').attr("readonly", true).val(res.mem_addr2);
					$('#main-btn2').hide();
					alert("회원정보 수정이 완료됬습니다.");
				},
				error : function(xhr){
					alert(xhr.status);
				},
				dataType : 'json'
			});
		});
		$('#mem-delete-btn').hide();
		$('#modal_passchk_btn').on('click', function(){
			//여기가 문제다.
			let session_mem_pass = $('#hidden_mem_pass').val()+"";
			let input_mem_pass = $('#modal_mem_pass').val().trim();
			if(input_mem_pass.length<1){
				$('#modal-footer-alert').html('<div class="alert alert-danger" id="alert" style="margin : 10px 10px;"><strong>비밀번호를 입력하세요.</strong></div>');
			}else{
				if(input_mem_pass == session_mem_pass){
					$('#mem-delete-btn').show();
					$('#mem-delete-btn').on('click', function(){
						alert("회원탈퇴 되었습니다.");
						location.href="/stack_underflow/deleteMember.do";
					});
				}else{
					$('#modal-footer-alert').html('<div class="alert alert-danger" id="alert" style="margin : 10px 10px;"><strong>비밀번호가 일치하지 않습니다.</strong></div>');
					$('#modal_mem_pass').val('');
				}
			}
		});
		$('#modal-cancel-btn').on('click', function(){
			$('#alert').remove();
		});
	});
	// 호겸 끝
	</script>
	
	
	
	
	<!-- 호겸 시작 -->
	<style>
	#modal_mem_pass{
		display : inline-block;
		width : 400px;
	}
	.btn-outline-success:hover{
	 background : darkviolet;
	 color : white;
	
	}
	
	.btn-outline-info{
	  color : darkviolet;
	  border-color : darkviolet;
	
	}
	.btn-outline-info:hover {
    color: white;
    background-color: darkviolet;
    border-color: darkviolet;
}


.avatar avatar-xl{

    width: 203px;
    height: 198px;
    border-radius: 49%;
    border: 1px solid black;
    overflow: hidden;
    position: relative;
}



    

	</style>
	<!-- 호겸 끝 -->
  </head>
  <body class="vertical  light">

      <main role="main" class="main-content">
        <div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-12 col-lg-10 col-xl-8">
              <h2 class="h3 mb-4 page-title">마이페이지</h2>
              <div class="my-4">
                <ul class="nav nav-tabs mb-4" id="myTab" role="tablist">
                  <li class="nav-item">
                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">회원정보</a>
                  </li>
                </ul>
                <form action = "서블릿 이동">
                  <div class="row mt-5 align-items-center">
                    <div class="col-md-3 text-center mb-5">
                      <!-- Jack Snider 시작 ( 난이도 : ★★★★★ ) -->
                      <div id = "image_preview" class="avatar avatar-xl">
                      	<!-- 프사 -->
                      	
                         <img id = "profilePhoto" src="./assets/avatars/face-6.jpg" alt="..." class="avatar-img rounded-circle" 
                         style=" width: 203px; height: 184px;">
                        
                      </div>
                    </div>

                    <div  class="col">
                      <!-- 호겸 수정
                      <button type="button" class="btn btn-outline-success" style="float: right;   margin-top: -9%; margin-right: 14%;">사진변경</button>                      
                       -->
  <!--                     <label for="editPhoto">사진첨부</label> 
                      <input	id = "editPhoto" type = "file" 
                      			name = "bf_file[]"
                      			class = "btn btn-outline-success"
                      			style="float: right;   margin-top: -9%; margin-right: 14%;"
                      			accept="image/*"  >
                       -->
                    <div style="    float: right;
								    margin-top: -14.45%;
								    margin-right: 5%;
								    color: darkviolet;
								    font-size: 15px;">  
                   <!--   <label for="editPhoto" >프로필 사진 수정</label> -->
                     <input type="file" id="editPhoto" class="form-control-file" style="margin-top: -12%;"
                     
                      			accept="image/*" >
                     </div>    
                      <!-- Jack Snider 끝 -->
                      <button type="button" class="btn mb-2 btn-outline-info" id="main-btn3" data-bs-toggle="modal" data-bs-target="#staticBackdrop" 
                      style="       margin-top: -18.5%;
    float: right;" >회원탈퇴</button> <!-- 호겸 수정 -->

                    <!-- tyle="float: right;   margin-top: -9%; margin-right: -52%; -->
                      

                      <div class="row align-items-center">
                        <div class="col-md-7">
                          <!-- 닉네임 -->
                          <h4 id = "nickname" style="    font-size: 4.5rem;
							    font-weight: 700;
							    text-decoration-line: underline;
							    margin-top: -21%;"class="mb-1">ㅇㅇ</h4>
                          </div>
                      </div>
                      <div class="row mb-4">
                        <div class="col-md-7">
                        </div>
                        <div class="col">
                        </div>
                      </div>
                    </div>
                  </div>
                <hr class="my-4">
          		<!-- 호겸 시작 -->
                  <div class="form-group col-md-6">
                      	<label for="mem_nm">이름</label>
                      	<input type="text" class="form-control" id="mem_nm" name="mem_nm">
                  </div>
                  <div class="form-group col-md-6">
                      	<label for="mem_nknm">닉네임</label>
                      	<input type="text" class="form-control" id="mem_nknm" name="mem_nknm">
                  </div>
                  <div class="form-group">
                    	<label for="mem_email">이메일</label>
                    	<input type="email" class="form-control" id="mem_email" name="mem_email">
                  </div>
                  <div class="form-group">
                        <label for="mem_addr1">주소</label>
                        <input type="text" class="form-control" id="mem_addr1" name="mem_addr1">
                  </div>
                  <div class="form-group">
                    	<label for="mem_addr2">상세주소</label>
                    	<input type="text" class="form-control" id="mem_addr2" name="mem_addr2">
                  </div>
                  <hr class="my-4">

                  <button type="button" class="btn-outline-info" id="main-btn1">수정</button>
                  <button type="button" class="btn-outline-info" id="main-btn2">저장</button>

                  <input type="text" id="hidden_mem_pass" value="<%= mem_pass %>" style="display:none;">
                <!-- 호겸 끝 -->
                </form>  
              </div> <!-- /.card-body -->
          </div> <!-- .row -->
        </div> <!-- .container-fluid -->
      </main> <!-- main -->
      	<!-- Modal -->
		<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h4 class="modal-title" id="staticBackdropLabel">정말 탈퇴하시겠습니까?</h4>
		      </div>
		      <div class="modal-body">
		      	<h5>아래에 비밀번호를 입력해주세요</h5>
		      	<h6><label for="modal_mem_pass">비밀번호</label></h6>
	                <input type="password" class="form-control" id="modal_mem_pass" name="modal_mem_pass">

	                <button type="button" class="btn-outline-info" id="modal_passchk_btn">확인</button>

		      </div>
		      <div class="modal-footer">
				<div id="modal-footer-alert"></div>
		        <button type="button" class="btn btn-outline-success" id="modal-cancel-btn" data-bs-dismiss="modal" style="color: darkviolet; border-color: darkviolet;">취소</button>
		        <div id="modal-footer-btn"></div>

		        <button type="button" id="mem-delete-btn" class="btn-outline-info">탈퇴</button>

		      </div>
		    </div>
		  </div>
		</div>
		
		
		<!-- <Jack Snider> -->
	<script>
		
		// 파일 선택해서 이미지 업로드 하면 바로 프로필 사진란에 띄우기
		$('#editPhoto').on('change', function(){
			
				let ext = $(this).val().split('.').pop().toLowerCase(); // 확장자
				// 배열에 추출한 확장자가 존재하는지 체크
				if($.inArray(ext, ['gif','png','jpg','jpeg']) == -1){
					resetFormElement($(this)); //폼 초기화
                    window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
				}else{
					let file = $('#editPhoto').prop('files')[0];
					let blobURL = window.URL.createObjectURL(file);
					$('#image_preview img').attr('src', blobURL);
                    $('#image_preview').slideDown(); //업로드한 이미지 미리보기 
                    $(this).slideUp(); //파일 양식 감춤
				}
		});
		
	</script>
	<!-- </Jack Snider> -->
		
		
  </body>
</html>