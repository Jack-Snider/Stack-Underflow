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
 * Servlet implementation class DeleteCmnt
 */
@WebServlet("/deleteCmnt.do")
public class DeleteCmnt extends HttpServlet {
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
		
		// 서비스객체 생성
		ICmntService service = CmntServiceImpl.getInstance();
		
		// 세션객체 생성
		HttpSession session = request.getSession();
				
		// 현재 상세페이지의 게시글 객체
		PostVO post = (PostVO) session.getAttribute( "detailPost" );
				
		// 현재 로그인 되어있는 계정 
		MemberVO memberVo = (MemberVO) session.getAttribute( "Mem_vo" );
		
		// ajax로부터 받은 댓글번호를 숫자형으로 변환
		int cmntNumber = Integer.parseInt( request.getParameter( "comment_number" ) );
		
		// 불러운 댓글번호로 삭제할 CmntVO 객체를 가져옴
		CmntVO cmntVo = service.getSingleCmnt( cmntNumber );
		
		// 삭제할 객체를 삭제 쿼리안에 넣어준다.
		int cnt = service.deleteCmnt( cmntVo );
		
		// cnt가 0보다 크면 삭제에 성공한 것.
		if( cnt > 0 ) {
			
			// 이제 여기서 새롭게 업데이트된 리스트를 불러와서 다시 ajax에 쏴줘야함
			List<CmntVO> cmntList = (List<CmntVO>)service.getCmnts( post.getPost_num() + "" );
			session.setAttribute( "cmntList" , cmntList );
			jsonData = gson.toJson(cmntList);
			out.write(jsonData);	
			response.flushBuffer();
			
		}
		
		
		// ajax로 쏴주기
		
		
		//int cmntNumber = Integer.parseInt( request.getParameter( "comment_number" ) );
		
		
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
