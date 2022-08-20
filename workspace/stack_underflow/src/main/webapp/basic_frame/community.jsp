<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>  -->
<!-- <link rel="stylesheet" type="text/css" href="../css/main.css"> -->
<link rel="stylesheet" type="text/css" href="../css/btn.css">
<script class="cssdeck" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
  <script src="https://kit.fontawesome.com/6ef361a288.js" crossorigin="anonymous"></script>
  
  
  
<style>

div.mypage-login-btn{
	display: inline;
    position: relative;
    left: 61%;
	
}




p{
	margin: 0;
}
body{
	margin:0; 
}

.header {
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

.header h1
{
    font-size : 18px;
    font-weight:normal;
    line-height: 48px;

}

.header.shrink h1
{
    font-size:24px;
    -webkit-transition: all 0.3s;
    -moz-transition: all 0.3s;
    transition: all 0.3s;
}

a {
  text-decoration: none;
  float: left;
  margin-left: 10px;
    color: black;
}

a:hover{
  color : green;

}

a::after{ 
   display:block;/*a요소를 블록 요소라고 선언*/
   content: '';
   border-bottom: solid 2px green; /* 및줄 색  */
   transform: scaleX(0);/*크기를 0으로 줌으로써 평상시엔 밑줄 없음*/
   transition: transform 250ms ease-in-out;
   } 
   
 a:hover:after {
   transform: scaleX(1);/*a 속성에 hover시 기존 크기로*/
}  

#community{
 margin-left:28px;
 font-size : 18px;
 
}
#rank{
 margin-left:28px;
 font-size : 18px;

}
#mypage{
    margin-left: 28px;
    font-size: 18px;
   
}
#logout{
    margin-left: 28px;
    font-size: 18px;
    
}

.home{
     
   font-size: 25px;
}
.header.shrink h1.fa-right-from-bracket{
    margin-left: 4px;
}

.content
{
height:2000px;
background : green;
 /*just to get the page to scroll*/
}



/* 풋터 */
footer{
width : 100%;
height : 100px;
background : #adadad;


}

#container-div{
 background : pink;
 width : 100%;

}

#content-container{

  width : 100%;
  display : flex;
  min-height : 900px;
  backgroung : pink;
  

}

#content-left{
   flex : 1;

 border-right: 2px solid lightgray;
}

#content-center{
   flex : 4;

}

#content-right {
    
    
    flex: 1;
}

#content-left-category{

    width: 16.5%;
    position: fixed;
    margin-top: 66px;
    height: 300px;
	    
    
}    



</style>
<script>

$(document).ready(function(){
	$('.menu').each(function(index){
		$(this).attr('menu-index', index);
	}).click(function(){
		var index = $(this).attr('menu-index');
		$('.menu[menu-index=' + index + ']').addClass('clicked_menu');
		$('.menu[menu-index!=' + index + ']').removeClass('clicked_menu');
	});


});
</script>

</head>
<body>
<div class="header">
  <h1>
  <i class="fa-brands fa-stack-exchange" style="color : green; font-size : 2.3em;  float: left;  margin-left: 40px; margin-top: 11px;" ></i>
<a class="home" href="main.jsp">stack underflow</a>
  <a id = "community" href="community.jsp">커뮤니티</a>
  <a id = "rank" href="">랭킹</a>
  
	  <div class="mypage-login-btn">
		  <a id = "mypage" href=""><i class="fa-solid fa-user" ></i>마이페이지</a>
		  <a href="../jsp/logout.jsp" id = "logout" href=""><i class="fa-solid fa-right-from-bracket" style="margin-left : 4px"></i>로그아웃</a>
	  </div>
	  
   </h1>
  </div>

<div id="content-container">
   <div id="content-left">
   <div id="content-left-category">
	<div class="menu">기술 게시판</div>
	<div class="menu">자유 게시판</div>
	<div class="menu">문의 게시판</div>	
   </div>	

   </div>

   <div id="content-center">

   
   </div>
   <div id="content-right"></div>
</div>


<footer>
<p>404</p>
</footer>


</body>
</html>