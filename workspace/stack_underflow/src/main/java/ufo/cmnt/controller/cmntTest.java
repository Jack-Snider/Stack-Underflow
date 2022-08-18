package ufo.cmnt.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ufo.cmnt.service.CmntServiceImpl;
import ufo.cmnt.service.ICmntService;
import ufo.vo.CmntVO;

/**
 * Servlet implementation class cmntTest
 */
@WebServlet("/cmntTest.do")
public class cmntTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		CmntVO cmntVo = new CmntVO();
		
		cmntVo.setCmnt_cont( "이것은 테스트 댓글 1" );
		cmntVo.setCmnt_like( 0 );
		cmntVo.setPost_num( 201 );
		cmntVo.setCmnt_dislike( 0 );
		cmntVo.setMem_id( "asd" );
		
		ICmntService service = CmntServiceImpl.getInstance();
		
		
		List<CmntVO> list = (List<CmntVO>)service.getCmnts( "201" );
		
		if( list != null ) {
			out.print( "드디어?ㅜㅜ" + "<br>" );
			for( CmntVO cmnt : list ) {
				out.print( cmnt.getMem_id() + "<br>" );
				out.print( cmnt.getCmnt_cont() + "<br>" );
			}
		}
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
