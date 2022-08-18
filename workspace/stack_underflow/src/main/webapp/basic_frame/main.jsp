<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script class="cssdeck" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
  <script src="https://kit.fontawesome.com/6ef361a288.js" crossorigin="anonymous"></script>
<!-- 헤더 시작 -->
<script>
$(function(){
	 var shrinkHeader = 30;
	  $(window).scroll(function() {
	    var scroll = getCurrentScroll();
	      if ( scroll >= shrinkHeader ) {
	           $('.header').addClass('shrink');
	        }
	        else {
	            $('.header').removeClass('shrink');
	        }
	  });
	function getCurrentScroll() {
	    return window.pageYOffset || document.documentElement.scrollTop;
	    }
	});

</script>
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
    background: #fffaf0;
    color:#949392;
    z-index: 1000;
    height: 100px;
    overflow: hidden;
    -webkit-transition: height 0.3s;
    -moz-transition: height 0.3s;
    transition: height 0.3s;
    text-align:center;
    line-height:55px;

}
.header.shrink {
    height: 66px;
    line-height: 37px;
}
.header h1
{
    font-size:30px;
    font-weight:normal;
    -webkit-transition: all 0.3s;
    -moz-transition: all 0.3s;
    transition: all 0.3s;
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

.header.shrink h1.fa-solid fa-user{
  /*   margin-left: 1337px; */
}
.header.shrink h1.fa-right-from-bracket{
    margin-left: 4px;
}

/* 헤더 끝 */

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
</style>
</head>
<body>

<div class="header">
  <h1>
  <i class="fa-brands fa-stack-exchange" style="color : green; font-size : 1.7em; margin-bottom : 3px; float: left;  margin-left: 40px;" ></i>
  <a class="home" href="#">stack underflow</a>
  <a id = "community" href="community.jsp">커뮤니티</a>
  <a id = "rank" href="">랭킹</a>
  
	  <div class="mypage-login-btn">
		  <a id = "mypage" href=""><i class="fa-solid fa-user" ></i>마이페이지</a>
		  <a id = "logout" href=""><i class="fa-solid fa-right-from-bracket" style="margin-left : 4px"></i>로그아웃</a>
	  </div>
  </h1>
  
</div>
<div class="content">
</div>

<footer>
<p>404</p>
</footer>



</body>
</html>