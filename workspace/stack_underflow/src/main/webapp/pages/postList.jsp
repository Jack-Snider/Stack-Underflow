<%@page import="ufo.vo.PageVO"%>
<%@page import="ufo.vo.PostVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<!-- Jack Snider 시작 -->
	<head>
		<meta charset="UTF-8">
		<title>Post List</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
  		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  		
		<script type="text/javascript">
		<!-- 호겸 시작 -->
		let currentPage = 1;
		
		$(function() {
		      
		      //이전버튼 이벤트
		      $(document).on('click', '.prev', function() {
		         //alert($('.plist a').first().text());
		         currentPage = parseInt($('.plist a').first().text().trim()) - 1;
		         listPagerServer(currentPage);
		      });
		      
		      //다음버튼 이벤트
		      $(document).on('click', '.next', function() {
		         //alert($('.plist a').last().text());
		         currentPage = parseInt($('.plist a').last().text().trim()) + 1;
		         listPagerServer(currentPage);
		      });
		      
		      //페이지번호 이벤트
		      $(document).on('click', '.plist a', function() {
		         currentPage = $(this).text().trim();
		         listPagerServer(currentPage);
		      });
		     
		 });
		
		listPagerServer = function(currentPage) {
			location.href="<%= request.getContextPath() %>/postList.do?currentPage="+currentPage;
		};
		<!-- 호겸 끝 -->
		</script>
		

	</head>
	<body>
		
		<%
		
			List<PostVO> list = (List<PostVO>)request.getAttribute("postList");
			// 호겸 시작
			PageVO pageVo = (PageVO)request.getAttribute("pageVo"); 
			int currentPage = (int)request.getAttribute("currentPage");
			// 호겸 끝

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
				<th width = "*">
					제목
				</th>
				
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
				<!-- 호찡 말대로 여기다 네임값을 각 번호로 줌 -->
				<td width = "10%"><%= postVo.getPost_num() %></td>
				<td width = "*">						
					<a href = "<%=request.getContextPath()%>/postDetail.do?postNum=<%= postVo.getPost_num() %>">
						<%= postVo.getPost_title() %>
					</a>
				</td>
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
	<!-- Jack Snider 끝 -->
	<!-- 호겸 시작 -->
	
			<%
				if(pageVo.getStartPage()>1){
			%>
				<ul class="pagination">
					<li class="page-item"><a  class="page-link prev" href="#">이전</a></li>
				</ul>
			<%	
				}
			%>
				<ul class="pagination plist">
			<%
				for(int i=pageVo.getStartPage(); i<=pageVo.getEndPage(); i++){
					if(currentPage == i){			
			%>
						<li class="page-item active"><a class="page-link pnum" href="#"><%= i %></a></li>
			<%
					}else{		
			%>
						<li class="page-item"><a class="page-link pnum" href="#"><%= i %></a></li>
			<%	
					} 
				}
			%>
				</ul>
			<%
				if(pageVo.getTotalPage()>pageVo.getEndPage()){
			%>
				<ul class="pagination">
					<li class="page-item"><a class="page-link next" href="#">다음</a></li>
				</ul>
			<%	
				}
			%>
			
	<!-- 호겸 끝 -->
</html>