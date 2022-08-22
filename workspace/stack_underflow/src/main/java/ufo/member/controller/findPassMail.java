package ufo.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ufo.member.service.IMemberService;
import ufo.member.service.MemberServiceImpl;
import ufo.vo.MemberVO;
//명범시작======================================================================================
/**
 * Servlet implementation class Mail
 */
@WebServlet("/findPassMail.do")
public class findPassMail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		String userId = request.getParameter("find-passInputId");
		String userEmail= request.getParameter("findpass_input_email");
		

		
		MemberVO memVo=new MemberVO();
		memVo.setMem_id(userId);
		memVo.setMem_email(userEmail);
		
		// 세션객체 생성
		HttpSession httpsession = request.getSession();
				 
		IMemberService service = MemberServiceImpl.getInstance();
		MemberVO emailVo=service.passValidEmail(userId);
		
		int cnt = service.checkById(userId);
		
		
		String findEmail="";
		
		if(emailVo!=null) {
			findEmail=emailVo.getMem_email();
		}else {
			findEmail="x";
		}
		
		
		if(cnt==1) {
		if(userEmail.equals(findEmail)) {
			  String host = "smtp.naver.com";               // SMTP 서비스를 해주는 메일 사이트
		      final String user = "zhwz092525@naver.com";      // 송신 계정 이메일
		      final String password = "stackunderflow1";                 // 송신 계정 비밀번호

		      String to = findEmail;            // 수신 계정 이메일

		      
		      Properties props = new Properties();      // 자바에서는 보통 Properties 파일에 설정정보를 저장합니다. (파일 입출력을 지원하고, key와 value 형식으로 작성된 프로퍼티 파일을 저장할 때 유용하다)
		      props.put("mail.smtp.host", host);         //"mail.smtp.host"은 이메일 발송을 처리해줄 STMP 서버를 나타냅니다.
		      props.put("mail.smtp.auth", "true");      // SMTP-AUTH를 확인하여 SMTP 서버에 접속할 수 있는 권한 취득
		      
		      
		      // 세션 : 클라이언트 별로 서버에 저장되는 정보 (
		      // 사용자 컴퓨터에 저장되던 쿠키와 다르게 서버에 저장되므로, 비교적 보안이 필요한 데이터는 쿠키보다 세션에 저장한다.
		      // 서버가 종료되거나 유효기간이 지나면 사라진다.
		      Session properSession = Session.getDefaultInstance(props, new javax.mail.Authenticator() {   // Properties에 저장되어있는 설정 값을 getDefaultInstance() 메소드로 저장하여 세션 생성. Authenticator는 메일 서버의 메일 리소스를 보호하는 데 사용되는 추상 클래스입니다.
		         protected PasswordAuthentication getPasswordAuthentication() {                  // 사용자 이름과 암호를 생성자에 전달하는 하위 클래스 PasswordAuthentication을 만듭니다.
		            return new PasswordAuthentication(user, password);                        // 세션 객체를 생성할 때 세션에 인증자를 등록해야 합니다.
		            
		         }
		      });

		      // Compose the message
		      try {
		         MimeMessage message = new MimeMessage(properSession);
		         
		         // 발신자 셋팅
		         message.setFrom(new InternetAddress(user));   // SMTP 발신자 이메일 주소
		         
		         // 수신자 셋팅
		         // RecipientType = 받는사람 유형 (그룹, 사용자, 사서함, 폴더 등등)
		         // InternetAddress(받는사람 메일)
		         message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

		         // Subject
		         // 메일 제목
		         message.setSubject("Stack-Underflow 비밀번호 인증 메일입니다.");

		         // Text
		         // 메일 내용
		         // 랜덤인증 문자열 발생
		     
		         
		         String str="";
		         for (int i = 1; i <= 6; i++) {
		             char ch = (char) ((Math.random() * 26) + 65);
		             str+=String.valueOf(ch);
		           }
		         
		         System.out.println(str);
		         message.setText(str);

		         // send the message
		         // 메일 전송
		         Transport.send(message);
		         
		         // 전송완료 출력 메세지
		         System.out.println("message sent successfully...");
		         
		         httpsession.setAttribute("mem_id", userId);

		        request.setAttribute("randomstr", str);
		         request.getRequestDispatcher("./jsp/findPswd.jsp").forward(request, response);

		      } catch (MessagingException e) {
		         e.printStackTrace();
		      }
		      
		}else {
			
			out.print("<html>");
			out.print("<body>");
			out.print("<script>alert('이메일이 일치하지 않습니다.');history.back();</script>");
			out.print("</body>");
			out.print("</html>");
		}
		}else {
			out.print("<html>");
			out.print("<body>");
			out.print("<script>alert('해당 아이디가 존재하지 않습니다.');history.back();</script>");
			out.print("</body>");
			out.print("</html>");
		}
		
	}
}
//명범끝======================================================================================
