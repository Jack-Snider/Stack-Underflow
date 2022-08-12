<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script>

	$(function(){
		$('#idcheck, #dncheck').on('click', function(){
			let id = $(this).attr('id');
			let value = "";
			if(id == 'idcheck'){
				value = $('#mem_id').val().trim();
				if(value.length<1) alert('Please Enter ID');
			}else {
				value = $('#mem_nknm').val().trim();
				if(value.length<1) alert('Please Enter Disply Name');
			}
			$.ajax({
				url : '/stack_underflow/DuplicationCheck.do',
				data : {[id] : value},
				type : 'post',
				success : function(res){
					if(res.hasOwnProperty('idres')){
						if(res.idres == 1){
							$('#idres').text('Duplicated').css('color', 'red');
						}else{
							$('#idres').text('valid').css('color', 'green');
						}
					}else if(res.hasOwnProperty('dnres')){
						if(res.dnres == 1){
							$('#dnres').text('Duplicated').css('color', 'red');
						}else{
							$('#dnres').text('valid').css('color', 'green');
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
	#idcheck{
		margin : auto 10px;
	}
	#idres{
		margin : auto 10px;
	}
	#discheck{
		margin : auto 10px;
	}
	#disres{
		margin : auto 10px;
	}
</style>
</head>
<body>

	<div class="container">
		<form method="post" action="<%=request.getContextPath() %>/InsertMember.do">
		
			<div class="form-group">
				<label for="mem_id">ID</label> 
				<input type="button" id="idcheck" value="Duplication Check" class="btn btn-dark btn-sm">
				<span id="idres"></span>
				<input type="text" class="form-control" id="mem_id" placeholder="Enter ID" name="mem_id" required>
			</div>
			
			<div class="form-group">
				<label for="mem_pass">Password</label> 
				<input type="password" class="form-control" id="mem_pass" placeholder="Enter Password" name="mem_pass" required>
			</div>
			
			<div class="form-group">
				<label for="mem_pass_check">Password Check</label> 
				<input type="password" class="form-control" id="mem_pass_check" placeholder="Enter Password" name="mem_pass_check" required>
			</div>
			
			<div class="form-group">
				<label for="mem_nknm">Display Name</label> 
				<input type="button" id="dncheck" value="Duplication Check" class="btn btn-dark btn-sm">
				<span id="dnres"></span>
				<input type="text" class="form-control" id="mem_nknm" placeholder="Enter Disply Name" name="mem_nknm" required>
			</div>
			
			<div class="form-group">
				<label for="mem_nm">Name</label> 
				<input type="text" class="form-control" id="mem_nm" placeholder="Enter Name" name="mem_nm" required>
			</div>
			
			<div class="form-group">
				<label for="mem_regno1">Registration Number</label> 
				   <div class="form-row">
				     <div class="col">
				       <input type="text" class="form-control" id="mem_regno1" name="mem_regno1">
				     </div>
				    
				     <div class="col">
				       <input type="text" class="form-control" id="mem_regno2" name="mem_regno2">
				     </div>
				   </div>
			</div>
			
			<div class="form-group">
				<label for="mem_email">Email Address</label> 
				<input type="email" class="form-control" id="mem_email" placeholder="Enter Email Address" name="mem_email" required>
			</div>
			
			<div class="form-group">
				<label for="mem_addr1">Address</label> 
				<input type="text" class="form-control" id="mem_addr1" placeholder="Enter Address" name="mem_addr1" required>
			</div>
			
			<div class="form-group">
				<label for="mem_addr2">Detailed Address</label> 
				<input type="text" class="form-control" id="mem_addr2" placeholder="Enter Detailed Address" name="mem_addr2" required>
			</div>
			
			<div class="form-group">
  				<label for="mem_qstn">Password Question</label>
				  <select class="form-control" id="mem_qstn" name="mem_qstn">
				    <option value="What is Your Father Name ?">What is Your Father Name ?</option>
				    <option value="What is Your Mother Name ?">What is Your Mother Name ?</option>
				    <option value="What is Your Favorite Color ?">What is Your Favorite Color ?</option>
				    <option value="What is Your Favorite Food ?">What is Your Favorite Food ?</option>
				  </select>
			</div>

			<div class="form-group">
				<label for="mem_ans">Password Answer</label> 
				<input type="text" class="form-control" id="mem_ans" placeholder="Enter Answer" name="mem_ans" required>
			</div>
			
			<!--  
			<div class = "form-group">
				<label for="picture">Profile Image</label>
				<input type="file" id="file_name" name="file_name">
			</div>
			-->
			
			<button type="submit" class="btn btn-primary">Sign Up</button>
			<span id="joinsub"></span>
		
		</form>
	</div>
</body>
</html>