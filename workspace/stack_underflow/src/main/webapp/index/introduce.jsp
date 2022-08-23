<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Stick+No+Bills:wght@700&display=swap"
	rel="stylesheet">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Stack Underflow Page</title>
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/glightbox/dist/css/glightbox.min.css" />

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Stick+No+Bills:wght@700&display=swap">
<script
	src="https://cdn.jsdelivr.net/gh/mcstudios/glightbox/dist/js/glightbox.min.js"></script>
<script src="https://kit.fontawesome.com/ded2fba49a.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>

<title>Insert title here</title>
<script>
	$(function() {
		$('#logout').on('click', function() {
			alert("로그아웃 되었습니다.");
		});
	});
</script>

<style>
.common {
	font-family: 'Stick No Bills', sans-serif;
	font-size: 1.3em;
	color: white;
}

/* 로고 위아래 움직임  */
.box {
	width: 100px;
	animation: up-down 1.4s infinite ease-in-out alternate;
}

@
keyframes up-down {from { transform:translatey(0px);
	
}

to {
	transform: translatey(-20px);
}

}
.aa {
	background: linear-gradient(to right, rgb(69 255 238/ 95%),
		rgba(209, 34, 227, 0.95));
	padding: 10rem 0 0 0;
	width: 100%;
}

.hy {
	background: linear-gradient(to right, rgb(69 255 238/ 95%),
		rgba(209, 34, 227, 0.95));
}

.bb {
	background: linear-gradient(to right, rgb(69 255 238/ 95%),
		rgba(209, 34, 227, 0.95));
}

/* 글자 롤링  */
.roller {
	height: 5.3rem;
	line-height: 6rem;
	position: relative;
	overflow: hidden;
	width: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	color: #1D3557;
}

#spare-time {
	font-size: 1rem;
	font-style: italic;
	letter-spacing: 1rem;
	margin-top: 0;
	color: #A8DADC;
}

.roller #rolltext {
	position: absolute;
	top: 0px;
	animation: slide 20s infinite;
	font-weight: 900;
	color: navajowhite;
	font-size: 1.5em;
}

@
keyframes slide { 0%{
	top: 0rem;
}

10






%
{
top






:






-7




.1rem




;
}
20






%
{
top






:






-13




.2rem




;
}
30






%
{
top






:






-19




.2rem




;
}
40






%
{
top






:






-25




.2rem




;
}
50






%
{
top






:






-31




.3rem




;
}
60






%
{
top






:






-37rem




;
}
70






%
{
top






:






-43




.2rem




;
}
80






%
{
top






:






-49




.1rem




;
}
90






%
{
top






:






-55




.1rem




;
}
}
@media screen and (max-width: 600px) {
	.rollh1 {
		text-align: center;
		text-transform: uppercase;
		color: #F1FAEE;
		font-size: 2.125rem;
	}
	.roller {
		height: 3.6rem;
		line-height: 2.125rem;
	}
	#spare-time {
		font-size: 1rem;
		letter-spacing: 0.1rem;
	}
	.roller #rolltext {
		animation: slide-mob 5s infinite;
	}
	@
	keyframes slide-mob { 0%{
		top: 0rem;
	}
	10
	
	
	
	
	
	
	%
	{
	top
	
	
	
	
	
	
	:
	
	
	
	
	
	
	-7
	
	
	
	
	.1rem
	
	
	
	
	;
}

20






%
{
top






:






-13




.1rem




;
}
30






%
{
top






:






-19




.1rem




;
}
40






%
{
top






:






-25




.1rem




;
}
50






%
{
top






:






-31




.1rem




;
}
60






%
{
top






:






-37




.1rem




;
}
70






%
{
top






:






-46




.1rem




;
}
80






%
{
top






:






-52




.1rem




;
}
90






%
{
top






:






-58




.1rem




;
}
}
}
.rollh1 {
	text-align: center;
	text-transform: uppercase;
	color: #F1FAEE;
	font-size: 4rem;
	font-weight: 600;
	width: 134%;
	margin-left: -165px;
}

#profile1 {
	width: 200px;
	height: 75%;
	margin-left: -400px;
	top: 1000px;
}

#profile2 {
	float: left;
	width: 200px;
	left: 1350px;
	top: 970px;
}

#profile3 {
	width: 200px;
	left: 552px;
	top: 1200px;
}

#profile4 {
	width: 200px;
	left: 1350px;
	top: 1400px;
}

h3, .h3 {
	font-size: calc(5.3rem + 0.6vw);
	text-align: center !important;
	margin-top: 150px;
	margin-top: -195px;
}

#profile1Comment1 {
	font-style: oblique;
}

#profile1state1 {
	width: 500px;
	font-style: oblique;
	font-weight: bold;
	font-size: 20px;
}

#profile1Comment2 {
	font-style: oblique;
}

#profile1state2 {
	width: 500px;
	font-style: oblique;
	font-weight: bold;
	font-size: 20px;
}

#profile1Comment3 {
	font-style: oblique;
}

#profile1state3 {
	width: 500px;
	font-style: oblique;
	font-weight: bold;
	font-size: 20px;
}

#profile1Comment4 {
	font-style: oblique;
}

#profile1state4 {
	width: 500px;
	font-style: oblique;
	font-weight: bold;
	font-size: 20px;
}

#comment1 {
	margin-left: 400px;
	width: 500px;
	    margin-top: 100px;
}

