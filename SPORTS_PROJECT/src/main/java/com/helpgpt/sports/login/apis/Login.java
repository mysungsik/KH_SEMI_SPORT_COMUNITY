package com.helpgpt.sports.login.apis;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/api/login/*")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String contextPath = req.getContextPath();
		
		// Path 지정
		String reqPath = req.getPathInfo();
		String path = "";
		
		if(reqPath != null) {
			path = reqPath.split("/")[1];
		}
		
		// 경로에 따라 필요한 기능을 사용 ("*" 이후 들어갈 첫번째 값이 해당 기능)
		switch (path) {
		case "login": {
			String userId = req.getParameter("userId");
			String userPw = req.getParameter("userPw");
			
			// ToDo
			// 1. 로그인 validation 다시
			// 2. Model 으로 데이터 확인
			// 3. 로그인 성공후 적절한 메시지 반환
			
			HttpSession session = req.getSession();
			session.setAttribute("isLogin", true);
			
			res.sendRedirect(contextPath + "/dashboard");
			}break;
			
		case "logout" : {
			HttpSession session = req.getSession();
			session.setAttribute("isLogin", false);
			
			res.sendRedirect(contextPath + "/login");
		}break;
		default:System.out.println("[ERROR] LOGIN API");}
	}
}
