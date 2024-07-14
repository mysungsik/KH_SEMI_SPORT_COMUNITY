package com.helpgpt.sports.login.apis;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.helpgpt.sports.login.model.service.UserService;
import com.helpgpt.sports.login.model.vo.User;

/**
 * Servlet implementation class Login
 */
@WebServlet("/api/user/*")
public class UserApi extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService service = new UserService();
	

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out = res.getWriter();
		String contextPath = req.getContextPath();
		User loginUser = null;
		
		// Path 지정
		String reqPath = req.getPathInfo();
		String path = "";
		
		if(reqPath != null) {
			path = reqPath.split("/")[1];
		}
		
		// 경로에 따라 필요한 기능을 사용 ("*" 이후 들어갈 첫번째 값이 해당 기능)
		switch (path) {
			case "login": {
				String inputId = req.getParameter("inputId");
				String inputPw = req.getParameter("inputPw");
				
				User loginInfo = new User(inputId,inputPw);
				
				loginUser = service.userLogin(loginInfo);
				
				Map<String, Object> result = new HashMap<>();
				
				System.out.println(loginUser);
				
				if (loginUser != null){
					HttpSession session = req.getSession();
					
					session.setAttribute("loginUser", loginUser);
					session.setMaxInactiveInterval(3600);
					
					result.put("message", "환영합니다.");
					result.put("data", loginUser);
					
					new Gson().toJson(result, out);
				}
				
				// 로그인 실패시
				else {
					result.put("message", "해당 유저는 존재하지 않습니다.");
					new Gson().toJson(result, out);
				}
			}break;
				
			case "logout" : {
				HttpSession session = req.getSession();
				session.setAttribute("loginUser", null);
				
				res.sendRedirect(contextPath + "/login");
			}break;
			default:System.out.println("[ERROR] LOGIN API");
		}
	}
}
