<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* html, body{
	width : 100%;
	height : 100vh;
	
}
			 */

.back{

  width : 100vw;
  height : 100vh;
  overflow: hidden;
  /* display :  */

}



			
#container{ /* 페이지 전체 영역 */
			
	width : 100%;
	height : 100%;
			
	border : 1px solid black;
				
	display : flex;
	flex-flow : column wrap;
				
				
}
			
		
#header{ /* 헤더 영역 */
				
	width : 100%;
	height : 10%;
/* 	background : red; */
border : 1px solid black;	
}
			
			
#inner_container{ /* 왼쪽,센터,오른쪽 섹션을 한꺼번에 담는 영역 */
			
	width : 100%;
	height : 100%;
			
			
	display : flex;
	/*
	justify-content : center;
	align-items : center;
	*/		
	/* background : yellow; */
	
					border : 1px solid black;
}
			
			
#middle{ /* 가운데 영역 */
				
/* 	background : blue; */
				
	height : 70%;
	border : 1px solid black;
	
				
}
			
			
#left_side{ /* 왼쪽 영역 */
			
	height : 100%;
/* 	background : purple; */
	flex : 1;
	border : 1px solid black;
			
}
			
#right_side{ /* 오른쪽 영역 */
			
	height : 100%;
	/* background : gray; */
	flex : 1;
		border : 1px solid black;		
}
	
#center{
	border : 1px solid black;
/* 	background : pink; */
	height : 100%;
	flex : 4;
	
}	
			
			
#footer{ /* 맨아래 영역 */
	width : 100%;
	height : 10%;
	
	border : 1px solid black;
	
}
</style>
</head>
<body>
  <div class="back">
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
						<a href = "">게시판</a> <!-- 호겸 수정 -->
						<a href = "">랭킹</a>
						<!-- Jack Snider 끝 -->
					</div>
				</div>
			</div>
			
			
			
			<!-- 푸터 영역 -->
			<div id = "footer"></div><!-- 푸터 영역 끝 -->
			
		
		  </div>
		</div>
</body>
</html>