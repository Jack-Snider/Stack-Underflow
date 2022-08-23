<%@page import="ufo.vo.MemberVO"%>
<%@page import="org.omg.PortableServer.LIFESPAN_POLICY_ID"%>
<%@page import="ufo.vo.CmntVO"%>
<%@page import="java.util.List"%>
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
	
	
		<%
		
			// 내가 현재 들어온 그 상세페이지의 객체를 저장
			PostVO postVo = (PostVO)request.getAttribute( "detailPost" );
			
			// 그 객체를 세션에 넣어놈
			session.setAttribute( "postUpdate", postVo );
			session.setAttribute( "detailPost" , postVo );
		
			// 현재 로그인 되어있는 계정의 정보
			MemberVO memberVo = (MemberVO)session.getAttribute( "Mem_vo" );
			
			// 현재 로그인 되있는 아이디와  아이디와 비교한 값 TRUE, FALSE
			boolean isMatch = ( boolean )request.getAttribute( "ismatch" );
			
			
			List<CmntVO> cmntList = (List<CmntVO>)request.getAttribute( "detailCmnt" );
			
			int cmntNum = 0;
			
		%>
		<meta charset="UTF-8">
		<title>Insert title here</title>

  		<!-- 호겸  -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
  		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
  		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
  		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
		<!-- 호겸  끝 -->
		

		
		

		
		<!-- Jack Snider 시작 -->
		

		<!-- 댓글 관련 스크립트 by Jack Snider -->
		<script type="text/javascript">
		
			$(function(){
				
				let cmntNum = ''; // <- 댓글번호.. 최상위 변수~
				
//========================================================================================================================
				// 삭제버튼 눌렀을때
				$(document).on('click', '.deleteCmnt', function(){
					
					cmntNum = $(this).val(); // 버튼을 누른 댓글의 댓글 번호
					mem_id = "<%= memberVo.getMem_id() %>";
					
					$.ajax({
						url : '/stack_underflow/deleteCmnt.do', // 댓글삭제 서블릿으로 이동
						data : {"comment_number" : cmntNum}, // 서블릿 호출하면서 댓글번호 데이터를 넘겨줌
						type : 'post', // 전송방식
						success : function( res ){ // 전송 성공시 ( 댓글 삭제가 반영된 의 댓글 리스트를 리턴 받을거임 )
							
							let value = '';
							
							$.each(res, function(i,v){
								value += "<hr>";
								value += v.mem_id + " " + v.cmnt_date + "<br>";
								value += v.cmnt_cont;
								
								value += "<br>";
								
								// 여기서 조건 달기
								if( v.mem_id == mem_id ){
									value += "<br>";
									value += "<button class = \"updateCmnt btn mb-2 btn-outline-info\" type = \"button\" value = " + v.cmnt_num + ">수정</button> <button class = \"deleteCmnt btn mb-2 btn-outline-info\" type = \"button\" value = "+ v.cmnt_num + ">삭제</button>";
									value += "<hr>";									
								}
							});
							
							$('#commentList').html(value);
							$('#comment').val('');
							
						},
						error : function(xhr){
							alert(xhr.status);
						},
						dataType : 'json'
					});
					
				});
				
				
				
				
				
//========================================================================================================================				
				
				
				
				
				
				// 댓글 수정확인 버튼 누르기 ( ★★★★★ 여기는 권한 조건문 코드 없음 )
				// 댓글 수정 버튼 누르고 확인 버튼 눌렀을 때 ( 'cmntConfirm'은 동적으로 생성되는 애라서 다르게 불러야함. )
				$(document).on('click','#cmntConfirm', function(){
																
					/*
						에서 수정할 내용 쓰고 확인 버튼 눌렀을 때임
					*/
					
					// 새롭게 작성된 댓글 내용
					let newCmntCont = $('#updateComment').val();
					let mem_id = "<%= memberVo.getMem_id() %>"; // 댓글 작성자 ( 여기까지 가져오기 성공 )
					let post_num = <%= postVo.getPost_num() %>; //  번호 ( 여기까지 가져옴 )					
					
						
					// ajax 시작
					$.ajax({
						url : '/stack_underflow/updateCmnt.do',
						data : {"comment_content" : newCmntCont, "member_id" : mem_id, "post_number" : post_num,
								"comment_number" : cmntNum },
						type : 'post',
						success : function(res){
						
							let value = '';
							
							$.each(res, function(i,v){
								value += "<hr>";
								value += v.mem_id + " " + v.cmnt_date + "<br>";
								value += v.cmnt_cont;
								
								value += "<br>";
								value += "<br>";
								value += "<button class = \"updateCmnt btn mb-2 btn-outline-info\" type = \"button\" value = " + v.cmnt_num + ">수정</button> <button class = \"deleteCmnt btn mb-2 btn-outline-info\" type = \"button\" value = "+ v.cmnt_num + ">삭제</button>";
								value += "<hr>";									
								
							});
							
							$('#commentList').html(value);
							$('#comment').val('');
							
						},
						error : function(xhr){
							alert(xhr.status);
						},
						dataType : 'json'
					});
					// ajax 끝
					
				});
				// 댓글 수정 버튼 누르기
				
				
//========================================================================================================================
				
				
				
				// 댓글에서 수정버튼 눌렀을 때 ( ★★★★★ 여기는 권한 조건문 코드 없음 )
				$(document).on('click','.updateCmnt', function(){
					
					cmntNum = $(this).val(); // 클릭한 댓글 번호
					mem_id = "<%= memberVo.getMem_id() %>"; // 현재 로그인 해있는 회원정보									
					
					/*
						여기는 그냥 단순히 내가 누른 댓글의 번호랑 현재 에 달린 댓글 리스트 
						전부 불러와서 == 비교해서 댓글번호가 맞는 부분만 로 바꿔주기 위함 
						그래서 서블릿도 그냥 단순히 에 달린 댓글 불러오는 용도임.
						
						서블릿으로 댓글 번호 넘길 필요도 없음 사실...
					*/
					
					// ajax 시작
					$.ajax({
						url : '/stack_underflow/cmntShowAll.do',
						data : {"comment_number" : cmntNum},
						type : 'post',
						success : function( res ){
							// 반환값은 n번 의 리스트... 
							let value = '';
							
							$.each(res, function(i,v){
								if( v.cmnt_num == cmntNum ){
									value += "<hr>";
									value += v.mem_id + " " + v.cmnt_date + "<br>";
									//style="width: 90%; height: 100px" autofocus="autofocus"
									value += "<textarea id = \"updateComment\" style = \"width : 90%; height : 100px; autofocus = \"autofocus\">" + v.cmnt_cont + "</textarea>"
									value += "<br>";
									value += "<br>";
									value += "<button class = \"btn mb-2 btn-outline-info\" id = \"cmntConfirm\">확인</button> <button class = \"btn mb-2 btn-outline-info\">삭제</button>";
									value += "<hr>";
								}else{
									
									value += "<hr>";
									value += v.mem_id + " " + v.cmnt_date + "<br>";
									value += v.cmnt_cont;
									
									value += "<br>";
									value += "<br>";
									value += "<button class = \"updateCmnt btn mb-2 btn-outline-info\" type = \"button\" value = " + v.cmnt_num + ">수정</button> <button class = \"deleteCmnt btn mb-2 btn-outline-info\" type = \"button\" value = "+ v.cmnt_num + ">삭제</button>";
									value += "<hr>";
																		
								}
							});
							
							$('#commentList').html(value);
							$('#comment').val('');
						},
					});
					// ajax 끝
					
				});
				// 댓글에서 수정버튼 눌렀을 때
				
//========================================================================================================================
				
				// 댓글 등록
				$('#cmntInsert').on('click', function(){
					
					let cmnt_cont = $('#comment').val(); // 새롭게 작성한 댓글 ( 여기까지 가져오기 성공 )
					let mem_id = "<%= memberVo.getMem_id() %>"; // 댓글 작성자 ( 여기까지 가져오기 성공 )
					let post_num = <%= postVo.getPost_num() %>; //  번호 ( 여기까지 가져옴 )
				
					//alert( cmnt_cont );
					//alert( mem_id );
					//alert( post_num );
					
					$.ajax({
						url : '/stack_underflow/postCmnt.do',
						data : {"comment_content" : cmnt_cont, "member_id" : mem_id, "post_number" : post_num},
						type : 'post',
						success : function(res){
						
							let value = '';
							
							$.each(res, function(i,v){
								value += "<hr>";
								value += v.mem_id + " " + v.cmnt_date + "<br>";
								value += v.cmnt_cont;
								
								value += "<br>";
								
								// 여기서 조건 달기
								if( v.mem_id == mem_id ){
									value += "<br>";
									value += "<button class = \"updateCmnt btn mb-2 btn-outline-info\" type = \"button\" value = " + v.cmnt_num + ">수정</button> <button class = \"deleteCmnt btn mb-2 btn-outline-info\" type = \"button\" value = "+ v.cmnt_num + ">삭제</button>";
									value += "<hr>";									
								}
								
							});
							
							$('#commentList').html(value);
							$('#comment').val('');
							
						},
						error : function(xhr){
							alert(xhr.status);
						},
						dataType : 'json'
					});
				});
				
//========================================================================================================================
				
				
			});
		</script>
		<!-- 댓글 관련 스크립트 by Jack Snider -->
		
		

