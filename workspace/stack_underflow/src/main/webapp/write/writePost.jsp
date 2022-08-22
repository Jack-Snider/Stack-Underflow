<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- Jack Snider 시작 -->
<head>
<meta charset="UTF-8">
<title>write post</title>
<!-- 호겸 시작 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<!-- Simple bar CSS -->
<link rel="stylesheet" href="css/simplebar.css">
<!-- Fonts CSS -->
<link
	href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<!-- Icons CSS -->
<link rel="stylesheet" href="css/feather.css">
<link rel="stylesheet" href="css/select2.css">
<link rel="stylesheet" href="css/dropzone.css">
<link rel="stylesheet" href="css/uppy.min.css">
<link rel="stylesheet" href="css/jquery.steps.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">
<link rel="stylesheet" href="css/quill.snow.css">
<!-- Date Range Picker CSS -->
<link rel="stylesheet" href="css/daterangepicker.css">
<!-- App CSS -->
<link rel="stylesheet" href="css/app-light.css" id="lightTheme">
<link rel="stylesheet" href="css/app-dark.css" id="darkTheme" disabled>
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>

<script type="text/javascript">
	
let currentPage = 1;

$(function(){
	$('#goPostList').on('click', function(){
		location.href="<%= request.getContextPath() %>/postList.do?currentPage="+currentPage;
	});
});
</script>
<style>
textarea.form-control {
	height: 400px;
}

.mb-3, .my-3 {
	margin-bottom: 1rem !important;
	margin-top: 2%;
}

body {
	margin: 0;
	font-family: "Overpass", sans-serif;
	font-size: 0.875rem;
	font-weight: 400;
	line-height: 2.5;
	color: #6c757d;
	text-align: left;
	background-color: #f8f9fa;
}

.row {
	display: flex;
	flex-wrap: wrap;
	margin-right: -114px;
	margin-left: 437px;
	width: 100%;
	margin-top: 4%;
	/* height: 501px; */
}
</style>

<!-- 호겸 끝 -->
</head>
<body>

							<form
		action="<%=request.getContextPath()%>/postController.do?currentPage=1"
		method="post" enctype="multipart/form-data"
		onsubmit="return validateForm(this)">
		 <div class="row"> 
			<div class="col-md-6 mb-4">
				<div class="card shadow">
					<div class="card-body">
						<div class="form-group mb-3">
							<label for="simpleinput">제목</label>
							<!-- 제목 --> 
	
							<input type="text" name="title" id="simpleinput" class="form-control">
						</div>
						<!--                      <div class="form-group mb-3">
		                        <label for="example-select">Input Select</label> -->
		
						<select class="form-control" name="boardKind" id="example-select">
							<option>Tech</option>
							<option>Free</option>
							<option>Ask</option>
						</select>
						<!--    </div> -->
						<div class="form-group mb-3">
							<label for="example-textarea">내용</label>
							<textarea class="form-control" name="content"
								id="example-textarea" rows="4"></textarea>
						</div>
						<div class="form-group mb-3">
							<div class="form-group mb-3">
								<label for="example-fileinput">Default file input</label> 
								<input type="file" name="file" id="example-fileinput"
									class="form-control-file">
							</div>
						    <button type="submit" class="btn mb-2 btn-outline-info">업로드</button>  						
						    	<!--  <button type="submit">submit</button>  -->
							<button type="reset" class="btn mb-2 btn-outline-info">초기화</button>

							 <button type="button" id= "goPostList" class="btn mb-2 btn-outline-primary"><span class="fe fe-arrow-right fe-16 mr-2"></span>목록가기</button> 
							<!-- <button type="button" id="goPostList">목록가기</button> -->
						</div>
						<!-- /.card-body -->
					</div>
					<!-- /.card -->
				</div>
				<!-- /.col -->
			</div>
	</form>


	<link href="../js/writePost">

</body>
<!-- Jack Snider 끝 -->
</html>