<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Stick+No+Bills:wght@700&display=swap" rel="stylesheet">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Stack Underflow Page</title>
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/glightbox/dist/css/glightbox.min.css" />
    <script src="https://cdn.jsdelivr.net/gh/mcstudios/glightbox/dist/js/glightbox.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ded2fba49a.js" crossorigin="anonymous"></script>
</head>
<body>
<!-- 메뉴 시작 -->
<nav class="navbar navbar-expand-lg navbar-dark menu shadow fixed-top">
    <div class="container">
      <div>
      <a class ="common" href="../index/index.jsp"><i class="fa-brands fa-stack-exchange"></i>
      Stack Underflow</a>
      </div>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
        <ul class="navbar-nav" style="margin-right: 430px;">
          <li class="nav-item"><a class="nav-link active" aria-current="page" href="index.html">Stack-underflow란? ?</a></li>
          <li class="nav-item"><a class="nav-link" href="../communityList/index.html">커뮤니티</a></li>
          <li class="nav-item"><a class="nav-link" href="#testimonials">랭킹보드</a></li>
          <li class="nav-item"><a class="nav-link" href="mypage.jsp">마이페이지</a></li>
          </li>
        </ul>
        <button type="button" class="rounded-pill btn-rounded">
          Logout
          <span>
           
          </span>
        </button>
      </div>
    </div>
  </nav>
<!-- 메뉴 끝 -->
  
    <iframe src="../mypageIframe/mypage.jsp" style="width: 1903px; height: 1000px; margin-top: 4%;"></iframe>
</body>
</html>