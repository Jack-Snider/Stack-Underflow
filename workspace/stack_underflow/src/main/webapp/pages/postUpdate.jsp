<%@page import="ufo.vo.PostVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- Jack Snider 시작 -->
<head>
<meta charset="UTF-8">
<title>Edit post</title>



</head>
<body>

	<h2>게시판 수정</h2>
	
	<%
	
		PostVO postVo = (PostVO)session.getAttribute( "postUpdate" );
		
	
	%>
	
	<form action="<%= request.getContextPath() %>/postUpdate.do?currentPage=1" method="post" enctype="multiple/form-data"
		onsubmit="return validateForm(this)"> <!-- 호겸 수정 -->
		<table border="1" style="width: 90%;">
		

			<tr>
				<td>제목</td>
				<td><input type="text" name="title" style="width: 90%;" value = "<%= postVo.getPost_title() %>">
					
				</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>
				<textarea name="content" style="width: 90%; height: 100px" autofocus="autofocus">
					<%= postVo.getPost_cont() %>
				</textarea>
				</td>
			</tr>
			<tr>
				<td>첨부 파일</td>
				<td>
					<input type="file" name="file" "<%= postVo.getFile_num() %>">	
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit">수정완료</button>
					<button type = "reset">reset</button>
					<button type = "button">
						<a href = "<%= request.getContextPath()%>/postList.do">목록 바로가기</a>
					</button>
					
				</td>
			</tr>
		</table>
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