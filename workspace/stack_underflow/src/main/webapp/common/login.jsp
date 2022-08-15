<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

<style type="text/css">
#naver {
	margin-left: 20%;
}

.fb-login-button {
	margin-left: 20%;
}
</style>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	
	
	
	//회원가입 버튼을 눌렀을때 이동하는 기능
	$(function(){
	$('#sgnupbtn').on('click', function(){
		location.href="<%=request.getContextPath()%>
		/loginSignUp.do";
			});
		});
	</script>
</head>

<%
// 아이디 체크값을 기억하는 기능

String identify = ""; // 쿠키값이 저장될 변수
String chk = ""; // 체크박스 체크용 변수

Cookie[] cookies = request.getCookies(); // 쿠키정보 가져오기

if (cookies != null) {
	for (Cookie cookie : cookies) {
		String name = cookie.getName();
		if ("USERID".equals(name)) { // 내가 원하는 쿠키가 있으면...
	identify = cookie.getValue();
	chk = "checked";
		}
	}
}
%>
<body>
	<div class="container">
		<form class="needs-validation" method="post"
			action="<%=request.getContextPath()%>/login.do">
			<table>
				<tr>
					<td>ID :</td>
					<td><input type="text" name="id" value="<%=identify%>"
						placeholder="ID 입력하세요."></td>
				</tr>
				<tr>
					<td>PASS :</td>
					<td><input type="password" name="pass"
						placeholder="PassWord 입력하세요."></td>
				</tr>
				<tr>
					<td colspan="2"><input type="checkbox" name="chkid" <%=chk%>
						value="check"> id 기억하기</td>
				</tr>
				<tr>
					<td style="text-align: center;">
					<p><a href="../jsp/findId.jsp" onclick="window.open(this.href, '_blank', 'width=600, height=600'); return false;"> 아이디 찾기 </a>|
					<a href="../jsp/findPswd.jsp" onclick="window.open(this.href, '_blank', 'width=400, height=400'); return false;"> 비밀번호 찾기 </a></p>
					</td>
				</tr>
				
				<tr>
					<td style="text-align: center;"><input type="submit"
						value="로그인" id="lgnbtn"></td>
					<td style="text-align: center;"><input type="button"
						value="회원가입" id="sgnupbtn"></td>
				</tr>
			</table>
		</form>
	</div>

	<!-- 네이버 로그인 api -->
	<%
	String clientId = "hjUCJRX3wfWOSLL6joyT";//애플리케이션 클라이언트 아이디값";
	String redirectURI = URLEncoder.encode("http://localhost/stack_underflow/common/NaverLogin.jsp", "UTF-8");
	SecureRandom random = new SecureRandom();
	String state = new BigInteger(130, random).toString();
	String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
	apiURL += "&client_id=" + clientId;
	apiURL += "&redirect_uri=" + redirectURI;
	apiURL += "&state=" + state;
	session.setAttribute("state", state);
	%>
	<a href="<%=apiURL%>"><img height="50px" id="naver"
		src="../images/btnG_완성형.png" /></a>



	<!-- 페이스북 로그인 api -->
	<script> function statusChangeCallback(response) {  // Called with the results from FB.getLoginStatus().
	    console.log('statusChangeCallback');
	    console.log(response);                   // The current login status of the person.
	    if (response.status === 'connected') {   // Logged into your webpage and Facebook.
	      testAPI();  
	    } else {                                 // Not logged into your webpage or we are unable to tell.
	      document.getElementById('status').innerHTML = '';
	    }
	  }
	
	
	  function checkLoginState() {               // Called when a person is finished with the Login Button.
	    FB.getLoginStatus(function(response) {   // See the onlogin handler
	      statusChangeCallback(response);
	    });
	  }
	
	
	  window.fbAsyncInit = function() {
	    FB.init({
	      appId      : '1222251748550885',
	      cookie     : true,                     // Enable cookies to allow the server to access the session.
	      xfbml      : true,                     // Parse social plugins on this webpage.
	      version    : 'v14.0'           // Use this Graph API version for this call.
	    });
	
	
	    FB.getLoginStatus(function(response) {   // Called after the JS SDK has been initialized.
	      statusChangeCallback(response);        // Returns the login status.
	    });
	  };
	 
	  function testAPI() {                      // Testing Graph API after login.  See statusChangeCallback() for when this call is made.
	    console.log('Welcome!  Fetching your information.... ');
	    FB.api('/me', function(response) {
	      console.log('Successful login for: ' + response.name);
	      document.getElementById('status').innerHTML =
	        'Thanks for logging in, ' + response.name + '!';
	    });
	  }
	
		</script>



	<div id="status"></div>

	<!-- Load the JS SDK asynchronously -->
	<script async defer crossorigin="anonymous"
		src="https://connect.facebook.net/en_US/sdk.js"></script>

	<!-- 페이스북 버튼 커스텀 -->
	<div class="fb-login-button" data-width="" data-size="large"
		data-button-type="login_with" data-layout="default"
		data-auto-logout-link="false" data-use-continue-as="false"></div>

</body>
</html>