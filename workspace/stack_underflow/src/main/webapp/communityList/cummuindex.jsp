<%@page import="ufo.vo.PageVO"%>
<%@page import="ufo.vo.PostVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<title>Table 01</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/style.css">

<!-- Jack Snider 시작 -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<!-- Jack Snider 끝 -->

<!-- Jack Snider 시작 -->

<script type="text/javascript">
	
		$(function() {
		    
			
			location.href = "<%= request.getContextPath() %>/postList.do?currentPage=1";
			
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
			location.href="<%=request.getContextPath()%>
	/postList.do?currentPage="
				+ currentPage + "&column=" + column + "&condition=" + condition;
	};
</script>

</script>

<!-- Jack Snider 끝 -->


</head>
<body>

	<%
	List<PostVO> list = (List<PostVO>) request.getAttribute("postList");
	// 호겸 시작
	PageVO pageVo = (PageVO) request.getAttribute("pageVo");
	int currentPage = (int) request.getAttribute("currentPage");
	// 호겸 끝
	%>


	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">커뮤니티 게시판</h2>
				</div>



			</div>
			<div class="row" style="margin: -25%; margin-top: -35px;">
				<div class="col-md-12">
					<div class="table-wrap">
						<table class="table">
							<thead class="thead-primary">
								<!-- Jack Snider 시작 -->
								<tr>
									<td align="center"><select id="column">
											<option value="post_title">제목</option>
											<option value="post_cont">내용</option>
											<option value="mem_id">작성자</option>
									</select> <input type="text" id="condition">
										<button type="button" id="sort">검색</button></td>
								</tr>
								<!-- Jack Snider 끝 -->
							</thead>
							<tbody>
								<%
								if (list != null) {
									for (PostVO postVo : list) {
								%>
								<tr>
									<td scope="row"><%=postVo.getPost_num()%></td>
									<td>
										<!-- 게시글 제목 - 상세페이지 넘어가기 --> <a
										href="<%=request.getContextPath()%>/postDetail.do?postNum=<%=postVo.getPost_num()%>">
											<%=postVo.getPost_title()%>
									</a>
									</td>
									<td><%=postVo.getMem_id()%></td>
									<td><%=postVo.getPost_views()%></td>
									<td><%=postVo.getPost_reg_date()%></td>
									<!-- 첨부 ( 다운로드 파일 ) -->
									<td width="8%">
										<!-- 여기서 조건문을 걸어볼까?... --> <a
										href="<%=request.getContextPath()%>/downloadFile.do?fileNo=<%=postVo.getFile_num()%>">
											Download </a>
									</td>
								</tr>

								<%
								}
								} else {
								%>

								<tr>
									<td scope="row">-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td width="8%">-</td>
								</tr>

								<%
								}
								%>

							</tbody>
						</table>
						<button type="button" class="btn btn-outline-success"
							style="margin-left: 1505px;">
							<a href="../board/boardEditor.jsp">글쓰기</a>
						</button>
					</div>
				</div>
			</div>
		</div>


		<div id="button-wrapper">
			<%
			if (pageVo.getStartPage() > 1) {
			%>
			<ul class="pagination">
				<li class="page-item"><a class="page-link prev" href="#">이전</a></li>
			</ul>
			<%
			}
			%>

			<ul class="pagination plist">
				<%
				for (int i = pageVo.getStartPage(); i <= pageVo.getEndPage(); i++) {
					if (currentPage == i) {
				%>
				<li class="page-item active"><a class="page-link pnum" href="#"><%=i%></a></li>
				<%
				} else {
				%>
				<li class="page-item"><a class="page-link pnum" href="#"><%=i%></a></li>
				<%
				}
				}
				%>
			</ul>
			<%
			if (pageVo.getTotalPage() > pageVo.getEndPage()) {
			%>
			<ul class="pagination">
				<li class="page-item"><a class="page-link next" href="#">다음</a></li>
			</ul>
			<%
			}
			%>

		</div>

	</section>



	<script src="js/jquery.min.js"></script>
	<script src="js/popper.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>

</body>
</html>

