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
	</style>

</head>
<body>
<!-- ////////////////////////////////////////////////////////////////////////////////////////
                               START SECTION 1 - THE NAVBAR SECTION  
/////////////////////////////////////////////////////////////////////////////////////////////-->
<<!-- 메뉴 시작 -->
<nav class="navbar navbar-expand-lg navbar-dark menu shadow fixed-top">
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
          <a href="../jsp/logout.jsp">Logout</a>
          <span>
          </span>
        </button>
      </div>
    </div>
</nav>
<!-- 메뉴 끝 -->

<!-- /////////////////////////////////////////////////////////////////////////////////////////////////
                            START SECTION 2 - THE INTRO SECTION  
/////////////////////////////////////////////////////////////////////////////////////////////////////-->

<section id="home" class="intro-section">
  <div class="container">
    <div class="row align-items-center text-white">
      <!-- START THE CONTENT FOR THE INTRO  -->
      <div class="col-md-6 intros text-start">
        <h1 class="display-2">
          <span class="display-2--intro">Stack-underflow에 오신것을 환영합니다.</span>
          <span class="display-2--description lh-base">
            this is a multi-purpose responsive layout created with bootstrap v5. 
            (here your can place your description text)
          </span>
        </h1>
        <!-- <button type="button" class="rounded-pill btn-rounded">Get in Touch
          <span><i class="fas fa-arrow-right"></i></span>
        </button> -->
      </div>
      <!-- START THE CONTENT FOR THE VIDEO -->
      <div class="col-md-6 intros text-end">
        <div class="video-box">
          <img src="images/arts/intro-section-illustration.png" alt="video illutration" class="img-fluid">
          <a href="#" class="glightbox position-absolute top-50 start-50 translate-middle">
            <span>
              <i class="fas fa-play-circle"></i>
            </span>
            <span class="border-animation border-animation--border-1"></span>
            <span class="border-animation border-animation--border-2"></span>
          </a>
        </div>
      </div>
    </div>
  </div>
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#ffffff" fill-opacity="1" d="M0,160L48,176C96,192,192,224,288,208C384,192,480,128,576,133.3C672,139,768,213,864,202.7C960,192,1056,96,1152,74.7C1248,53,1344,107,1392,133.3L1440,160L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path></svg>
</section>

<!-- //////////////////////////////////////////////////////////////////////////////////////////////
                             START SECTION 3 - THE CAMPANIES SECTION  
////////////////////////////////////////////////////////////////////////////////////////////////////-->
<!-- 
  <section id="campanies" class="campanies">
    <div class="container">
      <div class="row text-center">
        <h4 class="fw-bold lead mb-3">Trusted by campanies like</h4>
        <div class="heading-line mb-5"></div>
      </div>
    </div>
    START THE CAMPANIES CONTENT 
    <div class="container">
      <div class="row">
        <div class="col-md-4 col-lg-2">
          <div class="campanies__logo-box shadow-sm">
            <img src="images/campanies/campany-1.png" alt="Campany 1 logo" title="Campany 1 Logo" class="img-fluid">
          </div>
        </div>
        <div class="col-md-4 col-lg-2">
          <div class="campanies__logo-box shadow-sm">
            <img src="images/campanies/campany-2.png" alt="Campany 2 logo" title="Campany 2 Logo" class="img-fluid">
          </div>
        </div>
        <div class="col-md-4 col-lg-2">
          <div class="campanies__logo-box shadow-sm">
            <img src="images/campanies/campany-3.png" alt="Campany 3 logo" title="Campany 3 Logo" class="img-fluid">
          </div>
        </div>
        <div class="col-md-4 col-lg-2">
          <div class="campanies__logo-box shadow-sm">
            <img src="images/campanies/campany-4.png" alt="Campany 4 logo" title="Campany 4 Logo" class="img-fluid">
          </div>
        </div>
        <div class="col-md-4 col-lg-2">
          <div class="campanies__logo-box shadow-sm">
            <img src="images/campanies/campany-5.png" alt="Campany 5 logo" title="Campany 5 Logo" class="img-fluid">
          </div>
        </div>
        <div class="col-md-4 col-lg-2">
          <div class="campanies__logo-box shadow-sm">
            <img src="images/campanies/campany-6.png" alt="Campany 6 logo" title="Campany 6 Logo" class="img-fluid">
          </div>
        </div>
      </div>
    </div>
  </section>
 -->
