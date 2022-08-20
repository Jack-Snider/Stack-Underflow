package ufo.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import ufo.member.service.IMemberService;
import ufo.member.service.MemberServiceImpl;
import ufo.vo.MemberVO;

@WebServlet("/updateMemberInfo.do")
public class UpdateMemberInfo extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		
		HttpSession session = request.getSession();
		
		MemberVO vo = (MemberVO)session.getAttribute("Mem_vo");
		
		vo.setMem_nknm(request.getParameter("mem_nknm"));
		vo.setMem_email(request.getParameter("mem_email"));
		vo.setMem_addr1(request.getParameter("mem_addr1"));
		vo.setMem_addr2(request.getParameter("mem_addr2"));
		
		IMemberService service = MemberServiceImpl.getInstance();
		int cnt = service.updateMemberInfo(vo);
		
		if(cnt != 0) {
			session.setAttribute("Mem_vo", vo);
			Gson gson = new Gson();
			PrintWriter out = response.getWriter();
			String jsonData = null;
			jsonData = gson.toJson(vo);
			out.write(jsonData);
			response.flushBuffer();
		}else {
			System.out.println("updateMemberInfo 실패");
		}
		
		/*
		Gson gson = new Gson();
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		IMemberService service = MemberServiceImpl.getInstance();
		HttpSession session = request.getSession();
		MemberVO memberInfo = (MemberVO)session.getAttribute("Mem_vo");
		String jsonData = null;
		jsonData = gson.toJson(memberInfo);
		out.write(jsonData);
		response.flushBuffer();
		*/
	}

}
