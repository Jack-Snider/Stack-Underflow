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
 * Servlet implementation class UpdateCmnt
 */
@WebServlet("/updateCmnt.do")
public class UpdateCmnt extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		
		
		int cmntNumber = Integer.parseInt( request.getParameter( "comment_number" ) );
			
		System.out.println( "UpdateCmnt.java : jsp에서 ajax한테 넘겨받은 댓글 번호 ==> " + cmntNumber );
		
		// 가져온 댓글 번호로 해당되는 cmntVO 객체 가져옴 
		CmntVO cmntVo = service.getSingleCmnt( cmntNumber );
		
		// 그 객체의 내용을 수정하고
		cmntVo.setCmnt_cont( request.getParameter( "comment_content" ) );
		
		System.out.println( "UpdateCmnt.java : 내용 수정 전 : " + cmntVo.getCmnt_cont() );
		
		// 그 객체를 수정쿼리문에 날린다.
		int cnt = (int) service.updateCmnt(  cmntVo );
		
		System.out.println( "UpdateCmnt.java : 내용 수정 후 : " + cmntVo.getCmnt_cont() );
		
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