<!-- //////////////////////////////////////////////////////////////////////////////////////////////
                         START SECTION 4 - THE SERVICES  
///////////////////////////////////////////////////////////////////////////////////////////////////-->
<section id="services" class="services">
  <div class="container">
    <div class="row text-center">
      <h1 class="display-3 fw-bold">오버플로우의 기능들</h1>
      <div class="heading-line mb-1"></div>
    </div>
  <!-- START THE DESCRIPTION CONTENT  -->
    <div class="row pt-2 pb-2 mt-0 mb-3">
      <div class="col-md-6 border-right">
        <div class="bg-white p-3">
          <h2 class="fw-bold text-capitalize text-center">
            Our Services Range From Initial Design To Deployment Anywhere Anytime
          </h2>
        </div>
      </div>
      <div class="col-md-6">
        <div class="bg-white p-4 text-start">
          <p class="fw-light">
            Lorem ipsum dolor sit amet consectetur architecto magni, 
            dicta maxime laborum temporibus dolorem esse doloremque illo quas nisi enim molestias. 
            Tempore ducimus molestiae in dolore enim.
          </p>
        </div>
      </div>
    </div>
  </div>

  <!-- START THE CONTENT FOR THE SERVICES  -->
  <div class="container">
    <!-- START THE MARKETING CONTENT  -->
    <div class="row">
      <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 services mt-4">
        <div class="services__content">
          <div class="icon d-block fas fa-paper-plane"></div>
          <h3 class="display-3--title mt-1">커뮤니티</h3>
          <p class="lh-lg">

           코드문제인가요? 여기서 해결하세요!
          </p>
          <button type="button" class="rounded-pill btn-rounded border-primary" onclick="location.href='./community.jsp'">바로가기
            <span><i class="fas fa-arrow-right"></i></span>
          </button>
        </div>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 services mt-4 text-end">
        <div class="services__pic">
          <img src="images/services/service-1.png" alt="marketing illustration" class="img-fluid">
        </div>
      </div>
    </div>
    <!-- START THE WEB DEVELOPMENT CONTENT  -->
    <div class="row">
      <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 services mt-4 text-start">
        <div class="services__pic">
          <img src="images/services/service-2.png" alt="web development illustration" class="img-fluid">
        </div>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 services mt-4">
        <div class="services__content">
          <div class="icon d-block fas fa-code"></div>
          <h3 class="display-3--title mt-1">랭킹보드</h3>
          <p class="lh-lg">
            누가 가장 이 분야의 전문가 일까요
          </p>
          <button type="button" class="rounded-pill btn-rounded border-primary" onclick="location.href='./rank.jsp'">바로가기
            <span><i class="fas fa-arrow-right"></i></span>
          </button>
        </div>
      </div>
    </div>
    <!-- START THE CLOUD HOSTING CONTENT  -->
    <div class="row">
      <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 services mt-4">
        <div class="services__content">
          <div class="icon d-block fas fa-cloud-upload-alt"></div>
          <h3 class="display-3--title mt-1">마이페이지</h3>
          <p class="lh-lg">
            나의 정보를 확인해보세요
          </p>
          <button type="button" class="rounded-pill btn-rounded border-primary" onclick="location.href='./mypage.jsp'" >바로가기
            <span><i class="fas fa-arrow-right"></i></span>
          </button>
        </div>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 services mt-4 text-end">
        <div class="services__pic">
          <img src="images/services/service-3.png" alt="cloud hosting illustration" class="img-fluid">
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ////////////////////////////////////////////////////////////////////////////////////////////////
                               START SECTION 5 - THE TESTIMONIALS  
