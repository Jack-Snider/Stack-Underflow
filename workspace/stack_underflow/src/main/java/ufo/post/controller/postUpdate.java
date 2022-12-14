package ufo.post.controller;

import java.io.IOException;
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
 * Servlet implementation class postUpdate
 */
@WebServlet("/postUpdate.do")
public class postUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/* Jack Snider 시작 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		/*
		 * 게시글 작성자를 저장하기 위해 로그인 페이지에서 로그인 하면 session에 집어넣고 여기로 가져온다.
		 * 
		 */

		

		request.setCharacterEncoding("utf-8");

		// Service객체 생성
		IPostService service1 = PostServiceImpl.getInstance(); /* 호겸 수정 */

		// session객체 생성
		HttpSession session = request.getSession();
		
		// 현재 로그인 되어있는 아이디
		MemberVO memVo = ( MemberVO ) session.getAttribute( "Mem_vo" );
		
		// Detail 페이지에서 가져온 PostVO객체
		PostVO postVo = (PostVO)session.getAttribute( "postUpdate" );
		
		
		//String post_reg_date = "2022-08-14";
		int post_views = 0;
		int post_like = 0;
		int post_dislike = 0;
		//String post_udt_date = "2022-08-14";
		int file_num = 83;
		//String mem_id = request.getParameter( "memVoServlet" );
		String mem_id = memVo.getMem_id();
		String post_board_type = "A";

		String post_title = request.getParameter("title");
		System.out.println(post_title);
		postVo.setPost_title(post_title);

		String post_content = request.getParameter("content");
		postVo.setPost_cont(post_content);
		
		postVo.setPost_views(post_views);
		postVo.setPost_like(post_like);
		postVo.setPost_dislike(post_dislike);
		postVo.setMem_id(mem_id);
		postVo.setPost_board_type(post_board_type);
		postVo.setFile_num(file_num);
		
		service1 = PostServiceImpl.getInstance(); /* 호겸 수정 */
		
		
		int cnt = service1.updatePost( postVo ); /* 호겸 수정 */
		
		/*
		// PostVO 객체 생성
		// PostVO postVo = new PostVO();
		List<PostVO> list = service.getAllPost();

		// 가져온 post 목록 정보를 포워딩으로 View페이지에 보내준다.
		if(cnt > 0) {
			request.setAttribute("postList", list);
			request.getRequestDispatcher("/pages/postList.jsp").forward(request, response);			
		}else {
			response.sendRedirect(request.getContextPath() + "/jsp/signUpFail.jsp");
		}
		*/
		
		/* 호겸 수정 */
		if(cnt > 0) {
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
			request.getRequestDispatcher("/communityList/commuindex.jsp").forward(request, response);
		}else {
			response.sendRedirect(request.getContextPath() + "/jsp/signUpFail.jsp");
		}
		
	}

	/* Jack Snider 끝 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}