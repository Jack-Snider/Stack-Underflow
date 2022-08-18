package ufo.post.controller;

import java.io.IOException;
import java.io.PrintWriter;
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

@WebServlet("/LikeDislike.do")
public class LikeDislike extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		String kind = request.getParameter("kind");
		int postNum = Integer.parseInt(request.getParameter("postNum"));
		IPostService service = PostServiceImpl.getInstance();
		int cnt = 0;
		if(kind.equals("likeClick")) {
			cnt = service.increaseLike(postNum);
		}else if(kind.equals("dislikeClick")) {
			cnt = service.increaseDislike(postNum);
		}
		PostVO pvo = null;
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		if(cnt != 0) {
			pvo = service.getDetailPost(postNum);
			int likeCount = pvo.getPost_like();
			int dislikeCount = pvo.getPost_dislike();
			map.put("likeCount", likeCount);
			map.put("dislikeCount", dislikeCount);
		}
		Gson gson = new Gson();
		String jsonData = null;
		jsonData = gson.toJson(map);
		out.write(jsonData);	
		response.flushBuffer();
	}

}
