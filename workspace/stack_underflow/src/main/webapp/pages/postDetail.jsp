<%@page import="ufo.vo.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--

	작성자 : Jack Snider


 
 -->
<!-- Jack Snider 시작 -->
<html>
	<head>
		<%
		
			// 내가 현재 들어온 그 상세페이지의 객체를 저장
			PostVO postVo = (PostVO)request.getAttribute( "detailPost" );
			
			// 그 객체를 세션에 넣어놈
			session.setAttribute( "postUpdate", postVo );
		
			// 현재 로그인 되있는 아이디와 게시글 아이디와 비교한 값 TRUE, FALSE
			boolean isMatch = ( boolean )request.getAttribute( "ismatch" );
			
			
		
		%>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
  		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		
	
		
		
		<style type="text/css">
			
			.no_border{
				border : 0;
			}
			
		</style>
		
	</head>
	<body>
		
		
		
		<h2>게시글 - 상세보기</h2>
		
		<table border = "1" width = "90%">
			<colgroup>
				<col width = "15%"/> <col width = "35%"/>
				<col width = "15%"/> <col width = "*"/>
			</colgroup>
			
			<!-- 게시글 정보 -->
			<tr>
				<td>번호</td> <td id = "postNum"><%= postVo.getPost_num() %></td>
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
				
					<%
					
						// 현재 게시글 작성자 아이디와 접속해있는 아이디가 같을 경우
						if( isMatch ){
									
					%>
					
					<!-- 현재 접속해있는 아이디와 게시글 작성자의 아이디가 일치할 경우 -->
					<button type = "button" onclick = "getToPostUpdate()">EDIT</button>
					<button type = "button" onclick = "getToPostDelete()">DELETE</button>
					<button type = "button" onclick = "toList()">
					<a href = "<%= request.getContextPath() %>/postList.do?currentPage=1">목록 바로가기</a>
					</button>
				
					<hr>
					<br>
					<%
					
						}else{
					
					%>
				
					<button type = "button" onclick = "toList()">
					<a href = "<%= request.getContextPath() %>/postList.do?currentPage=1">목록 바로가기</a>
					</button>
					
					<br>
					
					<%
					
						}
					%>
					
					
					<textarea name="content" style="width: 90%; height: 100px" autofocus="autofocus">
					</textarea>
					
					<!-- PostCmnt.java ( postCmnt.do ) 댓글등록 서블릿으로 이동 -->
					<button type = "button" onclick = "<%= request.getContextPath() %>/postCmnt.do">등록</button>

				</td>
			</tr>
			
			
		</table>
		
		<script type="text/javascript">
		
			function getToPostUpdate(){
				
				// 수정 페이지뷰로 이동한다.
				location.href = "pages/postUpdate.jsp"
			}
			
			function getToPostDelete(){
				
				//삭제는 뷰가 필요 없어서 바로 서블릿으로 넘어간다.
				location.href = "<%= request.getContextPath() %>/postDelete.do?currentPage=1"
			}
		
		</script>			
		
	</body>
</html>
<!-- Jack Snider 끝 -->