/////////////////////////////////////////////////////////////////////////////////////////////////////-->
<section id="testimonials" class="testimonials">
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#fff" fill-opacity="1" d="M0,96L48,128C96,160,192,224,288,213.3C384,203,480,117,576,117.3C672,117,768,203,864,202.7C960,203,1056,117,1152,117.3C1248,117,1344,203,1392,245.3L1440,288L1440,0L1392,0C1344,0,1248,0,1152,0C1056,0,960,0,864,0C768,0,672,0,576,0C480,0,384,0,288,0C192,0,96,0,48,0L0,0Z"></path></svg>
  <div class="container">
    <div class="row text-center text-white">
      <h1 class="display-3 fw-bold">Stack-Underflow Team</h1>
      <hr style="width: 100px; height: 3px; " class="mx-auto">
    </div>

    <!-- START THE CAROUSEL CONTENT  -->
    <div class="row align-items-center">
      <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <!-- CAROUSEL ITEM 1 -->
          <div class="carousel-item active">
            <!-- testimonials card  -->
            <div class="testimonials__card">
              <p class="lh-lg">
                <i class="fas fa-quote-left"></i>
                말 길게하지마... 죽는 수 있어
                <i class="fas fa-quote-right"></i>
                <div class="ratings p-1">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                </div>
              </p>
            </div>
            <!-- client picture  -->
            <div class="testimonials__picture">
              <img src="images/testimonials/최현우.jpg" alt="client-1 picture" class="rounded-circle img-fluid">
            </div>
            <!-- client name & role  -->
            <div class="testimonials__name">
              <h3>최현우</h3>
              <p class="fw-light">PL</p>
            </div>
          </div>     
          <!-- CAROUSEL ITEM 2 -->
          <div class="carousel-item">
            <!-- testimonials card  -->
            <div class="testimonials__card">
              <p class="lh-lg">
                <i class="fas fa-quote-left"></i>
                여기로 오면 이제 당신도 스티브 잡스,빌게이츠
                <i class="fas fa-quote-right"></i>
                <div class="ratings p-1">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                </div>
              </p>
            </div>
            <!-- client picture  -->
            <div class="testimonials__picture">
              <img src="images/testimonials/profile2.jpg" alt="client-2 picture" class="rounded-circle img-fluid">
            </div>
            <!-- client name & role  -->
            <div class="testimonials__name">
              <h3>강명범</h3>
              <p class="fw-light">DA</p>
            </div>
          </div>     
          <!-- CAROUSEL ITEM 3 -->
          <div class="carousel-item">
            <!-- testimonials card  -->
            <div class="testimonials__card">
              <p class="lh-lg">
                <i class="fas fa-quote-left"></i>
                야 너두 할 수 있어 고급개발자! 
                <i class="fas fa-quote-right"></i>
                <div class="ratings p-1">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                </div>
              </p>
            </div>
            <!-- client picture  -->
            <div class="testimonials__picture">
              <img src="images/testimonials/profile3.jpg" alt="client-3 picture" class="rounded-circle img-fluid">
            </div>
            <!-- client name & role  -->
            <div class="testimonials__name">
              <h3>김호겸</h3>
              <p class="fw-light">AA</p>
            </div>
          </div>     
          <!-- CAROUSEL ITEM 4 -->
          <div class="carousel-item">
            <!-- testimonials card  -->
            <div class="testimonials__card">
              <p class="lh-lg">
                <i class="fas fa-quote-left"></i>
               지식IN? 구글? No No 스택언더플로우~!!
                <i class="fas fa-quote-right"></i>
                <div class="ratings p-1">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                </div>
              </p>
            </div>
            <!-- client picture  -->
            <div class="testimonials__picture">
              <img src="images/testimonials/profile4.jpg" alt="client-4 picture" class="rounded-circle img-fluid">
            </div>
            <!-- client name & role  -->
            <div class="testimonials__name">
              <h3>장혜연</h3>
              <p class="fw-light">UA</p>
            </div>
          </div>     
        </div>
        <div class="text-center">
          <button class="btn btn-outline-light fas fa-long-arrow-alt-left" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
        </button>
        <button class="btn btn-outline-light fas fa-long-arrow-alt-right" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
        </button>
        </div>
      </div>
    </div>
  </div>
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#fff" fill-opacity="1" d="M0,96L48,128C96,160,192,224,288,213.3C384,203,480,117,576,117.3C672,117,768,203,864,202.7C960,203,1056,117,1152,117.3C1248,117,1344,203,1392,245.3L1440,288L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path></svg>
</section>

