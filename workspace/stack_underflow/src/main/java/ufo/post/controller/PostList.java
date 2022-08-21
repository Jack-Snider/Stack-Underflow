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

import ufo.cmnt.service.CmntServiceImpl;
import ufo.cmnt.service.ICmntService;
import ufo.post.service.IPostService;
import ufo.post.service.PostServiceImpl;
import ufo.vo.PageVO;
import ufo.vo.PostVO;


@WebServlet("/postList.do")
public class PostList extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("이게 보이면 서블릿이 호출된겁니다.");
		/* 호겸 시작 */
		request.setCharacterEncoding("utf-8");
		
		// 테스트용 코드
		System.out.println(" PostList.java 서블릿이 호출 되었습니다. ");
		
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
		


		//request.getRequestDispatcher("/pages/postList.jsp").forward(request, response);
		//request.getRequestDispatcher("/communityList/cummuindex.jsp").forward(request, response);

		//request.getRequestDispatcher("/pages/postList.jsp").forward(request, response);
		request.getRequestDispatcher("/communityList/commuindex.jsp").forward(request, response);


		//request.getRequestDispatcher("/pages/postList.jsp").forward(request, response);
		request.getRequestDispatcher("/communityList/commuindex.jsp").forward(request, response);

		/* 호겸 끝 */
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
