package ufo.member.controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ufo.member.service.IMemberService;
import ufo.member.service.MemberServiceImpl;
import ufo.vo.MemberVO;

@WebServlet("/login.do")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		//login.jsp에받은 id와 패스워드 값을 받는다
		String identi=request.getParameter("id"); 
		String userPass = request.getParameter("pass");
		
		PrintWriter out = response.getWriter();
		
		
		int cnt=1;
		IMemberService service = MemberServiceImpl.getInstance();
		cnt = service.logindenyId(identi);
		MemberVO memVo2 = service.passcheck(identi);

		// 체크박스가 체크되었을 때 value값이 넘어온다.

		String chkid = request.getParameter("chkid");

		// userId를 값으로 저장하는 Cookie객체 생성
		Cookie cookie = new Cookie("USERID", identi);

		// 체크박스의 체크 여부를 확인하여 쿠키를 저장하거나 삭제한다.
		if (chkid != null) { // 체크박스가 체크되었을 때...
			response.addCookie(cookie);
		} else { // 체크박스가 해체되었을 때...
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}

		if (identi != "" && userPass != "") { // 아이디와 비밀번호를 모두 입력했을때

			if (cnt==1) {  // 아이디가 존재했을때
				
				String pswd = memVo2.getMem_pass();
				if (pswd.equals(userPass)) {  // 입력한 비밀번호와 해당아이디의 비밀번호 비교해서 홈으로 이동한다.
					response.sendRedirect(request.getContextPath() + "/basic_frame/frame.jsp");   
				
				} else if (!pswd.equals(userPass)) {  //비밀번호가 일치하지 않을 경우 로그인화면으로 이동한다.
					out.print("<html>");
					out.print("<body>");
					out.print("<script>alert('올바르지 않은 비밀번호 입니다.');history.back();</script>");
					out.print("</body>");
					out.print("</html>");
				}

			} else if(cnt==0){ // 아이디가 존재하지 않았을때
				out.print("console.log()");
				out.print("<html>");
				out.print("<body>");
				out.print("<script>alert('해당 아이디가 존재하지 않습니다.');history.back();</script>");
				out.print("</body>");
				out.print("</html>");
			}

		} else { // 아이디 또는 비밀번호를 공란으로 채웠을때
			out.print("<html>");
			out.print("<body>");
			out.print("<script>alert('아이디 또는 비밀번호란이 비었습니다.');history.back();</script>");
			out.print("</body>");
			out.print("</html>");
		}
	}

}
