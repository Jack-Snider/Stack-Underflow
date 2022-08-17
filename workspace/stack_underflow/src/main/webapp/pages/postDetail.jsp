<%@page import="ufo.vo.MemberVO"%>
<%@page import="ufo.vo.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--

	작성자 : Jack Snider


 
 -->
<!-- Jack Snider 시작 -->
<html>
	<!-- 게시글 상세페이지 -->
	<head>
		<%
		
			// 현재 게시글 객체
			PostVO postVo = (PostVO)request.getAttribute( "detailPost" );
			
			session.setAttribute( "postUpdate", postVo );
		
			// 현재 게시글의 작성자 아이디와 현재 로그인해있는 아이디가 같은지 확인
			boolean isMatch = ( boolean )request.getAttribute( "ismatch" );
			
			// 현재 로그인해있는 회원정보를 가지고 있음.
			MemberVO memVo = ( MemberVO ) session.getAttribute( "Mem_vo" );
			
		
		%>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
  		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		
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
				
					<!-- 댓글 달기 -->
					<textarea name="content" style="width: 90%; height: 80px" autofocus="autofocus">
						
					</textarea>
					<br>
					<!-- 버튼 누르면 cmntUpload.do ( CmntUpload.java 서블릿으로 이동 ) -->
					<!--
					
						CmntUpload.java 서블릿에 넘기면서 거기에서 쓸 필요한 정보
						1. 게시판 번호
						2. 댓글 작성자 아이디 ( 현재 로그인 되어 있는 아이디 )
						
					 
					 -->
					<button type = "button" onclick = "<%= request.getContextPath()%>/cmntUpload.do">COMMENT</button>
					<%
					
						// 현재 접속해있는 아이디와 게시글 작성자의 아이디가 일치할 경우
						if( isMatch ){
										
					%>
					
					<button type = "button" onclick = "getToPostUpdate()">EDIT</button>
					<button type = "button" onclick = "getToPostDelete()">DELETE</button>
					<button type = "button" onclick = "toList()">
					<a href = "<%= request.getContextPath()%>/postList.do">목록 바로가기</a>
					</button>
				
				
					<%
					
						// 현재 게시글 작성자와 로그인되어있는 아이디가 일치하지 않을 경우
						}else{
					
					%>
				
					<!-- 댓글 달기 -->
					<textarea name="content" style="width: 90%; height: 80px" autofocus="autofocus">
						
					</textarea>
					<br>
					<button type = "button" onclick = "getToPostAnswer">COMMENT</button>
				
					<button type = "button" onclick = "toList()">
					<a href = "<%= request.getContextPath()%>/postList.do">목록 바로가기</a>
					</button>
					
					<%
					
						}
					%>
					
					

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
				location.href = "<%= request.getContextPath() %>/postDelete.do"
			}
		
		</script>			
		
	</body>
</html>
<!-- Jack Snider 끝 -->