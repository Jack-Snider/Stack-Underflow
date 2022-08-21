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
/**
 * Servlet implementation class updatePassword
 */
@WebServlet("/updatePassword.do")
public class updatePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8"); 
		PrintWriter out = response.getWriter();

		String pass = request.getParameter("mem_pass");
		String passValidate = request.getParameter("mem_pass_check");
	
		// 세션객체 생성
				HttpSession session = request.getSession();
		

		String id = (String) session.getAttribute("mem_id");
		
		System.out.println(id);
		
		IMemberService service = MemberServiceImpl.getInstance();
		MemberVO pramVo = new MemberVO();
		pramVo.setMem_pass(pass);
		pramVo.setMem_id(id);
		
		MemberVO formerPass=service.passwordchk(id);
		
		
		
		

		int cnt = 0;
		boolean T=pass.equals(passValidate);
		if(pass.equals(formerPass.getMem_pass())) {
			out.print("<html>");
			out.print("<body>");
			out.print("<script>alert('이전 비밀번호와 같습니다..');history.back();</script>");
			out.print("</body>");
			out.print("</html>");
		}
		else {
		if (T==true) {
			cnt = service.chngePass(pramVo);
			if (cnt == 1) {
				out.print("<html>");
				out.print("<body>");
				out.print("<script>alert('비밀번호가 변경되었습니다.');");
				out.print("window.close();</script>");
				out.print("</body>");
				out.print("</html>");
			
			}
		}else if(T==false){
			out.print("<html>");
			out.print("<body>");
			out.print("<script>alert('비밀번호가 일치하지 않습니다.');history.back();</script>");
			out.print("</body>");
			out.print("</html>");
		}
		}

	}
	//강명범 끝====================================
}