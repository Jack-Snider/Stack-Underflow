package ufo.member.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import ufo.files.service.FilesServiceImpl;
import ufo.files.service.IFilesService;
import ufo.member.service.IMemberService;
import ufo.member.service.MemberServiceImpl;
import ufo.vo.FilesVO;
import ufo.vo.MemberVO;

@WebServlet("/InsertMember.do")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, maxFileSize = 1024 * 1024 * 30, maxRequestSize = 1024 * 1024
		* 100)
public class InsertMember extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();


		MemberVO memVo = new MemberVO();
		memVo.setMem_id(request.getParameter("mem_id"));
		memVo.setMem_pass(request.getParameter("mem_pass"));
		memVo.setMem_nknm(request.getParameter("mem_nknm"));
		memVo.setMem_nm(request.getParameter("mem_nm"));
		memVo.setMem_regno(request.getParameter("mem_regno1") + " - " + request.getParameter("mem_regno2"));
		memVo.setMem_email(request.getParameter("mem_email"));
		memVo.setMem_addr1(request.getParameter("mem_addr1"));
		memVo.setMem_addr2(request.getParameter("mem_addr2"));
		memVo.setMem_qstn(request.getParameter("mem_qstn"));
		memVo.setMem_ans(request.getParameter("mem_ans"));
		memVo.setMem_score(0);
		memVo.setMem_rank("Unranked");
		memVo.setMem_stat(0);
		memVo.setMem_postcode(Integer.parseInt(request.getParameter("mem_postcode")));
		
		IMemberService service1 = MemberServiceImpl.getInstance();
		int cnt1 = service1.insertMember(memVo);

		if (cnt1 != 0) {

			String filePath = "d:/MiddleProjectTest";

			File f = new File(filePath);
			if (!f.exists()) {
				f.mkdirs();
			}

			Part part = request.getPart("pfImg");
			
			String mem_id = request.getParameter("mem_id");
			String fileInfo = getFileInfo(part);
			
			if(fileInfo.equals("")) {
				
				FilesVO fvo = new FilesVO();
				
				fvo.setFile_name("프로필사진_기본이미지");
				fvo.setFile_ext("프로필사진_기본이미지");
				fvo.setFile_size(404);
				fvo.setFile_save_name("프로필사진_기본이미지");
				fvo.setFile_etc("프로필사진_기본이미지");
				fvo.setMem_id(mem_id);
				
				IFilesService service = FilesServiceImpl.getInstance();
				int cnt2 = service.insertFiles(fvo);
				
				if (cnt2 != 0) {
					out.print("<html>");
					out.print("<body>");
					out.print("<script>alert('회원가입에 성공했습니다. 로그인 페이지로 돌아갑니다.');location.href='./common/login.jsp';</script>");
					out.print("</body>");
					out.print("</html>");
					//response.sendRedirect(request.getContextPath() + "/jsp/signUpSuccess.jsp");
				}else {
					out.print("<html>");
					out.print("<body>");
					out.print("<script>alert('파일이 등록되지 않았습니다.');</script>");
					out.print("</body>");
					out.print("</html>");
					//response.sendRedirect(request.getContextPath() + "/jsp/filesInsertFail.jsp");
				}
				
			}else {
				
				String fileName = fileInfo.substring(0, fileInfo.indexOf("."));
				String fileExt = fileInfo.substring(fileInfo.indexOf(".") + 1);

				FilesVO fvo = new FilesVO();
				
				fvo.setFile_name(fileName);
				fvo.setFile_ext(fileExt);
				fvo.setFile_size((long)(Math.ceil(part.getSize()/1024.0)));
				String saveFileName = UUID.randomUUID().toString();
				fvo.setFile_save_name(saveFileName);
				fvo.setFile_etc("프로필사진_회원업로드");
				fvo.setMem_id(mem_id);

				try {
					part.write(filePath + File.separator + saveFileName); 
				} catch (Exception e) {
					e.printStackTrace();
				}
				
				IFilesService service = FilesServiceImpl.getInstance();
				int cnt2 = service.insertFiles(fvo);
				
				if (cnt2 != 0) {
					out.print("<html>");
					out.print("<body>");
					out.print("<script>alert('회원가입에 성공했습니다. 로그인 페이지로 돌아갑니다.');location.href='./common/login.jsp';</script>");
					out.print("</body>");
					out.print("</html>");
					//response.sendRedirect(request.getContextPath() + "/jsp/signUpSuccess.jsp");
				}else {
					out.print("<html>");
					out.print("<body>");
					out.print("<script>alert('파일이 등록되지 않았습니다.');</script>");
					out.print("</body>");
					out.print("</html>");
					//response.sendRedirect(request.getContextPath() + "/jsp/filesInsertFail.jsp");
				}
			}
			
		}else {
			out.print("<html>");
			out.print("<body>");
			out.print("<script>alert('회원가입에 실패했습니다.');</script>");
			out.print("</body>");
			out.print("</html>");
			//response.sendRedirect(request.getContextPath() + "/jsp/signUpFail.jsp");
		}

	}

	private String getFileInfo(Part part) {
		String fileInfo = "";
		String headerValue = part.getHeader("content-disposition"); 
		String[] items = headerValue.split(";");
		for (String item : items) {
			if (item.trim().startsWith("filename")) {
				fileInfo = item.substring(item.indexOf("=") + 2, item.length() - 1);
			}
		}
		return fileInfo;
	}

}
