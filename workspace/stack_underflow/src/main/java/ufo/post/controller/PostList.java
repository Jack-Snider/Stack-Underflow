package ufo.post.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ufo.post.service.IPostService;
import ufo.post.service.PostServiceImpl;
import ufo.vo.PageVO;
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
		/*
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
		*/
		/* Jack Snider 끝 */
		/* 호겸 시작 */
		request.setCharacterEncoding("utf-8");
		
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		String column = request.getParameter("column");
		String condition = request.getParameter("condition");

		IPostService service = PostServiceImpl.getInstance();

		PageVO vo = service.pageInfo(currentPage, column, condition);

		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("column", column);
		map.put("condition", condition);
		map.put("start", vo.getStart());
		map.put("end", vo.getEnd());

		List<PostVO> postList = service.getPostPerPage(map);
		
		request.setAttribute("postList", postList);
		request.setAttribute("pageVo", vo);
		request.setAttribute("currentPage", currentPage);
		
		request.getRequestDispatcher("/pages/postList.jsp").forward(request, response);
		/* 호겸 끝 */
		
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
