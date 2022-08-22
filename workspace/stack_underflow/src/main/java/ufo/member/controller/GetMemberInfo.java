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

@WebServlet("/getMemberInfo.do")
public class GetMemberInfo extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Gson gson = new Gson();
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		IMemberService service = MemberServiceImpl.getInstance();
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("Mem_vo");
		
		String jsonData = null;
		jsonData = gson.toJson(vo);
		out.write(jsonData);
		response.flushBuffer();
		
	}

}
