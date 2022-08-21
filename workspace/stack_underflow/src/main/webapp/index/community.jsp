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
    <script src="https://cdn.jsdelivr.net/gh/mcstudios/glightbox/dist/js/glightbox.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>

</head>
<body>
<!-- ////////////////////////////////////////////////////////////////////////////////////////
                               메뉴 
/////////////////////////////////////////////////////////////////////////////////////////////-->
<nav class="navbar navbar-expand-lg navbar-dark menu shadow fixed-top">
    <div class="container">
      <a class="navbar-brand" href="../index/index.jsp">
        <img src="images/logo.png" alt="logo image">
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
        <ul class="navbar-nav" style="margin-right: 430px;">
          <li class="nav-item"><a class="nav-link active" aria-current="page" href="index.html">Stack-underflow란? ?</a></li>
          <!-- Jack Snider 시작 -->
          <!-- 
          <li class="nav-item"><a class="nav-link" href="../communityList/index.html">커뮤니티</a></li>
           -->
          <li class="nav-item"><a class="nav-link" href="community.jsp">커뮤니티</a></li>

          <!-- Jack Snider 끝 -->

          <!-- Jack Snider 끝 --><%-- <%=request.getContextPath()%>/postList.do?currentPage=1 --%>

          <li class="nav-item"><a class="nav-link" href="#testimonials">랭킹보드</a></li>
          <li class="nav-item"><a class="nav-link" href="#faq">마이페이지</a></li>
          
        </ul>
        <button type="button" class="rounded-pill btn-rounded">
          Logout
          <span>
           
          </span>
        </button>
      </div>
    </div>
  </nav>
  <!-- 메뉴끝 -->
  
  <iframe src="<%=request.getContextPath()%>/postList.do?currentPage=1" style="width: 2000px; height: 1000px; "></iframe>
</body>
</html>