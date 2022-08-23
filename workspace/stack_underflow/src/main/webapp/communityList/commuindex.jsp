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
  		<!-- JavaScript Bundle with Popper -->
		<!-- JavaScript Bundle with Popper -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
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
		         listPagerServer(currentPage, column, condition);
		         
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
		      
		      // 검색 이벤트 
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
	.pl{
    width: 103px;
    border: 1px solid #C4C4C4;
    box-sizing: border-box;
    border-radius: 10px;
    padding: 12px 13px;
    font-family: 'Roboto';
    font-style: normal;
    font-weight: 400;
    font-size: 14px;
  
    margin-top: -11px;
    margin-bottom: 5%;
    margin-left: 69%;
    height: 44px;
}
}

.pl:focus{
    border: 1px solid ##1d5716;
    box-sizing: border-box;
    border-radius: 10px;
    outline: 1px solid #1d5716;
    border-radius: 10px;
}

/* @media (min-width: 768px) */
.col-mm-6 {
    flex: 0 0 50%;
    max-width: 76%;
    margin-left: 12.5%;
    }
    
    .mt-4, .my-4 {
       margin-top: 6rem!important;
}

.page-item:first-child .page-link {
    margin-left: 41px;
    border-top-left-radius: 0.25rem;
    border-bottom-left-radius: 0.25rem;
    }
    
#button-wrapper {
    display: flex;
    justify-content: space-between;
    width: 200px;
    float: right;
    margin-right: 33%;
}

.h5, h5 {
    font-size: 2.7rem;
    font-weight: 600;
    color: rebeccapurple;
}
.card-title {
    margin-bottom: -2.8rem;
}

.page-item.active .page-link {
    z-index: 3;
    color: #fff;
    background-color: darkviolet;
    border-color: darkviolet;
}
.page-link {
    position: relative;
    display: block;
    padding: 0.5rem 0.75rem;
    margin-left: -1px;
    line-height: 1.25;
    color: darkviolet;
    background-color: #fff;
    border: 1px solid darkviolet;
}



a:hover {
    color: darkviolet;
    text-decoration: underline;
}

.btn-outline-dark:hover {
    color: darkviolet;
    background-color: white;
    border-color: darkviolet;
}

.page-link next{
   width : 71%;
   

}
.page-link next{
   width : 71%;
   

}

.page-link prev{
   width : 71%;

}

.page-item:first-child .page-link click {
    margin-left: 43px;
    border-top-left-radius: 0.25rem;
    border-bottom-left-radius: 0.25rem;
}
		</style>
		<!-- 호겸 끝 -->
	</head>
	<body style=" text-align: center;">
		
		<%
		
			List<PostVO> list = (List<PostVO>)request.getAttribute("postList");
			// 호겸 시작
			PageVO pageVo = (PageVO)request.getAttribute("pageVo"); 
			int currentPage = (int)request.getAttribute("currentPage");
			// 호겸 끝

		%>
		
	<!-- 	<h2 style="margin-top: 6%;">게시글 목록</h2> -->
		<!--  폼 -->
		<!--  버튼 따로 안누르면 그냥 자동으로 모든 게시글 나왔으면 좋겠다... -->
		<!-- 호겸 수정 시작 -->

<!-- 						<select id = "column">
							<option value = "post_title">제목</option>
							<option value = "post_cont">내용</option>
							<option value = "mem_id">작성자</option>
						</select> -->
<!-- 						<input class="form-control mr-sm-2 bg-transparent border-0 pl-4 text-muted" type="search" placeholder="Type something..." aria-label="Search"
						style="margin-left: 75%; width:15%">
					
						<button type="button" class="btn mb-2 btn-light"></button> -->
		<!-- 
				      <form class="d-flex" role="search">
				        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
				        <button class="btn btn-outline-success" type="submit"></button>
		              </form> -->
	
		
		<!-- 호겸 수정 끝 --> 
		<div class="col-mm-6 my-4">
                  <div class="card shadow">
                    <div class="card-body">
                      <h5 class="card-title">게시판</h5>
                      <p class="card-text">	     
				        <select name="likeLanguage" id="column" class="pl">
				            <option value="post_title" selected>제목</option>
				            <option value="post_cont">내용</option>
				            <option value="mem_id">작성자</option>
				        </select>
					     	<input type = "text" id = "condition" style="    width: 18%;
							    height: 37px;
							    border-radius: 11px;
							    border: 1px solid li;
							    border: 1px solid lightgray;">
		
							<button type = "button" style="
							        border-radius: 5px;
								    background: white;
								    height: 32px;
								    border: 1px solid darkviolet;
								    color: darkviolet;"
							    id ="sort">검색</button></p>
                      <table class="table table-hover">
                        <thead>
                          <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>조회수</th>
                            <th>작성일</th>
                            <th>첨부</th>
                          </tr>                    
                        </thead>
                        		<%
			

				if( list != null ){
				for( PostVO postVo : list ){
					
			%>
                        <tbody>
                          <tr>
                            <td><%= postVo.getPost_num() %></td>
                            <td><a href = "<%=request.getContextPath()%>/postDetail.do?postNum=<%= postVo.getPost_num() %>">
						<%= postVo.getPost_title() %>
					</a></td>
                            <td><%= postVo.getMem_id() %></td>
                            <td><%= postVo.getPost_views() %></td>
                            <td><%= postVo.getPost_reg_date() %></td>
                            <td><a href = "<%= request.getContextPath()%>/downloadFile.do?fileNo=<%= postVo.getFile_num() %>">
						Download
					</a></td>
                  </tr>
                          <%     }
				             }else{		
			              %>
                          
                          <tr>
                            <td>EMPTY</td>
                            <td>EMPTY</td>
                            <td>EMPTY</td>
                            <td>EMPTY</td>
                            <td>EMPTY</td>
                            <td>EMPTY</td>
                          </tr>
                          	<%
								}				
							%>
							
				  </table>			
                         
		
				<button type="button" class="btn mb-2 btn-outline-dark" style=" width: 7%;  height: 39px; float: right; border : 1px solid darkviolet;">
				<!-- <a href = "pages/writePost.jsp">글쓰기</a> -->
				<a href = "write/writePost.jsp" style=" color:darkviolet">글쓰기</a>
				</button>
									
		
		
	</body>
	
	
	<!-- Jack Snider 끝 -->
	<!-- 호겸 시작 -->
	<div id="button-wrapper" style=" display: flex;
								    justify-content: space-between;
								    width: 212px;
								    float: right;
								    margin-right: 34%;">  
								  
			<%
				if(pageVo.getStartPage()>1){
			%>
				<ul class="pagination">
					<li class="page-item"><a class="page-link prev" href="#" style=" width: 141%; margin-left: -44%;" >이전</a></li>
				</ul>
			<%	
				}else{
			%>
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="#" style=" width: 141%; margin-left: -44%;">이전</a></li>
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
					<li class="page-item"><a class="page-link next click" href="#" style=" width: 70%;">다음</a></li>
				</ul>
			<%	
				}else{
			%>
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="#" style=" width: 70%;">다음</a></li>
				</ul>
			<% 
				}
			%>
			
	</div>	
	<!-- 호겸 끝 -->
</html>