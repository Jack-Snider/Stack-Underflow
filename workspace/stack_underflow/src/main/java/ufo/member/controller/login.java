package ufo.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ufo.member.service.IMemberService;
import ufo.member.service.MemberServiceImpl;
import ufo.vo.MemberVO;
//강명범 시작====================================
@WebServlet("/login.do")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();

		// login.jsp에받은 id와 패스워드 값을 받는다 
		String userId = request.getParameter("idInput");
		String userPass = request.getParameter("passInput");


		MemberVO memberVo = new MemberVO();
		
		memberVo.setMem_id(userId);
		memberVo.setMem_pass(userPass);

		IMemberService service = MemberServiceImpl.getInstance();
		MemberVO chkNull = service.logincheck(memberVo);
		

		// 세션 생성
		HttpSession session = request.getSession();

		// 체크박스 기능
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
		// 로그인기능
		if (chkNull != null) {
			session.setAttribute("Mem_vo",chkNull);
			session.setAttribute("Mem_id",chkNull.getMem_id());
			session.setAttribute("Mem_name", chkNull.getMem_nm());
			response.sendRedirect("./common/login.jsp");
		
		} else {
			out.print("<html>");
			out.print("<body>");
			out.print("<script>alert('올바른 아이디 또는 비밀번호를 입력하세요');location.href='./common/login.jsp';</script>");
			out.print("</body>");
			out.print("</html>");
		}

	}
	//강명범 끝====================================
}
