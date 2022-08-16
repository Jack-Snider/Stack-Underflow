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
		
			PostVO postVo = (PostVO)request.getAttribute( "detailPost" );
		
		%>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
  		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		
		<script type="text/javascript">
			$(function(){
	
				$('#postLike, #postDislike').on('click', function(){
					$(this).empty();
					let id = $(this).attr('id');
					let value = <%= postVo.getPost_num() %>;
					
					//value = $('#postNum').val();
					if(value.length<1) alert('WARNING : post like not valid');
					
					$.ajax({
						url : '/stack_underflow/postcnt.do',
						data : {[id] : value},
						type : 'post',
						success : function(res){
							if( res.hasOwnProperty( 'postVoLike' ) ){
								$('#postLike').val( res.postVoLike )
							}else{
								$('#postDislike').val( res.postVoDisLike )
							}
							
						},
						error : function(xhr){
							alert(xhr.status);
						},
						dataType : 'json'
					});
				});
			});
		</script>
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
					<button type = "button" onclick = "수정하는 서블릿으로 보내나?.." >수정하기</button>
					<button type = "button" onclick = "삭제하는 서블릿으로 보내나?...">삭제하기</button>
					<button type = "button" onclick = "다시 목록으로 돌아가는 경로">목록보기</button>
					
													
					<a id = "postLike" href = "#">
						LIKE <%= postVo.getPost_like()%>
					</a>
						
					<a id = "postDislike" href = "#">
						DISLIKE <%= postVo.getPost_dislike() %>
					</a>
					
					
				</td>
			</tr>
			
			
		</table>
		
		
	</body>
</html>
<!-- Jack Snider 끝 -->