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
<div id="header">
   <h1>
      <i class="fa-brands fa-stack-exchange" style="color : green; font-size : 2.3em;  float: left;  margin-left: 40px; margin-top: 11px;" ></i>
      <a id ="home" href = "../basic_frame/main.jsp">stack underflow</a>
      <a id = "community" href = "../basic_frame/community.jsp">커뮤니티</a>
      <a id = "rank" href = "../ranking/rankingBoard.jsp">랭킹</a>
      <div class="mypage-logout-btn">
         <a id = "mypage" href="../basic_frame/mypage.jsp"><i class="fa-solid fa-user" ></i>마이페이지</a>
         <a id = "logout" href=""><i class="fa-solid fa-right-from-bracket" style="margin-left : 4px"></i>로그아웃</a>
      </div> 
   </h1>
</div>
<aside>
</aside>
<section id="ranking-header">
<h1>랭킹보드</h1>
<i class="bi bi-trophy-fill" style="font-size: 2rem; color: gold;">Gold&nbsp;&nbsp;</i>
<i class="bi bi-trophy-fill" style="font-size: 2rem; color: silver;">Silver&nbsp;&nbsp;</i>
<i class="bi bi-trophy-fill" style="font-size: 2rem; color: brown;">Bronze&nbsp;&nbsp;</i>
<i class="bi bi-trophy-fill" style="font-size: 2rem; color: black;">Unranked&nbsp;&nbsp;</i>
</section>
<div id="board-container">
</div>
</body>
</html>