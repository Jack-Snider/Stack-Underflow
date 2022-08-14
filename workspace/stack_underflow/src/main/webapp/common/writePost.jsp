<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<!-- 
	
		실행하기 전에 session.getAttribute("아이디")
		를 통해 로그인이 되어있는지 검사부터 실행 해야함.
		
		로그인이 안되있으면 게시글을 작성할 수 없음.
	
	 -->
	<head>
		<meta charset="UTF-8">
		<title>write Post</title>
		
		<!-- Bootstrap v5.2 CSS only  -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
		
	</head>
	<body>
		
		<h2>게시판 글쓰기</h2>
		<form action="<%= request.getContextPath() %>/postController.do" name = "writePost" method = "post" onsubmit = "return validateForm(this)">
			<!--
				form태그의 옵션중 onsubmit은 반환값이 false면 폼값을 전송하지 않는다. 
			 -->
			<table border = "1" width = "90%">
				<tr>
					<td>제목</td>
					<td>
						<input type = "text" name = "title" style = "witdh : 90%;">
						<select name = "board_type">
							<option>Tech</option>
							<option>Free</option>
							<option>Q&A</option>
						</select>
					</td>
					
			
				</tr>
				<tr>
					<td>내용</td>
					<td>
						<textarea name = "content" style = "width : 90%; height : 100px;">
						</textarea>
					</td>
				</tr>
				<tr>
					<td colspan = "2" align = "center">
						<button type = "submit" class = "btn btn-primary">작성 완료</button>
						<button type = "reset" class = "btn btn-primary">다시 입력</button>
						<button type = "button" class = "btn btn-primary" onclick = "location.href = 목록 보여주는 jsp파일">목록 보기</button>
						
						
					</td>
				</tr>
			</table>
		
		</form>
		
		<!-- JavaScript파일 읽어오기 -->
		<script type="text/javascript" src = "../js/writePost.js"></script>
		
	</body>
</html>