<!-- 호겸 시작 -->
<script>
	$(function(){
		$('#likeClick, #dislikeClick').on('click', function(){
			let value = $(this).attr('id');
			$.ajax({
				url : '/stack_underflow/LikeDislike.do',
				data : {"kind" : value, "postNum" : <%=postVo.getPost_num()%>},
				type : 'post',
				success : function(res){
					let likeCount = res.likeCount;
					let dislikeCount = res.dislikeCount;
					$('#likeView').text(likeCount);
					$('#dislikeView').text(dislikeCount);
				},
				error : function(xhr){
					alert(xhr.status);
				},
				dataType : 'json'
			});
		});
	});
</script>
<!-- 호겸 끝 -->
		<style type="text/css">
			
			.no_border{
				border : 0;
			}
				
			svg{
				margin-left : 50px;
				margin-right : 50px;
			}
/* 			td{
				border:1px solid;
				text-align: center;
			}			
 */
			

table.type03 {
border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    border-left: 6px solid #9c3ec5;
    margin-bottom: 3%;
    width: 100%;
}
table.type03 th {
  width: 147px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  color: #153d73;
  border-right: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
  text-align:center;

}
table.type03 td {
  width: 349px;
  padding: 10px;
  vertical-align: top;
  border-right: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
}


a{

    color: #b63dd5;
  
    text-decoration: none;

}

