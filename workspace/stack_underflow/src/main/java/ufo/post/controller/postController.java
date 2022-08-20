package ufo.post.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.multipart.Part;

import ufo.cmnt.service.CmntServiceImpl;
import ufo.cmnt.service.ICmntService;
import ufo.post.service.IPostService;
import ufo.post.service.PostServiceImpl;
import ufo.vo.MemberVO;
import ufo.vo.PageVO;
import ufo.vo.PostVO;

/**
 * Servlet implementation class postController
 */
@WebServlet("/postController.do")
@MultipartConfig(
		   fileSizeThreshold = 1024 * 1024 * 10, maxFileSize = 1024 * 1024 * 30,
		   maxRequestSize = 1024 * 1024 * 100
		)
public class postController extends HttpServlet {
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
		IPostService service = PostServiceImpl.getInstance();
		
		ICmntService serviceCmnt = CmntServiceImpl.getInstance();
		
		// session객체 생성
		HttpSession session = request.getSession();
		
		// 현재 로그인 되어있는 아이디
		MemberVO memVo = ( MemberVO ) session.getAttribute( "Mem_vo" );
		
		// PostVO 객체 생성
		PostVO postVo = new PostVO();
	
		//String post_reg_date = "2022-08-14";
		int post_views = 0;
		int post_like = 0;
		int post_dislike = 0;
		//String post_udt_date = "2022-08-14";
		int file_num = 83;
		//String mem_id = request.getParameter( "memVoServlet" );
		String mem_id = memVo.getMem_id();
		String post_board_type = request.getParameter( "boardKind" );

		String post_title = request.getParameter("title");
		postVo.setPost_title(post_title);

		String post_content = request.getParameter("content");
		postVo.setPost_cont(post_content);

		postVo.setPost_views(post_views);
		postVo.setPost_like(post_like);
		postVo.setPost_dislike(post_dislike);
		postVo.setFile_num(file_num);
		postVo.setPost_board_type(post_board_type);
		postVo.setMem_id(mem_id);

		service = PostServiceImpl.getInstance();
		int cnt = service.insertPost(postVo);
		
		// PostVO 객체 생성
		// PostVO postVo = new PostVO();
		List<PostVO> list = service.getAllPost();

//================================= 파일 저장 코드 =================================
		
		
		// 업로드된 파일들이 저장될 폴더 설정 ==> 서버쪽의 파일 경로
	    String uploadPath = "c:/stack_underflow_files";
		
	    // 저장할 폴더가 없으면 새로 만든다.
	    File f = new File(uploadPath);
	    if(!f.exists()) {
	    	f.mkdirs();
	      }
	    
	    Part part = (Part) request.getPart("fileName");
	    String fileName = getFileName(part);
        if (!fileName.isEmpty()) {
            ((javax.servlet.http.Part) part).write("C:\\uploadTest\\"+fileName);
        }
	    
	    
	    
//==============================================================================		
		
		
		// 가져온 post 목록 정보를 포워딩으로 View페이지에 보내준다.
		if(cnt == 1) {
			int currentPage = Integer.parseInt(request.getParameter("currentPage"));
			String column = request.getParameter("column");
			String condition = request.getParameter("condition");

			service = PostServiceImpl.getInstance(); // Jack Snider 수정

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
			
			request.getRequestDispatcher("/pages/postList.jsp").forward(request, response);		
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

	
	
	
	
	  // Part구조 안에서 파일명을 찾는 메서드
	   private String getFileName(Part part) {
	      String fileName = "";
	      
	      // content-disposition헤더 정보 구하기
	      String headerValue = ((HttpServletRequest) part).getHeader("content-disposition"); // -> 값 : form-data; name="uploadfile1"; filename="test1.txt"
	      String[] items = headerValue.split(";");
	      for(String item : items) {
	         if(item.trim().startsWith("filename")) {
	            fileName = item.substring(item.indexOf("=")+2, item.length()-1);
	         }
	      }
	      return fileName;
	   }
	
	
	
	
	
	
}
