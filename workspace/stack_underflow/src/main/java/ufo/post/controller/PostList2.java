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

import com.google.gson.Gson;

import ufo.post.service.IPostService;
import ufo.post.service.PostServiceImpl;
import ufo.vo.PageVO;
import ufo.vo.PostVO;

@WebServlet("/postList2.do")
public class PostList2 extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

				// ajax : x
		
				request.setCharacterEncoding("utf-8");
				
				int cpage = Integer.parseInt(request.getParameter("currentPage"));

				IPostService service = PostServiceImpl.getInstance();

				PageVO vo = service.pageInfo(cpage);

				Map<String, Object> map = new HashMap<String, Object>();

				map.put("start", vo.getStart());
				map.put("end", vo.getEnd());

				List<PostVO> postList = service.getPostPerPage(map);
				
				request.setAttribute("postList", postList);
				request.getRequestDispatcher("/pages/postList2.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// ajax : o
		
		/*
		 * request.setCharacterEncoding("utf-8");
		 * response.setCharacterEncoding("utf-8");
		 * response.setContentType("application/json; charset=utf-8");
		 * 
		 * int cpage = Integer.parseInt(request.getParameter("cpage"));
		 * 
		 * IPostService service = PostServiceImpl.getInstance();
		 * 
		 * PageVO vo = service.pageInfo(cpage);
		 * 
		 * Map<String, Object> map = new HashMap<String, Object>();
		 * 
		 * map.put("start", vo.getStart()); map.put("end", vo.getEnd());
		 * 
		 * List<PostVO> postList = service.getPostPerPage(map);
		 * 
		 * PrintWriter out = response.getWriter();
		 * 
		 * Gson gson = new Gson();
		 * 
		 * String jsonData = null;
		 * 
		 * jsonData = gson.toJson(postList);
		 * 
		 * out.write(jsonData);
		 * 
		 * response.flushBuffer();
		 */
		
		doGet(request, response);
		
	}

}