<!-- /////////////////////////////////////////////////////////////////////////////////////////////////
                       START SECTION 6 - THE FAQ 
//////////////////////////////////////////////////////////////////////////////////////////////////////-->
<!-- <section id="faq" class="faq">
  <div class="container">
    <div class="row text-center">
      <h1 class="display-3 fw-bold text-uppercase">faq</h1>
      <div class="heading-line"></div>
      <p class="lead">frequently asked questions, get knowledge befere hand</p>
    </div>
    ACCORDION CONTENT 
    <div class="row mt-5">
      <div class="col-md-12">
        <div class="accordion" id="accordionExample">
          ACCORDION ITEM 1
          <div class="accordion-item shadow mb-3">
            <h2 class="accordion-header" id="headingOne">
              <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                What are the main features?
              </button>
            </h2>
            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
              <div class="accordion-body">
                <strong>This is the first item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
              </div>
            </div>
          </div>
             ACCORDION ITEM 2
          <div class="accordion-item shadow mb-3">
            <h2 class="accordion-header" id="headingTwo">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                do i have to pay again after trial
              </button>
            </h2>
            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
              <div class="accordion-body">
                <strong>This is the second item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
              </div>
            </div>
          </div>
             ACCORDION ITEM 3
          <div class="accordion-item shadow mb-3">
            <h2 class="accordion-header" id="headingThree">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
            How can I get started after trial?
              </button>
            </h2>
            <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
              <div class="accordion-body">
                <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
              </div>
            </div>
          </div>
             ACCORDION ITEM 4
          <div class="accordion-item shadow mb-3">
            <h2 class="accordion-header" id="headingFour">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                Can I be refunded if am not satisfied?
              </button>
            </h2>
            <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
              <div class="accordion-body">
                <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section> -->

<!-- ///////////////////////////////////////////////////////////////////////////////////////////////////
                              START SECTION 7 - THE PORTFOLIO  
