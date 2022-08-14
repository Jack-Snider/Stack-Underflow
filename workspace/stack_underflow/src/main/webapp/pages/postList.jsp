<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Post List</title>
	</head>
	<body>
		
		<h2>게시글 목록</h2>
		<!-- 검색 폼 -->
		<form action="" method = "get">
			<table border = "1" width = "90%">
				<tr>
					<td align = "center">
						<select name = "">
							<option value = "title">제목</option>
							<option value = "content">내용</option>
						</select>
						<input type = "text" name = "">
						<input type = "submit" name = "검색하기"> 
					</td>
				</tr>
			</table>			
		</form>
		
		<table border = "1" width = "90%">
			<tr>
				<th width = "10%">번호</th>
				<th width = "*">제목</th>
				<th width = "15%">작성자</th>
				<th width = "10%">조회수</th>
				<th width = "15%">작성일</th>
				<th width = "8%">첨부</th>		
			</tr>
		</table>
		
	</body>
</html>