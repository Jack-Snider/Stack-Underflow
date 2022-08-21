package ufo.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ufo.member.service.IMemberService;
import ufo.member.service.MemberServiceImpl;
import ufo.vo.MemberVO;

/**
 * Servlet implementation class DeleteMember
 */
@WebServlet("/deleteMember.do")
public class DeleteMember extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		IMemberService service = MemberServiceImpl.getInstance();
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("Mem_vo");
		String mem_id = vo.getMem_id();
		int cnt = service.deleteMember(mem_id);
		if(cnt != 0) {
			System.out.println("deleteMember 성공");
			session.invalidate();
			response.sendRedirect(request.getContextPath()+"/common/login.jsp");
		}
	}

}