//////////////////////////////////////////////////////////////////////////////////////////////////////-->
<!-- 
<section id="portfolio" class="portfolio">
  <div class="container">
    <div class="row text-center mt-5">
      <h1 class="display-3 fw-bold text-capitalize">Latest work</h1>
      <div class="heading-line"></div>
      <p class="lead">
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint porro temporibus distinctio.
      </p>
    </div>
    FILTER BUTTONS 
    <div class="row mt-5 mb-4 g-3 text-center">
      <div class="col-md-12">
        <button class="btn btn-outline-primary" type="button">All</button>
        <button class="btn btn-outline-primary" type="button">websites</button>
        <button class="btn btn-outline-primary" type="button">design</button>
        <button class="btn btn-outline-primary" type="button">mockup</button>
      </div>
    </div>

    START THE PORTFOLIO ITEMS 
    <div class="row">
      <div class="col-lg-4 col-md-6">
        <div class="portfolio-box shadow">
          <img src="images/portfolio/portfolio-1.jpg" alt="portfolio 1 image" title="portfolio 1 picture" class="img-fluid">
          <div class="portfolio-info">
            <div class="caption">
              <h4>project name goes here 1</h4>
              <p>category project</p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="portfolio-box shadow">
          <img src="images/portfolio/portfolio-2.jpg" alt="portfolio 2 image" title="portfolio 2 picture" class="img-fluid">
          <div class="portfolio-info">
            <div class="caption">
              <h4>project name goes here 2</h4>
              <p>category project</p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="portfolio-box shadow">
          <img src="images/portfolio/portfolio-3.jpg" alt="portfolio 3 image" title="portfolio 3 picture" class="img-fluid">
          <div class="portfolio-info">
            <div class="caption">
              <h4>project name goes here 3</h4>
              <p>category project</p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="portfolio-box shadow">
          <img src="images/portfolio/portfolio-4.jpg" alt="portfolio 4 image" title="portfolio 4 picture" class="img-fluid">
          <div class="portfolio-info">
            <div class="caption">
              <h4>project name goes here 4</h4>
              <p>category project</p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="portfolio-box shadow">
          <img src="images/portfolio/portfolio-5.jpg" alt="portfolio 5 image" title="portfolio 5 picture" class="img-fluid">
          <div class="portfolio-info">
            <div class="caption">
              <h4>project name goes here 5</h4>
              <p>category project</p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="portfolio-box shadow">
          <img src="images/portfolio/portfolio-6.jpg" alt="portfolio 6 image" title="portfolio 6 picture" class="img-fluid">
          <div class="portfolio-info">
            <div class="caption">
              <h4>project name goes here 6</h4>
              <p>category project</p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="portfolio-box shadow">
          <img src="images/portfolio/portfolio-7.jpg" alt="portfolio 7 image" title="portfolio 7 picture" class="img-fluid">
          <div class="portfolio-info">
            <div class="caption">
              <h4>project name goes here 7</h4>
              <p>category project</p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="portfolio-box shadow">
          <img src="images/portfolio/portfolio-8.jpg" alt="portfolio 8 image" title="portfolio 8 picture" class="img-fluid">
          <div class="portfolio-info">
            <div class="caption">
              <h4>project name goes here 8</h4>
              <p>category project</p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="portfolio-box shadow">
          <img src="images/portfolio/portfolio-9.jpg" alt="portfolio 9 image" title="portfolio 9 picture" class="img-fluid">
          <div class="portfolio-info">
            <div class="caption">
              <h4>project name goes here 9</h4>
              <p>category project</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
 -->
<!-- /////////////////////////////////////////////////////////////////////////////////////////////////////////
              START SECTION 8 - GET STARTED  
/////////////////////////////////////////////////////////////////////////////////////////////////////////-->
<!-- <section id="contact" class="get-started">
  <div class="container">
    <div class="row text-center">
      <h1 class="display-3 fw-bold text-capitalize">Get started</h1>
      <div class="heading-line"></div>
      <p class="lh-lg">
        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Libero illum architecto modi.
      </p>
    </div>

    START THE CTA CONTENT 
    <div class="row text-white">
      <div class="col-12 col-lg-6 gradient shadow p-3">
        <div class="cta-info w-100">
          <h4 class="display-4 fw-bold">100% Satisfaction Guaranteed</h4>
          <p class="lh-lg">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Aperiam alias optio minima, tempore architecto sint ipsam dolore tempora facere laboriosam corrupti!
          </p>
          <h3 class="display-3--brief">What will be the next step?</h3>
          <ul class="cta-info__list">
            <li>We'll prepare the proposal.</li>
            <li>we'll discuss it together.</li>
            <li>let's start the discussion.</li>
          </ul>
        </div>
      </div>
      <div class="col-12 col-lg-6 bg-white shadow p-3">
        <div class="form w-100 pb-2">
          <h4 class="display-3--title mb-5">start your project</h4>
          <form action="#" class="row">
            <div class="col-lg-6 col-md mb-3">
              <input type="text" placeholder="First Name" id="inputFirstName" class="shadow form-control form-control-lg">
            </div>
            <div class="col-lg-6 col-md mb-3">
              <input type="text" placeholder="Last Name" id="inputLastName" class="shadow form-control form-control-lg">
            </div>
            <div class="col-lg-12 mb-3">
              <input type="email" placeholder="email address" id="inputEmail" class="shadow form-control form-control-lg">
            </div>
            <div class="col-lg-12 mb-3">
              <textarea name="message" placeholder="message" id="message" rows="8" class="shadow form-control form-control-lg"></textarea>
            </div>
            <div class="text-center d-grid mt-1">
              <button type="button" class="btn btn-primary rounded-pill pt-3 pb-3">
                submit
                <i class="fas fa-paper-plane"></i>
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
 -->
