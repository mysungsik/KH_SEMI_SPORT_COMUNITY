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
import com.helpgpt.sports.login.model.vo.User;

/**
 * Servlet implementation class Login
 */
@WebServlet("/api/user/*")
public class UserApi extends HttpServlet {
	private static final long serialVersionUID = 1L;

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
				
				
				Map<String, Object> result = new HashMap<>();
				
				/** TODO [로그인객체생성]
					DAO 접근 후 DB 데이터 확인, 로그인유저객체 생성 할 것
				*/
				loginUser = new User(1, inputId, "test@email.com", inputPw);
	
				/** TODO [로그인 조건 변경]
				 	위 로그인객체생성 TODO완료시, 로그인 성공 조건을 looginUser != null 로 변경할것
				 	현재 로그인 가능한 아이디와 비밀번호
				 		id : sportsUser
				 		pw : Qwertyuiop1
				*/
				if (inputId.equals("sportsUser") && 
					inputPw.equals("KQZ3dpm+3daZEkqDpEvtnk6AMuxOJ22ZNR1WmZoxVVq+5YWwAZ+SflpCH26gc3X2nVzfL1zre30F+jsMxgowaw==")){
					HttpSession session = req.getSession();
					
					session.setAttribute("isLogin", true);
					session.setMaxInactiveInterval(3600);
					
					/** TODO: 로그인유저객체도 GSON 으로 전달 
						보낼 loginUser 객체의 데이터는 최소환으로만 보낼것 (no, ID, Email, Name 정도만)
					*/
					result.put("message", "환영합니다.");
					result.put("data", loginUser);
					
					new Gson().toJson(result, out);
					
				// 로그인 실패시
				} else {
					result.put("message", "해당 유저는 존재하지 않습니다.");
					result.put("data", null);
					
					new Gson().toJson(result, out);
				}
			}break;
				
			case "logout" : {
				HttpSession session = req.getSession();
				session.setAttribute("isLogin", false);
				
				res.sendRedirect(contextPath + "/login");
			}break;
			default:System.out.println("[ERROR] LOGIN API");
		}
	}
}
