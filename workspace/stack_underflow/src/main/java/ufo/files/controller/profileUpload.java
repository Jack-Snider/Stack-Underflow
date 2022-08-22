package ufo.files.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import ufo.vo.FilesVO;

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
		
		// 업로드된 파일들이 저장될 폴더 설정 ==>  서버쪽의 파일 경로
		String uploadPath = "c:/stack_underflow_files";
		
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
		}
		
		
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
