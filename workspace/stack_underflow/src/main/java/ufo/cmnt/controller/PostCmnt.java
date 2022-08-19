package ufo.cmnt.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import ufo.cmnt.service.CmntServiceImpl;
import ufo.cmnt.service.ICmntService;
import ufo.vo.CmntVO;
import ufo.vo.MemberVO;
import ufo.vo.PostVO;

/**
 * Servlet implementation class PostCmnt
 */
@WebServlet("/postCmnt.do")
public class PostCmnt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/* Jack Snider 시작 */
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		
		String jsonData = null;
		
		ICmntService service = CmntServiceImpl.getInstance();
		
		
		
		// 세션객체 생성
		HttpSession session = request.getSession();
		
		// 현재 상세페이지의 게시글 객체
		PostVO post = (PostVO) session.getAttribute( "detailPost" );
		
		// 현재 로그인 되어있는 계정 
		MemberVO memberVo = (MemberVO) session.getAttribute( "Mem_vo" );
		
		// cmntVO 객체 생성
		
		//{"cmnt_cont" : cmnt_cont, "mem_id" : mem_id, "post_num" : post_num},
		
		
		CmntVO cmntVo = new CmntVO();
		cmntVo.setCmnt_cont( request.getParameter( "comment_content" ) ); // 댓글내용 안불러와짐
		cmntVo.setPost_num( post.getPost_num() ); // 게시글번호 안불러와짐
		cmntVo.setCmnt_dislike( 0 );
		cmntVo.setCmnt_like( 0 );
		cmntVo.setMem_id( memberVo.getMem_id() ); // 아이디 안불러와짐.
		
		
		if( cmntVo.getCmnt_cont() == null ) {
			System.out.println("cmntVo.getComnt_cont() => null");
		}
		
		if( cmntVo.getPost_num() <= 0 ) {
			System.out.println( "cmntVo.getPost_num => 0 " );
		}
		
		if( cmntVo.getMem_id() == null ) {
			System.out.println( "cmntVo.getMem_id() =>  null " );
		}
		
		
		
		
		int cnt = (int) service.insertCmnt( cmntVo ); // 댓글객체 저장
		
		if( cnt > 0 ) {
			List<CmntVO> cmntList = (List<CmntVO>)service.getCmnts( post.getPost_num() + "" );
			session.setAttribute( "cmntList" , cmntList );
			jsonData = gson.toJson(cmntList);
			out.write(jsonData);	
			response.flushBuffer();
		}
		
		
		
		
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
