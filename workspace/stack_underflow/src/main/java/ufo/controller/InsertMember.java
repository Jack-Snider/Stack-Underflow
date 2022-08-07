package ufo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ufo.member.service.IMemberService;
import ufo.member.service.MemberServiceImpl;
import ufo.vo.MemberVO;

@WebServlet("/insertMember.do")
public class InsertMember extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		MemberVO memVo = new MemberVO();
		memVo.setMem_id(request.getParameter("id"));
		memVo.setMem_pass(request.getParameter("pw"));
		memVo.setMem_nm(request.getParameter("name"));
		memVo.setMem_regno(request.getParameter("regno"));
		memVo.setMem_nknm(request.getParameter("nknm"));
		memVo.setMem_email(request.getParameter("email"));
		memVo.setMem_addr1(request.getParameter("addr1"));
		memVo.setMem_addr2(request.getParameter("addr2"));
		memVo.setMem_qstn(request.getParameter("qstn"));
		memVo.setMem_ans(request.getParameter("ans"));
		memVo.setMem_score(0);
		memVo.setMem_rank("Unranked");
		memVo.setMem_stat(0);
		IMemberService service = MemberServiceImpl.getInstance();
		int cnt = service.insertMember(memVo);
		if(cnt>0) {
			response.sendRedirect(request.getContextPath() + "/jsp/signUpSuccess.jsp");
		}else {
			response.sendRedirect(request.getContextPath() + "/jsp/signUpFail.jsp");
		}
		
	}

}
