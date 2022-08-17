package ufo.post.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ufo.post.service.IPostService;
import ufo.post.service.PostServiceImpl;
import ufo.vo.PostVO;

/**
 * Servlet implementation class PostCnt
 * 
 * 작성자 : Jack Snider
 * 
 * 좋아요,싫어요, 조회수 서블릿
 * 
 */
@WebServlet("/postcnt.do")
public class PostCnt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* Jack Snider 시작 */
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();

		Enumeration<String> keys = request.getParameterNames();
		
		String key = "";
		
		while(keys.hasMoreElements()) {
			key = (String)keys.nextElement();
		}
		
		// postNum
		String value = request.getParameter(key);
		
		// Service객체 생성
		IPostService service = PostServiceImpl.getInstance();
	
		PostVO postVo = null;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		
		Gson gson = new Gson();
		
		String jsonData = null;
		
		int cnt = 0;
		
		if(key.equals( "postLike" )) {
			// 좋아요를 눌렀을 때
			cnt = service.increaseLike( Integer.parseInt( value ) );
			
			// 좋아요 수가 반영된 새로운 데이터를 다시 가지고 오기
			postVo = service.getDetailPost( Integer.parseInt( value ) );
			
			int val = postVo.getPost_like();
			
			map.put("postVoLike", val);
			
		}else {
			// 싫어요를 눌렀을 때
			cnt = service.increaseDislike( Integer.parseInt( value ) );
			
			postVo = service.getDetailPost( Integer.parseInt( value ) );
			
			int val = postVo.getPost_dislike(); 
			
			map.put("postVoDisLike", val);
		}
		
		
		
		jsonData = gson.toJson(map);
		out.write(jsonData);	
		response.flushBuffer();
		
		/* Jack Snider 끝 */
	
	}

	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
