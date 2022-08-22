<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <!-- Simple bar CSS -->
    <link rel="stylesheet" href="css/simplebar.css">
    <!-- Fonts CSS -->
    <link href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
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
  </style> 
   
</head>
<body>
             <div class="row">
                      <form action="<%= request.getContextPath() %>/postController.do?currentPage=1" method="post" enctype="multipart/form-data" onsubmit="return validateForm(this)">
                <div class="col-md-6 mb-4">
                  <div class="card shadow">
                    <div class="card-body">
                      <div class="form-group mb-3">
                        <label for="simpleinput">제목</label>
                        <input type="text" id="simpleinput" class="form-control">
                      </div>
	<!--                      <div class="form-group mb-3">
	                        <label for="example-select">Input Select</label> -->
	                        <select class="form-control" name = "boardKind" id="example-select">
	                          <option>Tech</option>
	                          <option>Free</option>
	                          <option>Ask</option>
	                        </select>
	                   <!--    </div> -->
		                      <div class="form-group mb-3">
		                        <label for="example-textarea">내용</label>
		                        <textarea class="form-control" name="content" id="example-textarea" rows="4"></textarea>
		                      </div>
		                        <div class="form-group mb-3">
		                         <label for="customFile">첨부파일</label>
		                          <div class="custom-file">
		                            <input type="file" class="custom-file-input" name="file" id="customFile">
		                            <label class="custom-file-label" for="customFile"></label>
		                          </div>
	                            </div>
                        <button type="submit" class="btn mb-2 btn-outline-info">업로드</button>
                        <button type="reset" class="btn mb-2 btn-outline-info">초기화</button>
                        <button type="button" id= "goPostList" class="btn mb-2 btn-outline-primary"><span class="fe fe-arrow-right fe-16 mr-2"></span>목록가기</button>
                    </div> <!-- /.card-body -->
                  </div> <!-- /.card -->
                       </form>
                </div> <!-- /.col -->


<link href="../js/writePost">
 <!--                        <div class="form-group mb-3">
                          <label for="customFile">Custom file input</label>
                          <div class="custom-file">
                            <input type="file" class="custom-file-input" id="customFile">
                            <label class="custom-file-label" for="customFile">Choose file</label>
                          </div>
                        </div> -->
             
<%--                	<h2>게시판 글쓰기</h2>
	<form action="<%= request.getContextPath() %>/postController.do?currentPage=1" method="post" enctype="multipart/form-data" onsubmit="return validateForm(this)">
																								  	
		<table border="1" style="width: 90%;">
		

			<tr>
				<td>제목</td>
				<td><input type="text" name="title" style="width: 90%;"></td>
				<td>
					<select name = "boardKind">
						<option>Tech</option>
						<option>Free</option>
						<option>Ask</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content" style="width: 90%; height: 100px" autofocus="autofocus"></textarea>
				</td>
			</tr>
			<tr>
				<!-- 파일 첨부하기 -->
				<td>첨부 파일</td>
				<td><input type="file" name="file" multiple></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit">submit</button>
					<button type = "reset">reset</button>
					<button type = "button" id= "goPostList"> 목록 바로가기 </button> <!-- 호겸 수정 -->
				</td>
			</tr>
		</table>
	</form>

	<link href="../js/writePost">
                --%>
                
</body>
</html>