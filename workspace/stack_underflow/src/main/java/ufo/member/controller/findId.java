package ufo.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ufo.member.service.IMemberService;
import ufo.member.service.MemberServiceImpl;
import ufo.vo.MemberVO;

@WebServlet("/findId.do")
public class findId extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();

		IMemberService service = MemberServiceImpl.getInstance();
		// findId.jsp에서 이름과 이메일을 받는다
		String name = request.getParameter("InputNameText");
		String email = request.getParameter("InputEmailText");
		
		
		String chckNAME="";
		
		
		// 아이디
		// 찾기===========================================================================
		
	
		//이메일과 이름 적는 란이 비었을경우...
		if (name == "" || email == "") {
			out.print("<html>");
			out.print("<body>");
			out.print("<script>alert('이름 또는 이메일란이 비었습니다.');history.back();</script>");
			out.print("</body>");
			out.print("</html>");

		} else {
			//이메일에 해당하는 이름과 입력한 이름의 일치여부 확인을 위한 문자변수 선언
			String compareEmail="";
			String compareName = "";
			
			
			int cnt=0;
			
			// 이름은 리스트로 전체값을 받아 입력받은 값과 일치하는지 확인
			List<MemberVO> list = service.findIdName();
			// 이메일값을 입력받아 해당하는 이름을 받는다
			MemberVO memVo1 = service.findIdEmail(email);
			// 이메일을 입력받아 이름 존재시 정수를 받는다
			cnt=service.findIdEmailCount(email);
			
			// 이메일을 검색하여 반환된 값이 1이면 compareEmail변수에 해당하는 이름을 넣어준다 
			// 그렇지 않다면 compareEmail="y"값을 준다
			if(cnt==0) {
				compareEmail="y"; //이름과 이메일의 같은값일경우 발생하는 오류방지를 위한 임의문자선언(1)
			}
			else if(cnt==1) {
				compareEmail = memVo1.getMem_nm();
			}
			
			// 리스트에서 이름을 검색하여 입력한 이름과 리스트에있는 같은이름이 존재한다면 compareName에 넣어주고
			// 그렇지 않다면 compareName="x"값을 준다
			for (MemberVO vo : list) {
				chckNAME = vo.getMem_nm();
				if (name.equals(chckNAME)) {
					compareName = name;
					break;
				}else {
					compareName="x"; //이름과 이메일의 같은값일경우 발생하는 오류방지를 위한 임의문자선언(2)
				}
			}
			// 위에서 받은 compareName과 compareEmail값이 같을경우
			//  아이디를 출력한다
				if (compareName.equals(compareEmail)) {
					String resultId = memVo1.getMem_id();
					out.print("<html>");
					out.print("<body>");
					out.print("<script>alert('당신의 아이디가 해당 이메일로 전송되었습니다.');");
					out.print("window.close();</script>");
					out.print("</body>");
					out.print("</html>");
					
					// 임의의 값 x,y를 통행 두값이 모두 틀린경우 알림 메시지 출력 
				} else {
					if (compareName == "x" && compareEmail=="y") {
						out.print("<html>");
						out.print("<body>");
						out.print("<script>alert('해당 이름과 이메일 주소가 존재하지 않습니다.');history.back();</script>");
						out.print("</body>");
						out.print("</html>");
					// 아이디 또는 이메일값이 정확할 경우 다시 입력하라고 알림을 띄워준다
					} else {
						out.print("<html>");
						out.print("<body>");
						out.print("<script>alert('이름과 이메일 주소가 일치하지 않습니다.');history.back();</script>");
						out.print("</body>");
						out.print("</html>");
					}

			}

		}

	}

}
