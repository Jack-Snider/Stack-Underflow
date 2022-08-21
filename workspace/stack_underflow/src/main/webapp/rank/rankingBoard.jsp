
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" type="text/css" href="../css/BasicStructor.css"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ranking</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css"> 
<script class="cssdeck" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/6ef361a288.js" crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DynaPuff&family=Silkscreen&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Bebas+Neue&family=Cairo:wght@700&family=Fjalla+One&family=Oswald:wght@500&family=Russo+One&family=Staatliches&family=Stick+No+Bills:wght@800&display=swap" rel="stylesheet">
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>  -->
<!-- <link rel="stylesheet" type="text/css" href="../css/main.css"> -->
<link rel="stylesheet" type="text/css" href="../css/btn.css">
<script class="cssdeck" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
  <script src="https://kit.fontawesome.com/6ef361a288.js" crossorigin="anonymous"></script>
<style>

#mypage-login-btn{
   display: inline;
   
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

.headera {
  text-decoration: none;
  float: left;
  margin-left: 10px;
    color: black;
}

.headera:hover{
  color : green;

}

.headera::after{ 
   display:block;/*a요소를 블록 요소라고 선언*/
   content: '';
   border-bottom: solid 2px green; /* 및줄 색  */
   transform: scaleX(0);/*크기를 0으로 줌으로써 평상시엔 밑줄 없음*/
   transition: transform 250ms ease-in-out;
   } 
   
 .headera:hover:after {
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

#home{
     
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
flex : 2;
width : 100%;
height : 100px;
background : #adadad;
 border : 1px solid black;

}

/* #container-div{
 background : pink;
 width : 100%;

} 

*/
 #content-container{

  width : 100%;
  display : flex;
  min-height : 900px;

  

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

/* 검색창 */
::selection {
   background: #212129;
}

.search-wrapper {
    position: absolute;
    transform: translate(-100%, -50%);
    top: 14%;
    left: 78%;
}
.search-wrapper.active {}

.search-wrapper .input-holder {    
    height: 70px;
    width:70px;
    overflow: hidden;
        background: rgba(237, 237, 237,0.5);
    border-radius:6px;
    position: relative;
    transition: all 0.3s ease-in-out;
}
.search-wrapper.active .input-holder {
    width:450px;
    border-radius: 50px;
  /*   background: rgba(0,0,0,0.5); */
    transition: all .5s cubic-bezier(0.000, 0.105, 0.035, 1.570);
    box-shadow: 0 0 6px grey;
}
.search-wrapper .input-holder .search-input {
    width:100%;
    height: 50px;
    padding:0px 70px 0 20px;
    opacity: 0;
    position: absolute;
    top:0px;
    left:0px;
    background: transparent;
    box-sizing: border-box;
    border:none;
    outline:none;
    font-family:"Open Sans", Arial, Verdana;
    font-size: 16px;
    font-weight: 400;
    line-height: 20px;
    color:black;;
    transform: translate(0, 60px);
    transition: all .3s cubic-bezier(0.000, 0.105, 0.035, 1.570);
    transition-delay: 0.3s;
}
.search-wrapper.active .input-holder .search-input {
    opacity: 1;
    transform: translate(0, 10px);
}
.search-wrapper .input-holder .search-icon {
    width:70px;
    height:70px;
    border:none;
    border-radius:6px;
    background: #1d5716;
    padding:0px;
    outline:none;
    position: relative;
    z-index: 2;
    float:right;
    cursor: pointer;
    transition: all 0.3s ease-in-out;
}
.search-wrapper.active .input-holder .search-icon {
    width: 50px;
    height:50px;
    margin: 10px;
    border-radius: 30px;
}
.search-wrapper .input-holder .search-icon span {
    width:22px;
    height:22px;
    display: inline-block;
    vertical-align: middle;
    position:relative;
    transform: rotate(45deg);
    transition: all .4s cubic-bezier(0.650, -0.600, 0.240, 1.650);
}
.search-wrapper.active .input-holder .search-icon span {
    transform: rotate(-45deg);
}
.search-wrapper .input-holder .search-icon span::before, .search-wrapper .input-holder .search-icon span::after {
    position: absolute; 
    content:'';
}
.search-wrapper .input-holder .search-icon span::before {
    width: 4px;
    height: 11px;
    left: 9px;
    top: 18px;
    border-radius: 2px;
    background: whitesmoke;
}
.search-wrapper .input-holder .search-icon span::after {
    width: 14px;
    height: 14px;
    left: 0px;
    top: 0px;
    border-radius: 16px;
    border: 4px solid whitesmoke;
}
.search-wrapper .close {
    position: absolute;
    z-index: 1;
    top:24px;
    right:20px;
    width:25px;
    height:25px;
    cursor: pointer;
    transform: rotate(-180deg);
    transition: all .3s cubic-bezier(0.285, -0.450, 0.935, 0.110);
    transition-delay: 0.2s;
}
.search-wrapper.active .close {
    right:-50px;
    transform: rotate(45deg);
    transition: all .6s cubic-bezier(0.000, 0.105, 0.035, 1.570);
    transition-delay: 0.5s;
}
.search-wrapper .close::before, .search-wrapper .close::after {
    position:absolute;
    content:'';
    background: #1d5716;
    border-radius: 2px;
}
.search-wrapper .close::before {
    width: 5px;
    height: 25px;
    left: 10px;
    top: 0px;
}
.search-wrapper .close::after {
    width: 25px;
    height: 5px;
    left: 0px;
    top: 10px;
}

