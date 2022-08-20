<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- Jack Snider 시작 -->
<head>
<meta charset="UTF-8">
<title>write post</title>
<!-- 호겸 시작 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	
let currentPage = 1;

$(function(){
	$('#goPostList').on('click', function(){
		location.href="<%= request.getContextPath() %>/postList.do?currentPage="+currentPage;
	});
});
			
</script>
<!-- 호겸 끝 -->
</head>
<body>

	<h2>게시판 글쓰기</h2>
	<form action="<%= request.getContextPath() %>/postController.do?currentPage=1" method="post" enctype="multiple/form-data"
		onsubmit="return validateForm(this)">
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
				<td>첨부 파일</td>
				<td><input type="file" name="file"></td>
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
	
</body>
<!-- Jack Snider 끝 -->
</html>