a:hover{
    text-decoration: none;
    color: white;
  /*    background-color: darkblue; */
}

.listbtn:hover{
  color: white;
}


.btn-outline-info:hover {
    color: #fff;
    background-color: #6b228f;
    border-color: #6b228f;
}


.btn-outline-info {
    color: #7e309f;
    border-color: #7e309f;

}

td{

    border-left: 6px solid darkviolet;
    background: #fcfbff;
}

		</style>

		
	</head>
	<body>
		
		
		
		
				
		
		

              
	<!-- border = "1" width = "90%" --> 
		
		<!--  시작 -->
		<div style="    width: 80%;
    border: 1px solid darkgray;
    margin-left: 12%;
    padding: 3%;
    margin-top: 5%;
}">
		<table class="type03">
  <tr>
    <th scope="row">번호</th>
    <td id = "postNum"><%= postVo.getPost_num() %></td>
    <th scope="row">작성자</th>
    <td id = "mem_id"><%= postVo.getMem_id() %></td>
  </tr>
  <tr>
    <th scope="row">작성일</th>
    <td><%= postVo.getPost_reg_date() %></td>
    <th scope="row">조회수</th>
    <td><%= postVo.getPost_views() %></td>
  </tr>
  <tr>
    <th scope="row">제목</th>
    <td colspan = "3"><%= postVo.getPost_title() %></td>
  </tr>
	  <tr>
	    <th scope="row">내용</th>
	    <td colspan = "3" height = "100" style="text-align: left;">
	    <div style="margin-left:30px;"><%= postVo.getPost_cont() %></div></td>
	  </tr>
    <tr>
	    <th scope="row">첨부 파일</th>
		     <td colspan = "3" >
		     <a href = "<%= request.getContextPath()%>/downloadFile.do?fileNo=<%= postVo.getFile_num() %>">
				다운로드
			 </a>
	    </td>
     </tr> 
	 	 
  </table>
		   
	<div style="  text-align: center;
    font-size: 1.5em;">   
		 <svg id="likeClick" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-hand-thumbs-up" viewBox="0 0 16 16">
  			<path d="M8.864.046C7.908-.193 7.02.53 6.956 1.466c-.072 1.051-.23 2.016-.428 2.59-.125.36-.479 1.013-1.04 1.639-.557.623-1.282 1.178-2.131 1.41C2.685 7.288 2 7.87 2 8.72v4.001c0 .845.682 1.464 1.448 1.545 1.07.114 1.564.415 2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217 1.466.217h3.5c.937 0 1.599-.477 1.934-1.064a1.86 1.86 0 0 0 .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2.144 2.144 0 0 0-.138-.362 1.9 1.9 0 0 0 .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a9.84 9.84 0 0 0-.443.05 9.365 9.365 0 0 0-.062-4.509A1.38 1.38 0 0 0 9.125.111L8.864.046zM11.5 14.721H8c-.51 0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65 1.095-.3 1.977-.996 2.614-1.708.635-.71 1.064-1.475 1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34 8.34 0 0 1-.145 4.725.5.5 0 0 0 .595.644l.003-.001.014-.003.058-.014a8.908 8.908 0 0 1 1.036-.157c.663-.06 1.457-.054 2.11.164.175.058.45.3.57.65.107.308.087.67-.266 1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.224 2.224 0 0 1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.866.866 0 0 1-.121.416c-.165.288-.503.56-1.066.56z"/>
		 </svg>
			<span id="likeView"><%=postVo.getPost_like() %></span>
			    <svg id="dislikeClick" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-hand-thumbs-down" viewBox="0 0 16 16">
	  				<path d="M8.864 15.674c-.956.24-1.843-.484-1.908-1.42-.072-1.05-.23-2.015-.428-2.59-.125-.36-.479-1.012-1.04-1.638-.557-.624-1.282-1.179-2.131-1.41C2.685 8.432 2 7.85 2 7V3c0-.845.682-1.464 1.448-1.546 1.07-.113 1.564-.415 2.068-.723l.048-.029c.272-.166.578-.349.97-.484C6.931.08 7.395 0 8 0h3.5c.937 0 1.599.478 1.934 1.064.164.287.254.607.254.913 0 .152-.023.312-.077.464.201.262.38.577.488.9.11.33.172.762.004 1.15.069.13.12.268.159.403.077.27.113.567.113.856 0 .289-.036.586-.113.856-.035.12-.08.244-.138.363.394.571.418 1.2.234 1.733-.206.592-.682 1.1-1.2 1.272-.847.283-1.803.276-2.516.211a9.877 9.877 0 0 1-.443-.05 9.364 9.364 0 0 1-.062 4.51c-.138.508-.55.848-1.012.964l-.261.065zM11.5 1H8c-.51 0-.863.068-1.14.163-.281.097-.506.229-.776.393l-.04.025c-.555.338-1.198.73-2.49.868-.333.035-.554.29-.554.55V7c0 .255.226.543.62.65 1.095.3 1.977.997 2.614 1.709.635.71 1.064 1.475 1.238 1.977.243.7.407 1.768.482 2.85.025.362.36.595.667.518l.262-.065c.16-.04.258-.144.288-.255a8.34 8.34 0 0 0-.145-4.726.5.5 0 0 1 .595-.643h.003l.014.004.058.013a8.912 8.912 0 0 0 1.036.157c.663.06 1.457.054 2.11-.163.175-.059.45-.301.57-.651.107-.308.087-.67-.266-1.021L12.793 7l.353-.354c.043-.042.105-.14.154-.315.048-.167.075-.37.075-.581 0-.211-.027-.414-.075-.581-.05-.174-.111-.273-.154-.315l-.353-.354.353-.354c.047-.047.109-.176.005-.488a2.224 2.224 0 0 0-.505-.804l-.353-.354.353-.354c.006-.005.041-.05.041-.17a.866.866 0 0 0-.121-.415C12.4 1.272 12.063 1 11.5 1z"/>
				</svg>
		<span id="dislikeView"><%=postVo.getPost_dislike() %></span>
	
	</div>		
		
		<br>
		
		<%
					
			// 현재 게시글 작성자 아이디와 접속해있는 아이디가 같을 경우
			if( isMatch ){ // 내 게시글이면!
									
		%>
		
	        <div style="margin-left:  margin-bottom: -8px; margin-left: 87%;">
						<button type = "button" onclick = "getToPostUpdate()" class="btn-outline-info" style=" border-radius: 13%; margin-right: 5%;">수정</button>
						<button type = "button" onclick = "getToPostDelete()" class="btn-outline-info" style=" border-radius: 13%; margin-right: 5%;">삭제</button>
						<button type = "button" onclick = "toList()" class="btn-outline-info" style=" border-radius: 13%;">
						<a href = "<%= request.getContextPath() %>/postList.do?currentPage=1">목록</a>
			 </button>
		   </div>
		  <hr>
		<br>
		
		<%
		
			}else{ // 로그인 아이디와 게시글 작성자 아이디가 아니라면...
			 // 내 게시글이 아니면!
		%>
		
		<button type="button" class="btn mb-2 btn-outline-info" style="float:right; color: #7a2d93;
    border-color: #7a2d93;">
	<!-- 	style=
		"float: right;
         border-color: darkviolet;
	    background-color: whitesmoke;
	    width: 6%;
	    font-size: 1.3em;">
		     -->
		  <a href = "<%= request.getContextPath() %>/postList.do?currentPage=1" ../cc">목록</a>
		</button>
		
		<br>
		
		<%
					
	     	} // else 끝남
		
		%>
		
		
		<br>
		
		<hr style="
	       margin-top: 2rem;
           margin-bottom: 1rem;">
		
		 <div class="form-group mb-3">
                        <label for="example-textarea">답변</label>
                        <textarea id="comment" style="width: 100%;  height: 214px;" autofocus="autofocus"class="form-control"></textarea>
         </div>
		<button type="button" id = "cmntInsert" class="btn mb-2 btn-outline-info" style="float:right">등록</button>
		
    		
		
		
		
					<!-- Jack Snider 시작 -->
					<!-- <textarea id="comment" style="width: 90%; height: 100px" autofocus="autofocus">
					</textarea> -->
					
					<!-- PostCmnt.java ( postCmnt.do ) 댓글등록 서블릿으로 이동 -->
					<!--	서블릿으로 넘길때 필요한 정보
						 	1. 상세페이지 게시글 번호
						 	2. 현재 접속한 계정의 아이디
						 	 
					-->
					
					<!-- Jack Snider 끝 -->
					
			
			
			
		
		<!-- /게시글 끝 -->
		 
		<!-- 여기가 기존 댓글들 리스트 보여주는 곳 --> 
		<div id = "commentList" style="  width: 100%; margin-top: 8%;">
	
				<%
					if( cmntList != null ){
						for( CmntVO cmnt : cmntList ){
							
					
				%>
					<hr>
					<%= cmnt.getMem_id() %>  <%= cmnt.getCmnt_date() %> <br> 			
					<%= cmnt.getCmnt_cont() %>
					<br>
					<br>
					<% cmntNum = cmnt.getCmnt_num(); %>
					
					<!-- 여기서 계정별로 조건 달면 됨~ -->
					<!--
						
						1. 게시글 작성자는 ,삭제 가능
						2. 게시글 작성자가 아니더라도 자신의 댓글에 한해서는 ,삭제 가능
						3. 
						 
					 -->
					<%
						if( cmnt.getMem_id().equals( memberVo.getMem_id() ) || memberVo.getMem_id().equals( "admin" ) ){
							// 현재 로그인 해있는 아이디와 게시글의 댓글들 아이디가 일치할 경우 or 로그인 되어있는 아이디가 관리자일 경우
						
					%>
					
					<button class = "updateCmnt btn mb-2 btn-outline-info" type = "button" value = <%= cmnt.getCmnt_num() %>>수정</button> <button class = "deleteCmnt btn mb-2 btn-outline-info" type = "button" value = <%= cmnt.getCmnt_num() %>>삭제</button>
					<hr>

					<%
						}else{
					%>
						<!-- 아니면 뭐하징 -->
					<%
						}
					%>


				<%
						}
					}else{
				%>
					<p>등록된 댓글이 없습니다.</p>
				<%
					}
				%>
		</div>
	</div>	
		<!-- 여기가 댓글들 리스트 보여주는 곳 -->
		<script type="text/javascript">
		
			function getToPostUpdate(){
				
				//  페이지뷰로 이동한다.
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