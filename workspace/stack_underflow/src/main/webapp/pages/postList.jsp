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
		$(function() {
		      
			let currentPage = 1;
			let column = "";
			let condition = "";
			
		      //이전버튼 이벤트
		      $(document).on('click', '.prev', function() {
		         //alert($('.plist a').first().text());
		         currentPage = parseInt($('.plist a').first().text().trim()) - 1;
		         if(currentPage == 0){
		        	 $(this).prop("disabled", true);
		         }else{
		        	 listPagerServer(currentPage, column, condition);
		         }
		      });
		      
		      //다음버튼 이벤트
		      $(document).on('click', '.next', function() {
		         //alert($('.plist a').last().text());
		         currentPage = parseInt($('.plist a').last().text().trim()) + 1;
		         listPagerServer(currentPage, column, condition);
		      });
		      
		      //페이지번호 이벤트
		      $(document).on('click', '.plist a', function() {
		         currentPage = $(this).text().trim();
		         listPagerServer(currentPage, column, condition);
		      });
		      
		      //검색 이벤트 
		     $('#sort').on('click', function(){
		    	 column = $('#column').val();
		    	 condition = $('#condition').val();
		    	 listPagerServer(currentPage, column, condition);
		     });
		 });
		
		listPagerServer = function(currentPage, column, condition) {
			location.href="<%= request.getContextPath() %>/postList.do?currentPage="+currentPage+"&column="+column+"&condition="+condition;
		};
		
		</script>
		<style>
			#button-wrapper{
				display: flex;
				justify-content: space-between;
				width: 200px;
			}
		</style>
		<!-- 호겸 끝 -->
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
		<!-- 호겸 수정 시작 -->
			<table border = "1" width = "90%">
				<tr>
					<td align = "center">
						<select id = "column">
							<option value = "post_title">제목</option>
							<option value = "post_cont">내용</option>
							<option value = "mem_id">작성자</option>
						</select>
						<input type = "text" id = "condition">
						<button type = "button" id = "sort">검색</button>
					</td>
				</tr>
			</table>			
		<!-- 호겸 수정 끝 --> 
		
		
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
					<!-- 상세페이지 넘어가기 -->
					<a href = "<%=request.getContextPath()%>/postDetail.do?postNum=<%= postVo.getPost_num() %>">
						<%= postVo.getPost_title() %>
					</a>
				</td>
				<td width = "15%"><%= postVo.getMem_id() %></td>
				<td width = "10%"><%= postVo.getPost_views() %></td>
				<td width = "15%"><%= postVo.getPost_reg_date() %></td>
				
				<!-- 첨부 ( 다운로드 파일 ) -->
				<td width = "8%">
					<a href = "<%= request.getContextPath()%>/downloadFile.do?fileNo=<%= postVo.getFile_num() %>">
						Download
					</a>
				</td>
				
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
					<a href = "pages/writePost.jsp">글쓰기</a>
				</td>
			</tr>
		</table>
		
	</body>
	<!-- Jack Snider 끝 -->
	<!-- 호겸 시작 -->
	<div id="button-wrapper">  
			<%
				if(pageVo.getStartPage()>1){
			%>
				<ul class="pagination">
					<li class="page-item"><a class="page-link prev" href="#">이전</a></li>
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
			
	</div>	
	<!-- 호겸 끝 -->
</html>