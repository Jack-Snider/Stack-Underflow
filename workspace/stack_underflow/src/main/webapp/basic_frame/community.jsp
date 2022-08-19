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
    line-height: 66px;

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
		  <a id = "logout" href=""><i class="fa-solid fa-right-from-bracket" style="margin-left : 4px"></i>로그아웃</a>
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
<!-- <div class="btngroup">
    <button class="menu">저장</button>
    <button class="menu">취소</button>
</div>
 -->
   </div>

   <div id="content-center">
   썬 마이크로시스템즈에서 1995년에 개발한 객체 지향 프로그래밍 언어. 창시자는 제임스 고슬링이다. 2010년에 오라클이 썬 마이크로시스템즈를 인수하면서 Java의 저작권을 소유하였다. 현재는 OpenJDK는 GPL2이나 오라클이 배포하는 Oracle JDK는 상업라이선스로 2019년 1월부터 유료화정책을 강화하고 있다. Java EE는 이클립스 재단의 소유이다. Java 언어는 J2SE 1.4부터는 Java Community Process (JCP)에서 개발을 주도하고 있다.

  C#과 문법적 성향이 굉장히 비슷하며[2], 그에 비해 2019년 Q3에서 가장 많이 이용하는 언어로 뽑혔다.<br><br><br><br><br><br><br><br>
  2. 분류[편집]
Java는 크게 다음과 같은 3가지 에디션으로 나뉜다.<br><br><br><br><br>
Java SE(Java Standard Edition / J2SE)<br><br><br><br><br><br><br><br><br>
대부분의 사람들이 가장 많이 접하는 표준 에디션. Java의 핵심 API와 기능들을 제공한다. JDK 항목도 참고.<br><br><br><br><br>
Jakarta EE, 구 Java EE(Java Enterprise Edition / J2EE)<br><br><br><br><br>
기업에서 운영하는 서버 페이지에 특화된 에디션이다. JSP와 서블릿을 비롯한 웹 애플리케이션 서버에 관련된 기술들이 포함되어 있다.<br><br><br><br><br>
Java ME(Java Micro Edition / J2ME)
피처폰, PDA, 셋톱박스, 센서 등의 임베디드 시스템 환경에 특화된 경량 에디션이다.<br><br><br><br><br>
3. 특징[편집]
Java의 가장 큰 특징은 플랫폼에 독립적인 언어라는 점이다. 소스 코드를 기계어로 직접 컴파일하여 링크하는 C/C++의 컴파일러와<br><br><br><br><br><br>달리 자바 컴파일러는 바이트코드인 클래스 파일(.class)을 생성하고, 이 파일의 바이트코드를 읽은 뒤 기계어로 바꾸어 실행하는 것은 자바 가상 머신이다.
<i class="fa-solid fa-apple-whole"></i>
예를 들어 플랫폼에 종속된 경우 윈도우에서 빌드한 프로그램을 그대로 리눅스나 macOS에서 실행하려 하면 일반적으로 오류가 나지만 Jav<br><br><br><br><br>a로 작성 된 프로그램은 플랫폼에 맞는 Java Runtime Environment만 설치되어 있다면 문제 없이 동작한다. 이는 Java 코드 자체가 플랫폼이 아닌 가상머신에 종속적이라는 점, 그리고 프로그램 실행의 주체가 운영 체제가 아닌 Java Runtime Environment이라는 점 때문이며 이러한 점을 통틀어 Java는 플랫폼 종속성이 낮은 언어라고 표현한다.

