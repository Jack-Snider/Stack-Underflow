package ufo.post.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ufo.post.service.IPostService;
import ufo.post.service.PostServiceImpl;
import ufo.vo.PostVO;

/**
 * Servlet implementation class PostDetail
 */
@WebServlet("/postDetail.do")
public class PostDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		/*
		String strFileNo = request.getParameter( "fileno" );
		int fileNo = Integer.parseInt( strFileNo );
		*/
		
		
		// Service객체 생성
		IPostService service = PostServiceImpl.getInstance();
		
		String num = request.getParameter( "postNum" );
		int postNum = Integer.parseInt(num);
			
		PostVO postVo = service.getDetailPost(postNum);
		
		// 가져온 post 목록 정보를 포워딩으로 View페이지에 보내준다.
		request.setAttribute("detailPost", postVo);
		request.getRequestDispatcher("/pages/postDetail.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
