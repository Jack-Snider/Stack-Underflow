<%@page import="ufo.vo.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		
		<%
		
			PostVO postVo = (PostVO)request.getAttribute( "detailPost" );
		
		%>
		
		<h2>게시글 - 상세보기</h2>
		
		<table border = "1" width = "90%">
			<colgroup>
				<col width = "15%"/> <col width = "35%"/>
				<col width = "15%"/> <col width = "*"/>
			</colgroup>
			
			<!-- 게시글 정보 -->
			<tr>
				<td>번호</td> <td><%= postVo.getPost_num() %></td>
				<td>작성자</td> <td><%= postVo.getMem_id() %></td>
			</tr>
			<tr>
				<td>작성일</td> <td><%= postVo.getPost_reg_date() %></td> 
				<td>조회수</td> <td><%= postVo.getPost_views() %></td>
			</tr>
			<tr>
				<td>제목</td>
				<td colspan = "3"><%= postVo.getPost_title() %></td>
			</tr>
			
			<tr>
				<td>내용</td>
				<td colspan = "3" height = "100"><%= postVo.getPost_cont() %></td>
			</tr>

			<!-- 첨부 파일 -->			
			<tr>
				<td>첨부 파일</td>
				<td>다운로드</td>
			</tr>
			
			<tr>
				<td colspan = "4" align = "center">
					<button type = "button" onclick = "수정하는 서블릿으로 보내나?.." >수정하기</button>
					<button type = "button" onclick = "삭제하는 서블릿으로 보내나?...">삭제하기</button>
					<button type = "button" onclick = "다시 목록으로 돌아가는 경로">목록보기</button>
				</td>
			</tr>
			
			
		</table>
		
		
	</body>
</html>