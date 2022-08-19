package ufo.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ufo.member.service.IMemberService;
import ufo.member.service.MemberServiceImpl;
import ufo.vo.MemberVO;


@WebServlet("/rankingBoard.do")
public class RankingBoard extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Gson gson = new Gson();
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		IMemberService service = MemberServiceImpl.getInstance();
		service.updateScoreRank();
		List<MemberVO> members = service.getMembersBySorting();
		if(members != null) {
			String jsonData = null;
			jsonData = gson.toJson(members);
			out.write(jsonData);
			response.flushBuffer();
		}
	}

}
