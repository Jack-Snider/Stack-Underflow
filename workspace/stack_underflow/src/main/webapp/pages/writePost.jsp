<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write post</title>



</head>
<body>

	<h2>게시판 글쓰기</h2>
	<form action="<%= request.getContextPath() %>/postController.do" method="post" enctype="multiple/form-data"
		onsubmit="return validateForm(this)">
		<table border="1" style="width: 90%;">
		

			<tr>
				<td>제목</td>
				<td><input type="text" name="title" style="width: 90%;">
					<select>
						<option>기술</option>
						<option>자유</option>
						<option>문의</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content" style="width: 90%; height: 100px"></textarea>
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
					<button type = "button" onclick = "toList()">목록 바로가기</button>
					
				</td>
			</tr>
		</table>
	</form>


	<link href="../js/writePost">
</body>
</html>