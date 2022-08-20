package ufo.post.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import ufo.cmnt.service.CmntServiceImpl;
import ufo.cmnt.service.ICmntService;
import ufo.files.service.FilesServiceImpl;
import ufo.files.service.IFilesService;
import ufo.post.service.IPostService;
import ufo.post.service.PostServiceImpl;
import ufo.vo.FilesVO;
import ufo.vo.MemberVO;
import ufo.vo.PageVO;
import ufo.vo.PostVO;

/**
 * Servlet implementation class postController
 */
@WebServlet("/postController.do")
@MultipartConfig(
		   fileSizeThreshold = 1024 * 1024 * 10, 
		   maxFileSize = 1024 * 1024 * 30,
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

		System.out.println("파일번호 : " + request.getParameter( "fileNo" ));
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
		
		postVo.setPost_board_type(post_board_type);
		postVo.setMem_id(mem_id);

		service = PostServiceImpl.getInstance();
		
		
		
		// PostVO 객체 생성
		// PostVO postVo = new PostVO();
		List<PostVO> list = service.getAllPost();

//================================= 파일 저장 코드 =================================
		
		if( request.getParameter( "file" ) != null ) {
			// 업로드된 파일들이 저장될 폴더 설정 ==> 서버쪽의 파일 경로
		    String uploadPath = "c:/stack_underflow_files";
			
		    // 저장할 폴더가 없으면 새로 만든다.
		    File f = new File(uploadPath);
		    if(!f.exists()) {
		    	f.mkdirs();
		      }
		    
		    
		    // 수신 받은 파일 데이터 처리하기
		    String fileName = ""; // 전송된 파일명이 저장될 변수 선언
		    
		    // Upload한 파일 목록이 저장된 List객체 생성
		    List<FilesVO> fileList = new ArrayList<FilesVO>();
		    
		    /*
	        - Servlet 3.0이상에서 새롭게 추가된 Upload용 메서드
	        1) request.getParts() ==> 전체 Part객체를 Collection에 담아서 반환한다.
	        2) request.getPart("Part이름") ==> 지정된 'Part이름'을 가진 개별 Part객체를 반환한다.
	         'Part이름'은 <form>태그 안의 입력요소의 name속성값으로 구별한다.
		     */
		    
		    // 전체 Part객체 개수만큼 반복처리
		    for(Part part : request.getParts()) {
		        fileName = getFileName(part);
		        // 찾은 파일명이 공백문자("")이면 이것은 파일이 아닌 일반 파라미터라는 의미이다.
		        if(!"".equals(fileName)) {   // 파일인지 검사
		           // 파일 정보가 저장될 VO객체 생성
		           FilesVO fvo = new FilesVO();
		            
		           fvo.setMem_id( memVo.getMem_id() ); // 작성자 셋팅
		           fvo.setFile_name( fileName ); // 원래의 파일명 셋팅
		            
		           // 실제 저장되는 파일이름이 중복되는 것을 방지하기 위해서 UUID를 이용해서
		           // 중복되지 않는 파일명을 만든다.
		           String saveFileName = UUID.randomUUID().toString();
		            
		           // 새로 만들어진 저장파일명을 VO에 셋팅한다.
		           fvo.setFile_save_name( saveFileName );
		           
		           // part.getSize()메서드 ==> upload된 파일의 크기를 반환(단위:byte)
		            
		           // byte단위의 파일 크기를 KB단위로 변환해서 VO에 셋팅
		           fvo.setFile_size((long)(Math.ceil(part.getSize()/1024.0)));
		           
		           
		           fvo.setFile_etc( memVo.getMem_id() + "의 파일" );
		           
		           try {
		           // upload된 파일을 서버의 저장 폴더에 저장하기
		              // part.write()메서드 ==> upload된 파일을 저장하는 메서드
		              part.write(uploadPath + File.separator + saveFileName); // 파일 저장
		           } catch (Exception e) {
		              e.printStackTrace();
		           }
		           
		           
		           
		           fileList.add(fvo);   // upload된 파일 정보를 List에 추가하기
		       
		           
		           
		         }   // if문 끝...
		      }   // for문 끝....
		      // 업로드가 완료된 후에 업로드된 파일 정보를 DB에 추가한다.
		      IFilesService file_service = FilesServiceImpl.getInstance();
		      // List에 저장된 파일 정보들을 하나씩 DB에 추가하기
		      for(FilesVO fileVo : fileList) {
		         file_service.insertFiles(fileVo);
		      }
		      
		      
		      
		}else {
			
		}
		
		
	      
//==============================================================================		
		
	    postVo.setFile_num( 264 ); // 여기서 파일 번호만 불러오면 됨...
	    int cnt = service.insertPost(postVo);
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
	      String headerValue = part.getHeader("content-disposition"); // -> 값 : form-data; name="uploadfile1"; filename="test1.txt"
	      String[] items = headerValue.split(";");
	      for(String item : items) {
	         if(item.trim().startsWith("filename")) {
	            fileName = item.substring(item.indexOf("=")+2, item.length()-1);
	         }
	      }
	      return fileName;
	   }
	
	
	
	
	
	
}