<!-- ///////////////////////////////////////////////////////////////////////////////////////////
                           START SECTION 9 - THE FOOTER  
///////////////////////////////////////////////////////////////////////////////////////////////-->
<footer class="footer">
  <div class="container">
    <div class="row">
      <!-- CONTENT FOR THE MOBILE NUMBER  -->
      <div class="col-md-4 col-lg-4 contact-box pt-1 d-md-block d-lg-flex d-flex">
        <div class="contact-box__icon">
          <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-phone-call" viewBox="0 0 24 24" stroke-width="1" fill="none" stroke-linecap="round" stroke-linejoin="round">
            <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
            <path d="M5 4h4l2 5l-2.5 1.5a11 11 0 0 0 5 5l1.5 -2.5l5 2v4a2 2 0 0 1 -2 2a16 16 0 0 1 -15 -15a2 2 0 0 1 2 -2" />
            <path d="M15 7a2 2 0 0 1 2 2" />
            <path d="M15 3a6 6 0 0 1 6 6" />
          </svg>
        </div>
        <div class="contact-box__info">
          <a href="#" class="contact-box__info--title">+1 728365413</a>
          <p class="contact-box__info--subtitle">  Mon-Fri 9am-6pm</p>
        </div>
      </div>  
      <!-- CONTENT FOR EMAIL  -->
      <div class="col-md-4 col-lg-4 contact-box pt-1 d-md-block d-lg-flex d-flex">
        <div class="contact-box__icon">
          <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-mail-opened" viewBox="0 0 24 24" stroke-width="1" fill="none" stroke-linecap="round" stroke-linejoin="round">
            <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
            <polyline points="3 9 12 15 21 9 12 3 3 9" />
            <path d="M21 9v10a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-10" />
            <line x1="3" y1="19" x2="9" y2="13" />
            <line x1="15" y1="13" x2="21" y2="19" />
          </svg>
        </div>
        <div class="contact-box__info">
          <a href="#" class="contact-box__info--title">info@company.com</a>
          <p class="contact-box__info--subtitle">Online support</p>
        </div>
      </div>
      <!-- CONTENT FOR LOCATION  -->
      <div class="col-md-4 col-lg-4 contact-box pt-1 d-md-block d-lg-flex d-flex">
        <div class="contact-box__icon">
          <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-map-2" viewBox="0 0 24 24" stroke-width="1" fill="none" stroke-linecap="round" stroke-linejoin="round">
            <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
            <line x1="18" y1="6" x2="18" y2="6.01" />
            <path d="M18 13l-3.5 -5a4 4 0 1 1 7 0l-3.5 5" />
            <polyline points="10.5 4.75 9 4 3 7 3 20 9 17 15 20 21 17 21 15" />
            <line x1="9" y1="4" x2="9" y2="17" />
            <line x1="15" y1="15" x2="15" y2="20" />
          </svg>
        </div>
        <div class="contact-box__info">
          <a href="#" class="contact-box__info--title">New York, USA</a>
          <p class="contact-box__info--subtitle">NY 10012, US</p>
        </div>
      </div>
    </div>
  </div>

  <!-- START THE SOCIAL MEDIA CONTENT  -->
  <div class="footer-sm" style="background-color: #212121;">
    <div class="container">
      <div class="row py-4 text-center text-white">
        <div class="col-lg-5 col-md-6 mb-4 mb-md-0">
          connect with us on social media
        </div>
        <div class="col-lg-7 col-md-6">
          <a href="#"><i class="fab fa-facebook"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-github"></i></a>
          <a href="#"><i class="fab fa-linkedin"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
        </div>
      </div>
    </div>
  </div>

  <!-- START THE CONTENT FOR THE CAMPANY INFO -->
  <div class="container mt-5">
    <div class="row text-white justify-content-center mt-3 pb-3">
      <div class="col-12 col-sm-6 col-lg-6 mx-auto">
        <h5 class="text-capitalize fw-bold">Campany name</h5>
        <hr class="bg-white d-inline-block mb-4" style="width: 60px; height: 2px;">
        <p class="lh-lg">
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorem ex obcaecati blanditiis reprehenderit ab mollitia voluptatem consectetur?
        </p>
      </div>
      <div class="col-12 col-sm-6 col-lg-2 mb-4 mx-auto">
        <h5 class="text-capitalize fw-bold">Products</h5>
        <hr class="bg-white d-inline-block mb-4" style="width: 60px; height: 2px;">
        <ul class="list-inline campany-list">
          <li><a href="#">Lorem ipsum</a></li>
          <li><a href="#">Lorem ipsum</a></li>
          <li><a href="#">Lorem ipsum</a></li>
          <li><a href="#">Lorem ipsum</a></li>
        </ul>
      </div>
      <div class="col-12 col-sm-6 col-lg-2 mb-4 mx-auto">
        <h5 class="text-capitalize fw-bold">useful links</h5>
        <hr class="bg-white d-inline-block mb-4" style="width: 60px; height: 2px;">
        <ul class="list-inline campany-list">
          <li><a href="#"> Your Account</a></li>
          <li><a href="#">Become an Affiliate</a></li>
          <li><a href="#">create an account</a></li>
          <li><a href="#">Help</a></li>
        </ul>
      </div>
      <div class="col-12 col-sm-6 col-lg-2 mb-4 mx-auto">
        <h5 class="text-capitalize fw-bold">contact</h5>
        <hr class="bg-white d-inline-block mb-4" style="width: 60px; height: 2px;">
        <ul class="list-inline campany-list">
          <li><a href="#">Lorem ipsum</a></li>
          <li><a href="#">Lorem ipsum</a></li>
          <li><a href="#">Lorem ipsum</a></li>
          <li><a href="#">Lorem ipsum</a></li>
        </ul>
      </div>
    </div>
  </div>

  <!-- START THE COPYRIGHT INFO  -->
  <div class="footer-bottom pt-5 pb-5">
    <div class="container">
      <div class="row text-center text-white">
        <div class="col-12">
          <div class="footer-bottom__copyright">
            &COPY; Copyright 2021 <a href="#">Company</a> | Created by <a href="http://codewithpatrick.com" target="_blank">Muriungi</a><br><br>

            Distributed by <a href="http://themewagon.com" target="_blank">ThemeWagon</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>

<!-- BACK TO TOP BUTTON  -->
<a href="#" class="shadow btn-primary rounded-circle back-to-top">
  <i class="fas fa-chevron-up"></i>
</a>



   
    <script src="assets/vendors/js/glightbox.min.js"></script>

    <script type="text/javascript">
      const lightbox = GLightbox({
        'touchNavigation': true,
        'href': 'https://www.youtube.com/watch?v=J9lS14nM1xg',
        'type': 'video',
        'source': 'youtube', //vimeo, youtube or local
        'width': 900,
        'autoPlayVideos': 'true',
});
    
    </script>
     <script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>