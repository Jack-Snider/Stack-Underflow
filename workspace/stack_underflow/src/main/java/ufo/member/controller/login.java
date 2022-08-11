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
		PrintWriter out = response.getWriter();
		String userId = request.getParameter("userid");
		String userPass = request.getParameter("pass");

		// 체크박스가 체크되었을 때 value값이 넘어온다.

		String chkid = request.getParameter("chkid");

		// userId를 값으로 저장하는 Cookie객체 생성
		Cookie cookie = new Cookie("USERID", userId);

		// 체크박스의 체크 여부를 확인하여 쿠키를 저장하거나 삭제한다.
		if (chkid != null) { // 체크박스가 체크되었을 때...
			response.addCookie(cookie);
		} else { // 체크박스가 해체되었을 때...
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}

		if (userId != "" && userPass != "") { // 아이디와 비밀번호를 모두 입력했을때
			MemberVO memVo1 = new MemberVO();
			memVo1.setMem_id(userId);
			memVo1.setMem_pass(userPass);

			IMemberService service = MemberServiceImpl.getInstance();
			MemberVO memVo2 = service.passcheck(userId);
			int cnt = service.logindenyId(userId);


			if (cnt==1) {
				String pswd = memVo2.getMem_pass();
				if (pswd.equals(userPass)) {
					response.sendRedirect(request.getContextPath() + "/basic_frame/frame.jsp");
				} else if (!pswd.equals(userPass)) {
					out.print("<html>");
					out.print("<body>");
					out.print("<script>alert('올바르지 않은 비밀번호 입니다.');location.href='./common/login.jsp';</script>");
					out.print("</body>");
					out.print("</html>");
				}

			} else if(cnt==0){
				out.print("console.log()");
				out.print("<html>");
				out.print("<body>");
				out.print("<script>alert('해당 아이디가 존재하지 않습니다.');location.href='./common/login.jsp';</script>");
				out.print("</body>");
				out.print("</html>");
			}

		} else { // 아이디 또는 비밀번호를 공란으로 채웠을때
			out.print("<html>");
			out.print("<body>");
			out.print("<script>alert('아이디 또는 비밀번호란이 비었습니다.');location.href='./common/login.jsp';</script>");
			out.print("</body>");
			out.print("</html>");
		}
	}

}
