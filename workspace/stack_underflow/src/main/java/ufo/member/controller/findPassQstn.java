package ufo.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ufo.member.service.IMemberService;
import ufo.member.service.MemberServiceImpl;
import ufo.vo.MemberVO;
//강명범 시작====================================
@WebServlet("/findPassQstn.do")
public class findPassQstn extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();

		// findpass.jsp에서 받은 필수 아이디를 입력받는다.
		String userId = request.getParameter("find-passInputId");

		// 질문선택값을 받는다.
		String qstn = request.getParameter("find-pass_qstn");

		// 답변값을 받는다.
		String ans = request.getParameter("find-pass_ans");
		
		//새로운 객체에 아이디,질문,답변을 넣는다
		MemberVO memVo = new MemberVO();
		memVo.setMem_id(userId);
		memVo.setMem_qstn(qstn);
		memVo.setMem_ans(ans);

		// 세션객체 생성
		HttpSession session = request.getSession();
		 
		IMemberService service = MemberServiceImpl.getInstance();

		// 입력받은 유저아이디를 통해 존재여부의 정수값을 받는다.
		int cnt = service.checkById(userId);
		// 입력받은 세개의 값이 존재하는지 확인한다.
		MemberVO passVo1=service.findpass1(memVo);
		if(cnt==1) {
			if(passVo1!=null) {
				session.setAttribute("mem_id", passVo1.getMem_id());
				session.setAttribute("passVo1", passVo1);
				response.sendRedirect("./jsp/updatePassword.jsp");
			}else {
				out.print("<html>");
				out.print("<body>");
				out.print("<script>alert('질문과 답변이 올바르지 않습니다.');history.back();</script>");
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
	//강명범 끝====================================
}
