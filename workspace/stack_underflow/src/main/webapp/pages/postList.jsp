<%@page import="ufo.vo.PostVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Post List</title>
	</head>
	<body>
		
		<%
		
			List<PostVO> list = (List<PostVO>)request.getAttribute("postList");
		
		%>
		
		<h2>게시글 목록</h2>
		<!-- 검색 폼 -->
		<!-- 검색 버튼 따로 안누르면 그냥 자동으로 모든 게시글 나왔으면 좋겠다... -->
		<form action="<%= request.getContextPath() %>/postList.do" method = "get">
			<table border = "1" width = "90%">
				<tr>
					<td align = "center">
						<select name = "">
							<option value = "title">제목</option>
							<option value = "content">내용</option>
							<option value = "writer">작성자</option>
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
			
			<%
			
				
				
				if( list != null ){
				for( PostVO postVo : list ){
					
			%>
			
			<tr>
				<td width = "10%"><%= postVo.getPost_num() %></td>
				<td width = "*"><%= postVo.getPost_title() %></td>
				<td width = "15%"><%= postVo.getMem_id() %></td>
				<td width = "10%"><%= postVo.getPost_views() %></td>
				<td width = "15%"><%= postVo.getPost_reg_date() %></td>
				<td width = "8%"><%= postVo.getFile_num() %></td>
			</tr>
			
			
			<%		}
				}else{		
			%>
			
				<tr>
				<td width = "10%">EMPTY</td>
				<td width = "*">EMPTY</td>
				<td width = "15%">EMPTY</td>
				<td width = "10%">EMPTY</td>
				<td width = "15%">EMPTY</td>
				<td width = "8%">EMPTY</td>
			</tr>
			
			<%
				}				
			%>
			
		</table>
		
		<table border = "1" width = "90%">
			<tr align = "center">
				<td></td>
				<td width = "100">
					글쓰기
				</td>
			</tr>
		</table>
		
	</body>
</html>