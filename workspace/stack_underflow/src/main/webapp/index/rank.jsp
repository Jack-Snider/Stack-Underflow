<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Patrix, Bootstrap 5 Landing Page</title>
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/glightbox/dist/css/glightbox.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Stick+No+Bills:wght@700&display=swap">
	<script src="https://cdn.jsdelivr.net/gh/mcstudios/glightbox/dist/js/glightbox.min.js"></script>
	<script src="https://kit.fontawesome.com/ded2fba49a.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
	<style>
	.common {
 	 	font-family: 'Stick No Bills', sans-serif;
  		font-size: 1.3em;
  		color: white;
	}
	
	.aa{
	 background: linear-gradient(to right, rgb(69 255 238 / 95%), rgba(209, 34, 227, 0.95));
	
	}
	
	</style>
</head>
<body>
<!-- 메뉴 시작 -->
<nav class="navbar navbar-expand-lg navbar-dark shadow fixed-top aa">
    <div class="container">
      <div>
      	<a class ="common" href="index.jsp"><i class="fa-brands fa-stack-exchange"></i>Stack Underflow</a>
      </div>
      <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
        <ul class="navbar-nav" style="margin-right: 430px;">
          <li class="nav-item"><a class="nav-link" href="community.jsp">커뮤니티</a></li>
          <li class="nav-item"><a class="nav-link" href="rank.jsp">랭킹보드</a></li>
          <li class="nav-item"><a class="nav-link" href="mypage.jsp">마이페이지</a></li>
        </ul>
        <button type="button" class="rounded-pill btn-rounded">
          <a href="../jsp/logout.jsp" style="text-decoration : none;">Logout</a>
          <span>
          </span>
        </button>
      </div>
    </div>
</nav>
<!-- 메뉴 끝 -->

<iframe src="../rank/rankingBoard.jsp" style="height: 2000px;
    margin-top: 4%;
    width: 100%;"></iframe>

</body>
</html>