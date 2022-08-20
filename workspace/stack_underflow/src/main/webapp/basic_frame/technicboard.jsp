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
 <!--  <link href="../css/style.css" type="text/css" rel="stylesheet"/> -->
 <link rel="stylesheet" type="text/css" href="../css/community.css"> 
  
<style>



</style>
<script>

$(document).re dy(function(){
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
  <i class="fa-brands fa-stack-exchange" style="color : green; font-size : 2.3em;  float: left;  margin-left: 40px; margin-top: 1px;" ></i>
<a class="header-a" id="home" href="main.jsp">stack underflow</a>
  <a class="header-a" id = "community" href="community.jsp">커뮤니티</a>
  <a class="header-a" id = "rank" href="">랭킹</a>
  
	  <div class="mypage-login-btn">
		  <a class="header-a" id = "mypage" href=""><i class="fa-solid fa-user" ></i>마이페이지</a>
		  <a class="header-a" id = "logout" href=""><i class="fa-solid fa-right-from-bracket" style="margin-left : 4px"></i>로그아웃</a>
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
      
                 <div class="right search_wrap">
                <div class="left search_box">
                    <input class="textbox" type="text" value="" placeholder="검색어를 입력하세요">
                    <img src="./img/search_ico.png" alt="검색 아이콘">
                </div>
            </div>
                 
 

            <table class="bbsList" summary="이메일 수신자 그룹관리 (이메일 뉴스레터를 발송할 대상 수신자 목록을 선택하세요.)">
                <caption>이메일 수신자 그룹관리 (이메일 뉴스레터를 발송할 대상 수신자 목록을 선택하세요.)</caption>           
                <thead class="head">
                    <tr>
                        <!--  <th><a class="checkbox" href="" ></a></th>   -->
                        <th>번호</th>
                        <th>내부관리용 명칭</th>   
                        <th>메일유형</th>
                        <th>최초발송</th>
                        <th>최근발송</th>
                        <th>총 발송건수</th>
                        <th>반송건수</th> 
                        <th>개봉건수</th> 
                        <th>링크수</th> 
                        <th>링크 클릭수</th> 
                        <th>세부정보</th> 
                    </tr>    
                </thead>
                <tbody class="body">
                    <tr class="ho_point">
                       <!--  <td><a class="checkbox_checked" href="javascript:;" >✓</a></td> -->
                        <td>123</td>
                        <td>사랑이 넘치는 한의원 홈페이지 구독 웹진...</td>
                        <td class="">일반 이메일</td>
                        <td class="">2016-06-02</td>
                        <td class="">2016-06-02</td>
                        <td class="txt_org">203</td>                                                            
                        <td class="">58</td>
                        <td class="">123</td>
                        <td class="">58</td>
                        <td class="txt_org">578</td>
                        <td class=""><a class="viewbtn" href="#" target="_blank"><span class="txt_org">보기</span></a></td>
                    </tr>
                    <tr class="ho_point">
                       <!--  <td><a class="checkbox" href="javascript:;" ></a></td> -->
                        <td>123</td>
                        <td>사랑이 넘치는 한의원 홈페이지 구독 웹진...</td>
                        <td class="">일반 이메일</td>
                        <td class="">2016-06-02</td>
                        <td class="">2016-06-02</td>
                        <td class="txt_org">203</td>                                                            
                        <td class="">58</td>
                        <td class="">123</td>
                        <td class="">58</td>
                        <td class="txt_org">578</td>
                        <td class=""><a class="viewbtn" href="#" target="_blank"><span class="txt_org">보기</span></a></td>
                    </tr>
                    <tr class="ho_point">
                       <!--  <td><a class="checkbox" href="javascript:;" ></a></td> -->
                        <td>123</td>
                        <td>사랑이 넘치는 한의원 홈페이지 구독 웹진...</td>
                        <td class="">일반 이메일</td>
                        <td class="">2016-06-02</td>
                        <td class="">2016-06-02</td>
                        <td class="txt_org">203</td>                                                            
                        <td class="">58</td>
                        <td class="">123</td>
                        <td class="">58</td>
                        <td class="txt_org">578</td>
                        <td class=""><a class="viewbtn" href="#" target="_blank"><span class="txt_org">보기</span></a></td>
                    </tr>
                    <tr class="ho_point">
                       <!--  <td><a class="checkbox" href="javascript:;" ></a></td> -->
                        <td>123</td>
                        <td>사랑이 넘치는 한의원 홈페이지 구독 웹진...</td>
                        <td class="">일반 이메일</td>
                        <td class="">2016-06-02</td>
                        <td class="">2016-06-02</td>
                        <td class="txt_org">203</td>                                                            
                        <td class="">58</td>
                        <td class="">123</td>
                        <td class="">58</td>
                        <td class="txt_org">578</td>
                        <td class=""><a class="viewbtn" href="#" target="_blank"><span class="txt_org">보기</span></a></td>
                    </tr>
                    <tr class="ho_point">
                     <!--    <td><a class="checkbox" href="javascript:;" ></a></td> -->
                        <td>123</td>
                        <td>사랑이 넘치는 한의원 홈페이지 구독 웹진...</td>
                        <td class="">일반 이메일</td>
                        <td class="">2016-06-02</td>
                        <td class="">2016-06-02</td>
                        <td class="txt_org">203</td>                                                            
                        <td class="">58</td>
                        <td class="">123</td>
                        <td class="">58</td>
                        <td class="txt_org">578</td>
                        <td class=""><a class="viewbtn" href="#" target="_blank"><span class="txt_org">보기</span></a></td>
                    </tr>
                   
                </tbody>
                <tfoot class="foot">
                    <tr>
                        <td colspan="12">
                            <span class="arrow radius-right">≪</span>
                            <span class="arrow radius-left">＜</span>
                            
                            <a href="javascript:;" class="num_box txt_point">1</a>
                            <a href="javascript:;" class="num_box ">2</a>
                            <a href="javascript:;" class="num_box ">3</a>
                            <a href="javascript:;" class="num_box ">4</a>
                            <a href="javascript:;" class="num_box ">5</a>
                            <a href="javascript:;" class="num_box ">6</a>
                            <a href="javascript:;" class="num_box ">7</a>
                            <a href="javascript:;" class="num_box ">8</a>
                            <a href="javascript:;" class="num_box ">9</a>
                            <a href="javascript:;" class="num_box ">10</a>

                            <span class="arrow radius-right">＞</span>
                            <span class="arrow radius-left">≫</span>
                        </td>
                    </tr>    
                </tfoot>
            </table>
            
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