#comment2 {
	float: right;
	margin-right: 400px;
	width: 500px;
	margin-top: 100px;
}

#comment3 {
	float: left;
	margin-left: 400px;
	width: 500px;
	margin-top: 100px;
}

#comment4 {
	float: left;
	margin-left: 400px;
	width: 500px;
	margin-top: 100px;
}
</style>

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark shadow fixed-top hy">
		<div class="container">

			<div>
				<a class="common" href="index.jsp"><i
					class="fa-brands fa-stack-exchange"></i>Stack Underflow</a>
			</div>
			<div class="collapse navbar-collapse justify-content-end"
				id="navbarNav">
				<ul class="navbar-nav" style="margin-right: 430px;">
					<li class="nav-item"><a class="nav-link" href="introduce.jsp">Stack
							Underflow란?</a></li>
					<li class="nav-item"><a class="nav-link" href="community.jsp">커뮤니티</a></li>
					<li class="nav-item"><a class="nav-link" href="rank.jsp">랭킹보드</a></li>
					<li class="nav-item"><a class="nav-link" href="mypage.jsp">마이페이지</a></li>
				</ul>
				<button type="button" class="rounded-pill btn-rounded">
					<a href="../jsp/logout.jsp" style="text-decoration: none;"
						id="logout">Logout</a> <span> </span>
				</button>
			</div>
		</div>
	</nav>


	<section id="services" class="services">
		<div class="container">
			<div class="row text-center">
				<h1 class="display-3 fw-bold">Stack Underflow를 소개합니다.</h1>
			</div>
			<!-- START THE DESCRIPTION CONTENT  -->
			<div class="row pt-2 pb-2 mt-0 mb-3">
				<div class="col-md-6 border-right">
					<div class="bg-white p-3">
						<h2 class="fw-bold text-capitalize text-center">
							&nbsp;&nbsp;대덕인재 개발원 학우분들의 프로그램 개발에 있어 자유로운 토론 분위기 <br>조성을
							위해 개발 되었습니다.
						</h2>
					</div>
				</div>
				<div class="col-md-6">
					<div class="bg-white p-4 text-start">
						<p class="fw-light">
							학우분들이 좀더 자연스러운 분위기 속에서 공부 할 수 있도록 만들게 되었습니다.<br> 개발원에 다니면서
							하지 못했던 말들....<br> <br>자신의 개발지식이 부족하다고 느껴 차마 직접적으로 물어보지
							못했던 내용들 학우분들에게 자유롭게 물어보세요.
						</p>
					</div>
				</div>

				<h3>Constructor</h3>

				<div class="testimonials__picture" id="profile1">
						<img src="images/testimonials/profile1.jpg" alt="client-2 picture"
							class="rounded-circle img-fluid">
					</div>
					<div id="comment1">
						<h55 id="profile1state1">PL : 최현우</h55>
						<br>
						<p2 id="profile1Comment1">"대덕인재 개발원 학우분들에게게 조금이나 도움이 될수 있을거
						같다 생각하여 진심을 담아 제작하게 되었습니다<br>
						개발원에 있는 동안 저희의 사이트를 유용하게 활용하시고 난관들을 헤쳐나가서 원하는 결과물 얻길 바라겠습니다"</p2>
					</div>

				</div>
				<div>
					<div class="testimonials__picture" id="profile2">
						<img src="images/testimonials/profile2.jpg" alt="client-2 picture"
							class="rounded-circle img-fluid" id="profile2">
					</div>
					<div id="comment2">
						<h55 id="profile1state2">DA : 강명범</h55>
						<br>
						<p2 id="profile1Comment2">"대덕인재 개발원 학우분들에게게 조금이나 도움이 될수 있을거
						같다 생각하여 진심을 담아 제작하게 되었습니다<br>
						개발원에 있는 동안 저희의 사이트를 유용하게 활용하시고 난관들을 헤쳐나가서 원하는 결과물 얻길 바라겠습니다"</p3>
					</div>
				</div>
				<div>
					<div class="testimonials__picture" id="profile3">
						<img src="images/testimonials/profile3.jpg" alt="client-2 picture"
							class="rounded-circle img-fluid" id="profile3">
					</div>
					<div id="comment3">
						<h55 id="profile1state3">AA : 김호겸</h55>
						<br>
						<p2 id="profile1Comment3">"대덕인재 개발원 학우분들에게게 조금이나 도움이 될수 있을거
						같다 생각하여 진심을 담아 제작하게 되었습니다<br>
						개발원에 있는 동안 저희의 사이트를 유용하게 활용하시고 난관들을 헤쳐나가서 원하는 결과물 얻길 바라겠습니다"</p3>
					</div>
				</div>

				<div>
					<div class="testimonials__picture" id="profile4">
						<img src="images/testimonials/profile4.jpg" alt="client-2 picture"
							class="rounded-circle img-fluid" id="profile4">
					</div>
					<div id="comment4">
						<h55 id="profile1state4">UA : 장혜연</h55>
						<br>
						<p2 id="profile1Comment4">"대덕인재 개발원 학우분들에게게 조금이나 도움이 될수 있을거
						같다 생각하여 진심을 담아 제작하게 되었습니다<br>
						개발원에 있는 동안 저희의 사이트를 유용하게 활용하시고 난관들을 헤쳐나가서 원하는 결과물 얻길 바라겠습니다"</p3>
					</div>
				</div>
			</div>
</body>
</html>