package ufo.post.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ufo.files.service.FilesServiceImpl;
import ufo.files.service.IFilesService;
import ufo.member.service.IMemberService;
import ufo.member.service.MemberServiceImpl;
import ufo.post.service.IPostService;
import ufo.post.service.PostServiceImpl;
import ufo.vo.FilesVO;
import ufo.vo.PostVO;

/**
 * Servlet implementation class postController
 */
@WebServlet("/postController.do")
public class postController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		/*
		 * 게시글 작성자를 저장하기 위해 로그인 페이지에서 로그인 하면 session에 집어넣고 여기로 가져온다.
		 * 
		 */

		

		request.setCharacterEncoding("utf-8");

		// Service객체 생성
		IPostService service = PostServiceImpl.getInstance();

		// PostVO 객체 생성
		PostVO postVo = new PostVO();

		// 
		int post_num = 1;
		
		
		String post_reg_date = "2022-08-14";
		int post_views = 0;
		int post_like = 0;
		int post_dislike = 0;
		String post_udt_date = "2022-08-14";
		int file_num = 83;
		String mem_id = "kmb";
		String post_board_type = "A";

		String post_title = request.getParameter("title");
		postVo.setPost_title(post_title);

		String post_content = request.getParameter("content");
		postVo.setPost_cont(post_content);

		postVo.setPost_num(post_num);
		postVo.setPost_reg_date(post_reg_date);
		postVo.setPost_views(post_views);
		postVo.setPost_like(post_like);
		postVo.setPost_dislike(post_dislike);
		postVo.setPost_udt_date(post_udt_date);
		postVo.setFile_num(file_num);
		postVo.setPost_board_type(post_board_type);
		postVo.setMem_id(mem_id);

		service = PostServiceImpl.getInstance();
		int cnt = service.insertPost(postVo);
		
		if(cnt == 1) {
			response.sendRedirect(request.getContextPath() + "/pages/postList.jsp");
		}else {
			response.sendRedirect(request.getContextPath() + "/jsp/signUpFail.jsp");
		}


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
