package ufo.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ufo.member.service.IMemberService;
import ufo.member.service.MemberServiceImpl;

@WebServlet("/DuplicationCheck.do")
public class DuplicationCheck extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		Enumeration<String> keys = request.getParameterNames();
		
		String key = "";
		
		while(keys.hasMoreElements()) {
			key = (String)keys.nextElement();
		}
		
		String value = request.getParameter(key);
		
		IMemberService service = MemberServiceImpl.getInstance();
		
		Gson gson = new Gson();
		
		String jsonData = null;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		
		if(key.equals("idcheck")) {
			int res = service.checkById(value);
			map.put("idres", res);
		}else if(key.equals("dncheck")) {
			int res = service.checkByNknm(value);
			map.put("dnres", res);
		}
		
		jsonData = gson.toJson(map);
		System.out.println("jsonData => "+jsonData);
		out.write(jsonData);	
		response.flushBuffer();
		
	}

}
