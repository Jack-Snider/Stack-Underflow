<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	
		<meta charset="UTF-8">
		<title>Stack Underflow</title>
		<link rel="stylesheet" type="text/css" href="../css/frame.css">
			
		
		
	</head>
	<body>
		
		<div id = "container">
		
			<!-- 헤더 영역 -->
			<div id = "header"> 
				
			</div><!-- 헤더 영역 끝 -->
			 
			
			<div id = "middle">
				<div id = "inner_container">
					<div id = "left_side"></div>
					<div id = "center"></div>
					<div id = "right_side">
						<!-- Jack Snider 시작 -->
						<a href = "<%= request.getContextPath() %>/postList.do?currentPage=1">게시판</a> <!-- 호겸 수정 -->
						<a href = "../ranking/rankingBoard.jsp">랭킹</a> <!-- 호겸 수정 -->
						<a href = "./mypage.jsp">마이페이지</a> <!-- 호겸 수정 -->
						<!-- Jack Snider 끝 -->
					</div>
				</div>
			</div>
			
			
			
			<!-- 푸터 영역 -->
			<div id = "footer"></div><!-- 푸터 영역 끝 -->
			
		
		</div>
		
	</body>
</html>