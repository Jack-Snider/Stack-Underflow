<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<!--  
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script> 
<link rel="stylesheet" type="text/css" href="../css/main.css"> 
-->
<link rel="stylesheet" type="text/css" href="../css/btn.css">
<script class="cssdeck" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/6ef361a288.js" crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DynaPuff&family=Silkscreen&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Bebas+Neue&family=Cairo:wght@700&family=Fjalla+One&family=Oswald:wght@500&family=Russo+One&family=Staatliches&family=Stick+No+Bills:wght@800&display=swap" rel="stylesheet">
    
<style>

/* header style 시작 */
#header{
    position: fixed; 
    top: 0;
    left: 0;
    width: 100%;
    background: #fafafa;
    color:#949392;
    z-index: 1000;
    height: 100px;
    overflow: hidden;
    -webkit-transition: height 0.3s;
    -moz-transition: height 0.3s;
    transition: height 0.3s;
    text-align:center;
    line-height:39px;
    height: 66px;
    font-size : 18px;
    box-shadow: 2px 1px 6px 0px;
}

#header h1{
    font-size : 18px;
    font-weight:normal;
    line-height: 46px;
 	font-family: 'Stick No Bills', sans-serif; 
}

#header a{
  	text-decoration: none;
  	float: left;
 	margin-left: 10px;
    color: black;
    
    margin-left:28px;
 	font-size : 18px;
}

#header a:hover{
  	color : green;
}

#header a:after{ 
   	display:block;/*a요소를 블록 요소라고 선언*/
   	content: '';
   	border-bottom: solid 2px green; /* 및줄 색  */
   	transform: scaleX(0);/*크기를 0으로 줌으로써 평상시엔 밑줄 없음*/
   	transition: transform 250ms ease-in-out;
} 
   
#header a:hover:after{
   	transform: scaleX(1);/*a 속성에 hover시 기존 크기로*/
}  

#header #home{
   	font-size: 30px;
}

div .mypage-logout-btn{
	clear: both;
    display: inline-block;
    position: absolute;
    right: 1%;
}
/* header style 끝 */

/* content style 시작 */

#content-wrapper{
	margin : 250px auto;
	border : 1px solid;
	width : 1500px;
	height : 1000px;
}

#content-wrapper > #content-upper{
	border : 1px solid;
	margin : 10px;
	height : 30%;
}

#content-wrapper > #content-bottom{
	border : 1px solid;
	margin : 10px;
	height : 66.5%;
}


/*
#content-wrapper > #content-left{
	display : inline-block;
	border : 1px solid;
	margin : 10px;
	width : 30%;
	height : 62%;
}

#content-wrapper #content-left-category{
	border : 1px solid;
	margin : 10px;
}
*/
/* content style 끝 */

</style>
<script>
	$(function(){
		$.ajax({
			url : '/stack_underflow/getMemberInfo.do',
			type : 'post',
			success : function(res){
				$('#mem_nm').val(res.mem_nm);
				$('#mem_nknm').val(res.mem_nknm);
				$('#mem_email').val(res.mem_email);
				$('#mem_addr1').val(res.mem_addr1);
				$('#mem_addr2').val(res.mem_addr2);
			},
			error : function(xhr){
				alert(xhr.status);
			},
			dataType : 'json'
		});
	});
</script>
</head>
<body>

<div id="header">
	<h1>
		<i class="fa-brands fa-stack-exchange" style="color : green; font-size : 2.3em;  float: left;  margin-left: 40px; margin-top: 11px;" ></i>
		<a id ="home" href = "main.jsp">stack underflow</a>
		<a id = "community" href = "community.jsp">커뮤니티</a>
		<a id = "rank" href = "rankboard.jsp">랭킹</a>
		<div class="mypage-logout-btn">
			<a id = "mypage" href="mypage.jsp"><i class="fa-solid fa-user" ></i>마이페이지</a>
			<a id = "logout" href=""><i class="fa-solid fa-right-from-bracket" style="margin-left : 4px"></i>로그아웃</a>
		</div> 
	</h1>
</div>
 
<div id="content-wrapper">
	<div id="content-upper">
	사진 랭크
	<!-- Jack Snider 시작 -->
		
		
		
	<!-- Jack Snider 끝 -->
	</div>
	<!--  
	<div id="content-left">
		<div id="content-left-category">
			<ul>
				<li>회원 정보</li>			
				<li>활동 목록</li>			
			</ul> 
		</div>
	</div>
	-->
	<div id="content-bottom">
	<label for="mem_nm">이름</label><br>
	<input type="text" id="mem_nm" name="mem_nm" readonly><br>
	<label for="mem_nknm">닉네임</label><br>
	<input type="text" id="mem_nknm" name="mem_nknm" readonly><br>
	<label for="mem_email">이메일</label><br>
	<input type="text" id="mem_email" name="mem_email" readonly><br>
	<label for="mem_addr1">주소</label><br> 
	<input type="text" id="mem_addr1" name="mem_addr1" readonly><br>
	<label for="mem_addr2">상세주소</label><br> 
	<input type="text" id="mem_addr2" name="mem_addr2" readonly>
	</div>
</div>

</body>
</html>