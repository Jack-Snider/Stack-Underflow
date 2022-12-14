package ufo.post.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
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
import ufo.post.service.IPostService;
import ufo.post.service.PostServiceImpl;
import ufo.vo.CmntVO;
import ufo.vo.MemberVO;
import ufo.vo.PostVO;

/**
 * Servlet implementation class PostDetail
 */
@WebServlet("/postDetail.do")
public class PostDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		/* Jack Snider 시작 */
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		/* 호겸 삭제 */
		
		// Service객체 생성
		IPostService service = PostServiceImpl.getInstance();
		ICmntService serviceCmnt = CmntServiceImpl.getInstance(); // Jack Snider 추가
		
		String num = request.getParameter( "postNum" );
		int postNum = Integer.parseInt( num );
		
		/* 호겸 시작 */
		int cnt = service.increaseViews(postNum);
		if (cnt == 0) System.out.println("조회수 증가 실패");
		/* 호겸 끝 */
		
		// 세션객체 생성
		HttpSession session = request.getSession();
		
		// Detail 페이지에서 가져온 postVo객체
		PostVO postVo = ( PostVO )service.getDetailPost( postNum );
		
		// 현재 로그인 되어있는 member객체
		MemberVO memberVo = ( MemberVO ) session.getAttribute( "Mem_vo" );
		
		List<CmntVO> cmntList = ( List<CmntVO> )serviceCmnt.getCmnts( postVo.getPost_num() + "" );
		
		// 테스트 코드
		if( cmntList != null ) {
			System.out.println("어멋! cmntList는 널이 아니군요!");
			for( CmntVO cmntVo : cmntList ) {
				System.out.println( cmntVo.getCmnt_cont() );
			}
		}
		
//		Gson gson = new Gson();
//		String jsonData = null;
//		HashMap<String, List<CmntVO>> map = new HashMap<String, List<CmntVO>>();
		
//		map.put("cmntList", cmntList);
		
		boolean isMatch = false;
		
		if( memberVo != null ) {
			
			if( postVo.getMem_id().equals( memberVo.getMem_id() ) ) {
				// 현재 접속해있는 아이디와 게시글 작성자 아이디가 일치 하면
				isMatch = true;
			}
			
			// 가져온 post 목록 정보를 포워딩으로 View페이지에 보내준다.
			request.setAttribute("detailPost", postVo); // 현재 게시글 객체
			request.setAttribute("ismatch", isMatch); 
			request.setAttribute( "detailCmnt" , cmntList );
			request.getRequestDispatcher("/rank/assets/postDetail.jsp").forward(request, response);
			
//			jsonData = gson.toJson(map);
//			out.write(jsonData);	
//			response.flushBuffer();
			
		}else {
			
			request.getRequestDispatcher("/common/login.jsp").forward(request, response);
			
		}
		
		
		

		/* Jack Snider 끝 */
		
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
