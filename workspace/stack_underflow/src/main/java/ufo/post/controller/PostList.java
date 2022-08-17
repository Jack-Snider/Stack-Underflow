package ufo.post.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ufo.post.service.IPostService;
import ufo.post.service.PostServiceImpl;
import ufo.vo.PostVO;

/**
 * Servlet implementation class PostList
 */
@WebServlet("/postList.do")
public class PostList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		/* Jack Snider 시작 */
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();

		// Service객체 생성
		IPostService service = PostServiceImpl.getInstance();

		// PostVO 객체 생성
		// PostVO postVo = new PostVO();
		List<PostVO> list = service.getAllPost();

		// 가져온 post 목록 정보를 포워딩으로 View페이지에 보내준다.
		request.setAttribute("postList", list);
		request.getRequestDispatcher("/pages/postList.jsp").forward(request, response);

		/* Jack Snider 끝 */
		
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
