<%@page import="ufo.vo.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- Jack Snider 시작 -->
<head>
<meta charset="UTF-8">
<title>Edit post</title>

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

<style>

textarea.form-control {
	height: 284px;
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
</head>
<body>

	<h2 style="margin-left: 45%;
    margin-bottom: 1%;
    margin-top: 6%;">
    게시판 수정</h2>
	
	<%
	
		PostVO postVo = (PostVO)session.getAttribute( "postUpdate" );
		
	
	%>
	
	<form action="<%= request.getContextPath() %>/postUpdate.do?currentPage=1" 
	    method="post" enctype="multiple/form-data"
		  onsubmit="return validateForm(this)"> <!-- 호겸 수정 -->
		   <div class="col-md-6 mb-4" style="    margin-left: 25%;
    margin-top: 2%;">
		       <div class="card shadow">
					<div class="card-body">
						<div class="form-group mb-3">
							<label for="simpleinput" >제목</label>
 
                             <input type="text" name="title" value = "<%= postVo.getPost_title() %>" style=" width: 96%;">
						</div>
                  
 
<%-- ¿			<tr>
				<td>제목</td>
				<td><input type="text" name="title" style="width: 90%;" value = "<%= postVo.getPost_title() %>">
					
				</td>
			</tr>
			<tr> --%>
			
			
			     	<div class="form-group mb-3">
							<label for="example-textarea">내용</label>
							<textarea class="form-control" name="content"
								id="example-textarea" rows="4" autofocus="autofocus"><%= postVo.getPost_cont() %></textarea>
				     </div>
			
	
	
							<div class="form-group mb-3">
							<div class="form-group mb-3">
								<label for="example-fileinput">첨부파일</label> 
								<input type="file" name="file" id="example-fileinput"
									class="form-control-file">"<%= postVo.getFile_num() %>"
							</div>
	
	
	

<%-- 			<tr>
				<td>첨부 파일</td>
				<td>
				     
					<input type="file" name="file" "<%= postVo.getFile_num() %>">	
				</td>
			</tr> --%>
		
					<button type="submit" class="btn mb-2 btn-outline-info">수정완료</button>
					<button type = "reset" class="btn mb-2 btn-outline-info">reset</button>
					<button type = "button" class="btn mb-2 btn-outline-info">
						<a href = "<%= request.getContextPath()%>/postList.do">목록 바로가기</a>
					</button>
					
		     </div>
		     
		     </div>
		     </div>
		     </div>
		     
	</form>


	<script type="text/javascript">
	
		/**
		 *
		 
		 js file for writePost.jsp
		  
		 */
		 
		Document.getElementByName('title').innerText = <%= postVo.getPost_title() %>
		 
		function toList(){
			location.href = "pages/postList.jsp"
		}
		 
		function validateForm( form ){
			
			if( form.title.value == "" ){
				alert( "제목을 입력하세요." );
				form.title.focus();
				return false;
			}
			
			if( form.content.value == "" ){
				alert( "내용을 입력하세요." );
				form.title.focus();
				return false;
			}
			
		}	
		
		
			
			
			
		}
	
	</script>
	
	
</body>
<!-- Jack Snider 끝 -->
</html>