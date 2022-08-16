package ufo.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

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

@WebServlet("/login.do")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out=response.getWriter();

		// login.jsp에받은 id와 패스워드 값을 받는다
		String userId = request.getParameter("idInput");
		String userPass = request.getParameter("passInput");
System.out.println("id-" + userId);
System.out.println("pass=" + userPass);
		
		
		// id와 pass를 VO에 저장한다.
		MemberVO paramVo = new MemberVO();
		paramVo.setMem_id(userId);
		paramVo.setMem_pass(userPass);
		
		IMemberService service = MemberServiceImpl.getInstance();
		int cnt= service.logincheck(paramVo);

		
		//체크박스 기능
		HttpSession session = request.getSession();
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
		
		//로그인기능

		if(cnt==1) { // 로그인 성공

				session.setAttribute("MemberVo",paramVo);
				session.setAttribute("UserName", paramVo.getMem_nm());
				response.sendRedirect("./basic_frame/frame.jsp");
			}else{
				request.getRequestDispatcher("/common/login.jsp").forward(request, response);
			}
		}		
	}

