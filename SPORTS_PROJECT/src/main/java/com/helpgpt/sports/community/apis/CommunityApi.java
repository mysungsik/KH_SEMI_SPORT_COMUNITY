package com.helpgpt.sports.community.apis;

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
@WebServlet("/api/community/*")
public class CommunityApi extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// Path 지정
		String reqPath = req.getPathInfo();
		String path = "";
		
		if(reqPath != null) {
			path = reqPath.split("/")[1];
		}
		
		// 경로에 따라 필요한 기능을 사용 ("*" 이후 들어갈 첫번째 값이 해당 기능)
		switch (path) {
		case "insertPost": {
			// 필요 서비스 호출
			
		}break;
			
		default:System.out.println("[ERROR] COMMUNUNITY API");}
	}
	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Path 지정
		String reqPath = req.getPathInfo();
		String path = "";
		
		if(reqPath != null) {
			path = reqPath.split("/")[1];
		}
		
		// 경로에 따라 필요한 기능을 사용 ("*" 이후 들어갈 첫번째 값이 해당 기능)
		switch (path) {
		case "deletePost": {
			// 필요 서비스 호출
			
		}break;
			
		default:System.out.println("[ERROR] COMMUNUNITY API");}
	}
}
