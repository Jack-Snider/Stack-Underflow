package ufo.post.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ufo.post.service.IPostService;
import ufo.post.service.PostServiceImpl;
import ufo.vo.PostVO;

/**
 * Servlet implementation class postController
 */
@WebServlet("/postController.do")
public class postController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		/*
		 * 게시글 작성자를 저장하기 위해 로그인 페이지에서 로그인 하면 session에 집어넣고
		 * 여기로 가져온다. 
		 * 
		 */
		
		request.setCharacterEncoding( "utf-8" );
		
		// Service객체 생성
		IPostService service = PostServiceImpl.getInstance();
		
		// PostVO 객체 생성
		PostVO postVo = new PostVO();
		
		String post_title = request.getParameter( "title" );
		postVo.setPost_title( post_title );
		
		String post_content = request.getParameter( "content" );
		postVo.setPost_cont( post_content );
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