/* 게시글 목록 */
#content-center-frame{

width : 100%;
height : 100%;
display : flex;
flex-direction : column;

}

#board-search{
border : 1px solid black;
 flex : 1;
 

}

#board-list-frame{
border : 1px solid black;
  flex : 4;
}




.pl{
    width: 200px;
    border: 1px solid #C4C4C4;
    box-sizing: border-box;
    border-radius: 10px;
    padding: 12px 13px;
    font-family: 'Roboto';
    font-style: normal;
    font-weight: 400;
    font-size: 14px;
    line-height: 16px;
        margin-top: 100px;
    margin-left: 500px;
}

.pl:focus{
    border: 1px solid ##1d5716;
    box-sizing: border-box;
    border-radius: 10px;
    outline: 1px solid #1d5716;
    border-radius: 10px;
}
/*       body {
        margin: 0;

      } */

.header{
   flex : 1;
    border : 1px solid black;    
}
.personel-stat-btn{
      clear: both;
    display: inline-block;
    position: absolute;
    right: 1%;
               
            }


#layoutcenter{
  flex : 4;
   border : 1px solid black;
}
</style>
<script>


}

</script>
<style>
body{
margin: 65px;
margin-top: 70px;
}

</style>


<script>
	$(function(){
		$.ajax({
			url : '/stack_underflow/rankingBoard.do',
			type : 'post',
			success : function(res){
				let code = '<table class="table table-dark table-hover">';
					code += '<tr>';
					code += '<th scope="col">순위</td>';
					code += '<th scope="col">랭크</td>';
					code += '<th scope="col">아이디</td>';
					code += '<th scope="col">닉네임</td>';
					code += '<th scope="col">좋아요</td>';
					code += '<th scope="col">싫어요</td>';
					code += '<th scope="col">점수</td>';
					code += '</tr>';
				$.each(res, function(i, v){
					code += '<tr>';
					code += '<th scope="row">'+(i+1)+'</td>';
					switch(v.mem_rank){
						case "골드":
							code += '<td><i class="bi bi-trophy-fill" style="font-size: 2rem; color: gold;"></i></td>';
							break;
						case "실버":
							code += '<td><i class="bi bi-trophy-fill" style="font-size: 2rem; color: silver;"></i></td>';
							break;
						case "브론즈":
							code += '<td><i class="bi bi-trophy-fill" style="font-size: 2rem; color: brown;"></i></td>';
							break;
						case "Unranked":
							code += '<td><i class="bi bi-trophy-fill" style="font-size: 2rem; color: black;"></i></td>';
							break;
					}
					code += '<td>'+v.mem_id+'</td>';
					code += '<td>'+v.mem_nknm+'</td>';
					code += '<td>'+v.mem_like_sum+'</td>';
					code += '<td>'+v.mem_dislike_sum+'</td>';
					code += '<td>'+v.mem_score+'</td>';
					code += '</tr>';
				});
				code += '</table>';
				$('#board-container').html(code);
			},
			error : function(xhr){
				alert(xhr.status);
			},
			dataType : 'json'
		});
	});
</script>
</head>
<body>

  
  
  


<section id="ranking-header" style="    margin-left: 21%; margin-top : -3%">
<h1>랭킹보드</h1>
<i class="bi bi-trophy-fill" style="font-size: 2rem; color: gold;">Gold&nbsp;&nbsp;</i>
<i class="bi bi-trophy-fill" style="font-size: 2rem; color: silver;">Silver&nbsp;&nbsp;</i>
<i class="bi bi-trophy-fill" style="font-size: 2rem; color: brown;">Bronze&nbsp;&nbsp;</i>
<i class="bi bi-trophy-fill" style="font-size: 2rem; color: black;">Unranked&nbsp;&nbsp;</i>
</section>
<div id="board-container" style="    width: 61%;
    margin-left: 21%;">
</div>

  
    
   
   
   
   







</body>
</html>