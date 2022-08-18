package ufo.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ufo.member.service.IMemberService;
import ufo.member.service.MemberServiceImpl;


@WebServlet("/UpdateScore.do")
public class UpdateScore extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		IMemberService service = MemberServiceImpl.getInstance();
		service.updateScorePerMember();
	}

}
