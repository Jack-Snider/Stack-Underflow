package ufo.cmnt.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		
		request.setCharacterEncoding("utf-8");
		ICmntService service = CmntServiceImpl.getInstance();
		
		// 세션객체 생성
		HttpSession session = request.getSession();
		
		// 현재 상세페이지의 게시글 객체
		PostVO post = (PostVO) session.getAttribute( "detailPost" );
		
		// 현재 로그인 되어있는 계정 
		MemberVO memberVo = (MemberVO) session.getAttribute( "Mem_vo" );
		
		// cmntVO 객체 생성
		CmntVO cmntVo = new CmntVO();
		cmntVo.setCmnt_cont( (String) request.getAttribute( "comment" ) ); // 댓글내용 저장
		cmntVo.setPost_num( post.getPost_num() ); // 게시글번호 저장
		cmntVo.setCmnt_dislike( 0 );
		cmntVo.setCmnt_like( 0 );
		cmntVo.setMem_id( (String) session.getAttribute( memberVo.getMem_id() ) ); // 댓글작성자 아이디
		
		int cnt = service.insertCmnt( cmntVo ); // 댓글객체 저장
		if( cnt > 0 ) {
			List<CmntVO> cmntList = service.getCmnts( post.getPost_num() );
			session.setAttribute( "cmntList" , cmntList );
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
