package ufo.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ufo.files.service.FilesServiceImpl;
import ufo.files.service.IFilesService;
import ufo.member.service.IMemberService;
import ufo.member.service.MemberServiceImpl;
import ufo.vo.FilesVO;
import ufo.vo.MemberVO;

@WebServlet("/InsertMember.do")
public class InsertMember extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		/*
		 * 프로세스 순서 
		 * 1. 사진 파일 DB에 저장 
		 * 2. files_etc = mem_id의 조건이 맞는 files_num을 가져온다. 
		 * 3. 회원의 정보를 DB에 저장한다.
		 */

		request.setCharacterEncoding("utf-8");

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
		
		IMemberService service1 = MemberServiceImpl.getInstance();
		int cnt1 = service1.insertMember(memVo);
		
		if (cnt1 != 0) {
			
			
			FilesVO fvo = new FilesVO();
			fvo.setFile_name("프로필 사진");
			fvo.setFile_ext("jpg");
			fvo.setFile_size("1Mb");
			fvo.setFile_etc("기본 이미지");
			fvo.setMem_id(memVo.getMem_id());
			IFilesService service2 = FilesServiceImpl.getInstance();
			int cnt2 = service2.insertFiles(fvo);
			if (cnt2 !=0) {
				response.sendRedirect(request.getContextPath() + "/jsp/signUpSuccess.jsp");
			}else {
				response.sendRedirect(request.getContextPath() + "/jsp/filesInsertFail.jsp");
			}
		}else {
			response.sendRedirect(request.getContextPath() + "/jsp/signUpFail.jsp");
		}

	}

}
