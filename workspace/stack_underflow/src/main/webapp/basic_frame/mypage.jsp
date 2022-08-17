<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
   <script src="https://kit.fontawesome.com/6ef361a288.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="../css/main.css">
  
  <style>
  .col-sm-9{
    display : flex;
    flex-direction : column;
    padding: 0;
    
  }
  
  #profil{
  
     flex : 2;
     border : 2px solid gray;
  }
  
  #profil-main{
    flex : 5;
    border : 2px solid gray;
  }
  
  #box{
   width : 100%;
   height : 100%;
   display : flex;
  }
  
  #mypage-category{
   flex : 1;
   border : 2px solid gray;
  
  }
  
  #mypage-main{
   flex : 4;
    border : 2px solid gray;
  }
  
  img{
  
 max-width: 100%;
  max-height: 100%;
  display : flex;
  /* margin : 20px; */
  border-radius : 30%;  
  height: auto;
  display: block;
  } 
  
/*   #profil-image{
  
    width: 200px;
    height: 200px;
    /* border: 2px solid gray; */
    display : flex;
    border-radius: 30%;
    background: whitesmoke;
    margin-top: 65px;
    margin-left: 38px;
  } */
  </style>
  
  
</head>
<body>



<!-- nav -->
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
     
      <a class="navbar-brand" href="main_frame.jsp">
       <i class="fa-brands fa-stack-exchange" style="color : green; font-size : 2em; margin-bottom : 3px"></i>stack underflow</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
      <!--    <li class="active"><a href="#">Home</a></li>
          <li class="dropdown">

        <a class="dropdown-toggle" data-toggle="dropdown" href="#">page1<span class="caret"></span></a>

        </li> -->
        <li><a href="#">커뮤니티</a></li>
        <li><a href="#">랭킹</a></li>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> 마이페이지</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> 로그아웃</a></li>
      </ul>
    </div>  
    </div>
</nav>





<div class="container-fluid">

  <div class="row">
   <!-- 왼쪽 div  -->
    <div class="col-sm-2" style="background-color:white; ">
       <div id="category"  >
       <i class="fa-solid fa-avocado"></i>
<!--         <ul id="categoryul">
          <li><a href="">기술 게시판</a></li>
          <li><a href="">자유 게시판</a></li>
          <li><a href="">문의 게시판</a></li> 
        </ul> -->
       </div>   
    
    </div>
    
    
    <div class="col-sm-10" style="background-color:lavenderblush;">   
          <div class="row" style=" overflow : auto">
          
	          <!-- 중간 div -->
	          <div class="col-sm-9" style="background-color:white;">
                  <div id="profil">
                     <!-- 프로필 사진  -->
                    
                        <img src="../images/기본프로필2.png">                 
                         
                  </div>
                  <div id="profil-main">
                     <div id="box">
                       <div id="mypage-category"></div>
                       <div id="mypage-main"></div>
                     </div>
                  </div>
	          </div>
	          
	          
	          
	          
	          
	          <!-- 오른쪽 -->
	          <div class="col-sm-3" style="background-color:white;">.col-sm-3</div>
          </div>
    </div>
    
    <!-- <div class="col-sm-3" style="background-color:lavender;">.col-sm-3</div> -->
  </div>
</div>

<!--  footer  -->
   <footer class="container-fluid text-center">
  <p>Footer Text</p>
  </footer>
  
  
  
</body>
</html>