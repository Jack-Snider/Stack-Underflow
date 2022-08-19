<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<h1>랭킹보드</h1>
<i class="bi bi-trophy-fill" style="font-size: 2rem; color: gold;">gold</i>
<i class="bi bi-trophy-fill" style="font-size: 2rem; color: silver;">silver</i>
<i class="bi bi-trophy-fill" style="font-size: 2rem; color: brown;">brown</i>
<i class="bi bi-trophy-fill" style="font-size: 2rem; color: black;">Unranked</i>
<div id="board-container">
</div>
</body>
</html>