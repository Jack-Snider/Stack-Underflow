package ufo.files.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.google.gson.Gson;

import ufo.files.service.FilesServiceImpl;
import ufo.files.service.IFilesService;
import ufo.vo.FilesVO;
import ufo.vo.MemberVO;

/**
 * Servlet implementation class profileUpload
 */
@WebServlet("/profileUpload.do")
public class profileUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		/* <Jack Snider> */
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		
		
		HttpSession session = request.getSession();
		
		MemberVO memVo = (MemberVO)session.getAttribute("Mem_vo");
		
		// Upload한 파일 목록이 저장된 List객체 생성
	    List<FilesVO> fileList = new ArrayList<FilesVO>();
		
		// 업로드된 파일들이 저장될 폴더 설정 ==>  서버쪽의 파일 경로
		String uploadPath = "c:/stack_underflow_files";
		
		String saveFileName = "";
		
		
		// 저장할 폴더가 없으면 새로 만든다.
		File f = new File(uploadPath);
		if( !f.exists() ) {
			f.mkdir();
		}
		
		// 수신 받은 파일 데이터 처리하기
		String fileName = ""; // 전송된 파일명이 저장될 변수 선언
		
		// Upload한 파일 목록이 저장된 List객체 생성
		List<FilesVO> filesList = new ArrayList<FilesVO>();
		
		// 전체 Part객체 개수만큼 반복처리
		for( Part part : request.getParts() ) {
			fileName = getFileName(part);
			
			// 찾은 파일명이 공백문자("")이면 이것은 파일이 아닌 일반 파라미터라는 의미이다.
			if( !"".equals( fileName ) ) {
				// 파일 정보가 저장될 VO객체 생성
				FilesVO fvo = new FilesVO();
				fvo.setMem_id( memVo.getMem_id() );
				fvo.setFile_name( fileName );
				
				// 실제 저장되는 파일이름이 중복되는 것을 방지하기 위해서 UUID를 이용해서
				// 중복되지 않는 파일명을 만든다.
				saveFileName = UUID.randomUUID().toString();
				
				// 새로 만들어진 저장파일명을 VO에 세팅한다.
				fvo.setFile_save_name( saveFileName );
				
				// part.getSize() 메소드 ==> upload된 파일의 크기를 반한( 단위 : byte )
				
				// byte단위의 파일 크기를 KB단위로 변환해서 VO에 세팅
				fvo.setFile_size( (long)(Math.ceil(part.getSize()/1024.0)) );
				
				
				try {
					// upload된 파일을 서버의 저장 폴더에 저장하기
		            // part.write()메서드 ==> upload된 파일을 저장하는 메서드
					part.write(uploadPath + File.separator + saveFileName); // 파일 저장
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}
				
				fileList.add(fvo);   // upload된 파일 정보를 List에 추가하기
				
			}
			
		}
		
		
		
		// 업로드가 완료된 후에 업로드된 파일 정보를 DB에 추가한다.
		IFilesService service = FilesServiceImpl.getInstance();
	    // List에 저장된 파일 정보들을 하나씩 DB에 추가하기
	    for(FilesVO fileVo : fileList) {
	         service.insertFiles( fileVo );
	    }
		
	    
	    
	   FilesVO fileVo = service.getFileBySaveName( saveFileName );
	    
	   if( fileVo != null ) {
		   int fileNum = fileVo.getFile_num();
	   }else {
		   System.out.println( "profileUpload : file이 널인디유? ㅜㅜ" );
	   }
	   
	   
	   	// ajax로 보내주기 위해서
	   	//session.setAttribute("Mem_vo", vo);
		Gson gson = new Gson();
		PrintWriter out = response.getWriter();
		String jsonData = null;
		jsonData = gson.toJson( fileVo );
		out.write(jsonData);
		response.flushBuffer();
	   
	   
	   
	   // DB에 추가작업이 완료된 후 파일 목록을 보여주는 페이지로 이동한다.
	   response.sendRedirect(request.getContextPath()+"/mypage.jsp"); 
	   
		/* </Jack Snider> */
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