Java Runtime Environment 기반의 프로젝트에서는 하나의 언어만을 고집하지 않는다. 함수형 언어가 유리(최근 유행하는 빅데이터 등)한 부분은 Scala로 작업하며, 견고한 인터페이스와 대규모 통합이 필요한 곳은 Java로 작업한 뒤 이들을 서로 합쳐서 운영하는 게 가능하다. (Java에서 만든 객체를 Scala에서 그대로 사용할 수 있다.) 안드로이드 쪽에서는 크리티컬하지 않은 부분부터 Kotlin으로 코드를 교체하는 경우도 많아지고 있다.
<br><br><br><br><br><br>	
실제 현업에서는 Java를 비롯한 여러가지 인기 언어가 자주 사용되므로 장단점을 잘 알아두는게 좋다. 다른 언어에 대해 맹목적으로 찬양/비판하는 태도보다는 환경이나 주어진 작업의 특성에 따라 적합한 언어를 선택할 수 있는 노하우가 필요하다.
3.1. C, C++와의 비교[편집]<br><br><br><br><br>
기존의 C에 객체지향 기능을 추가하다 보니 언어의 사용에 있어 저수준과 고수준의 개념이 충돌하는 부분이 많았던 C++과는 다르게 아예 처음부터 객체지향 언어로 개발되었다. 다만 많은 사람들이 착각하는 부분인데, Java는 엄밀히 말하면 완벽한 객체지향 언어가 아니다. 원시(Primitive) 타입은 객체로 취급하지 않기 때문. 모든 것을 객체로 취급하는 언어를 순수 객체지향(Pure object-oriented)이라 하며, 이를 지원하는 언어로는 Python, Ruby, Smalltalk등이 있다.
<br><br><br><br><br>
C, C++, Java의 차이점을 말하자면, C는 포인터 등을 활용한 저수준 시스템 프로그래밍에[3] 강점을 가지며, C++는 C의 그런 강점을 거의 그대로 가져오면서 거기에 객체 지향이나 일반화 프로그래밍과 같은 멀티 패러다임을 지원하고자 하는 시도[4]에서 탄생하였다. 이렇게 고수준과 저수준의 개념을 모두 포함하려다 보니 다른 언어에 비해서 상당히 복잡해졌다. 게다가 최신 프로그래밍 환경을 지원하기 위해 지속적으로 개정되고 있는 모던 C++는 변화의 폭이 커서, 새로운 기능을 전부 제대로 다룰 줄 아는 프로그래머는 비교적 적다는 평이 널리 받아들여지고 있다. 이와는 대조적으로 Java는 C++의 초기 발전 방향과는 달리 안정성을 위해 포인터라는 강력한 로우 레벨 기능을 포기하고 가비지 컬렉터를 내장하며, 고수준의 객체지향 부분을 잘 구현하는 것에 집중하는 방식으로 언어가 복잡해지는 것을 방지하였다.
<br><br><br><br><br><br><br><br>
수많은 C계열 프로그래밍 언어가 그렇듯이, C/C++와 비슷한 문법 구조를 가지고 있다. 그러면서도 Java가 C/C++보다 훨씬 더 널리 쓰이는 분야가 많이 존재한다. 웹 애플리케이션 백엔드와 안드로이드 앱이 대표적인 사례. 또한 아파치 소프트웨어 재단에서 개발하는 수많은 오픈 소스 소프트웨어들이 Java로 만들어졌다. 하지만 Java 프로그램에서 속도가 매우 중요시되는 부분은 따로 떼어서 C/C++로 개발하기도 한다. 제작하고자 하는 프로그램의 생산성과 성능을 적절히 고려하여 선택하는 것이 현명하다.
3.2. 개발 환경[편집]
Java에 특정한 라이브러리를 가미해서 웹에서 돌릴 수 있게 한 것이 Java Applet이다. 애플릿 특유의 제약으로 인해 ActiveX보다는 훨씬 안전하다는 이유로 물 건너에서는 인터넷 뱅킹이나 결제 용도로 사용하기도 한다. 근데 상대적으로 안전하다는 것일 뿐, 애플릿을 사용한 결제 시스템도 툭하면 뚫려서 문제가 발생하곤 한다(…). 더군다나 iOS와 안드로이드에서는 되지 않는다. 게다가 크롬과 파이어폭스 등의 브라우저들이 NPAPI 지원 중단 선언을 하고, Java 9부터 애플릿의 개발이 중단되면서 결국 수명이 끝나게 되었다. 이러한 점은 자바 애플릿만이 아닌 다른 대부분의 리치 인터넷 애플리케이션들의 또한 마찬가지이다.

웹 애플리케이션 제작을 위해 Java 언어를 사용하는 규격으로 Java 서블릿과 JSP(Java 서버 페이지)가 있다.[5] 주로 기업에서 Spring과 함께 사용한다. 개인 웹호스팅에서는 이를 지원하는 경우는 많지 않다. 그러나 최근 Java를 지원하는 여러 클라우드 컴퓨팅 서비스가 싼 가격에 등장하고 있고, Java 뿐만이 아닌 JVM 언어를 이러한 환경에서 구동하는 사례가 늘고 있다.

Java Development Kit(Java 개발 도구)을 설치하면 javac라는 컴파일러가 제공된다. 하지만 통합 개발 환경은 제공해 주지 않기 때문에, 반드시 별도의 개발용 프로그램을 써야 한다. 대표적으로 이클립스, 넷빈즈, IntelliJ IDEA 등이 있다. 만약 이것들을 안 쓰겠다고 한다면, 당신에게는 메모장과 javac.exe가 있을 뿐이다. 그리고 Java는 IDE 없이 타이핑만으로 짜기엔 굉장히 불편한 언어라는 것을 명심하자.[6] 실전 Java 개발을 할 때 프로젝트에 필요한 라이브러리 관리나 프로젝트 결과물 배포 등 프로젝트 빌드 관리를 위한 도구로는 아파치 소프트웨어 재단에서 만든 Ant와 Maven, 그 중에서도 Maven이 많이 사용되고 있다. 최근에는 이 두 가지의 단점을 보완한 Gradle이 각광을 받고 있으며 안드로이드 프로젝트에서는 기본으로 쓰인다.
	
   
   </div>
   <div id="content-right"></div>
</div>

<!-- <div id="container-div">
<div class="row">
   왼쪽 div 
    <div class="col-2" style="background-color:white; ">
       <div id="category"  >
       <i class="fa-solid fa-avocado"></i>
        <ul id="categoryul">
          <li>Home</li>
          <li><a href="" style="font-size: 20px;">기술 게시판</a></li>
          <li><a href=""style=" font-size: 20px;">자유 게시판</a></li>
          <li><a href="" style="font-size: 20px;">문의 게시판</a></li> 
        </ul>
       </div>   
    
    </div>
    
    
  
    
    <div class="col-sm-3" style="background-color:lavender;">.col-sm-3</div>
  </div>
</div> -->

<footer>
<p>404</p>
</footer>


</body>
</html>