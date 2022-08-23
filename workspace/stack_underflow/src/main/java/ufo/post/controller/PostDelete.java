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
import javax.servlet.http.HttpSession;

import ufo.post.service.IPostService;
import ufo.post.service.PostServiceImpl;
import ufo.vo.MemberVO;
import ufo.vo.PageVO;
import ufo.vo.PostVO;

/**
 * Servlet implementation class PostDelete
 */
@WebServlet("/postDelete.do")
public class PostDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		// Service객체 생성
		IPostService service = PostServiceImpl.getInstance();

		// session객체 생성
		HttpSession session = request.getSession();
		
		// Detail 페이지에서 가져온 PostVO객체
		PostVO postVo = (PostVO)session.getAttribute( "postUpdate" );
				
		// 현재 로그인 되어있는 member객체
		MemberVO memberVo = (MemberVO) session.getAttribute( "Mem_vo" );
		
		int cnt = service.deletePost( postVo );
		

		if( cnt > 0 ) {
			// 삭제 성공 ( 쿼리문이 정상적으로 반영됨 )
//			List<PostVO> list = service.getAllPost();
//			request.setAttribute("postList", list);
//			request.getRequestDispatcher("/pages/postList.jsp").forward(request, response);		
			
			int currentPage = Integer.parseInt(request.getParameter("currentPage"));
			String column = request.getParameter("column");
			String condition = request.getParameter("condition");

			//IPostService service = PostServiceImpl.getInstance();

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
			
			request.getRequestDispatcher("/communityList/commuindex.jsp").forward(request, response);
			
		}else {
			response.sendRedirect(request.getContextPath() + "/jsp/signUpFail.jsp");
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
