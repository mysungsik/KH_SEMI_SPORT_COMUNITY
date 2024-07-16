package com.helpgpt.sports.login.apis;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
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

		if (reqPath != null) {
			path = reqPath.split("/")[1];
		}

		// 경로에 따라 필요한 기능을 사용 ("*" 이후 들어갈 첫번째 값이 해당 기능)
		switch (path) {
		case "login": {
			String inputId = req.getParameter("inputId");
			String inputPw = req.getParameter("inputPw");
			String stayLogin = req.getParameter("stayLogin");

			User loginInfo = new User(inputId, inputPw);

			loginUser = service.userLogin(loginInfo);

			Map<String, Object> result = new HashMap<>();

			// 로그인 성공 여부
			if (loginUser != null) {
				HttpSession session = req.getSession();
				session.setMaxInactiveInterval(300);

				session.setAttribute("loginUser", loginUser);

				// 로그인 성공 && 로그인상태유지를 체크한경우 (30일간 저장) - 쿠키에 UUID 를 만들어서 저장시킴
				if (stayLogin.equals("true")) {
					String sessionUUID = UUID.randomUUID().toString();
					Cookie cookie = new Cookie("rememberLogin", sessionUUID );
					cookie.setHttpOnly(true); // 클라이언트 측 스크립트에서 접근 불가
					cookie.setMaxAge(3600 * 24 * 30); // 30일간 지속
					cookie.setPath(req.getContextPath()); // 쿠키 경로 contextPath 로 설정
					
					// 세션정보 DB 에 저장
					service.updateSessionUUID(loginUser, sessionUUID);
					res.addCookie(cookie);
				}

				result.put("message", "환영합니다.");
				result.put("data", "Login Success"); // 로그인 성공시만 data 전달

				new Gson().toJson(result, out);
			} else {
				result.put("message", "해당 유저는 존재하지 않습니다.");
				new Gson().toJson(result, out);
			}
		}break;

		case "logout": {
			HttpSession session = req.getSession(false);

			if (session != null) {
				session.setAttribute("loginUser", null);
			}

			// 쿠키 제거
			Cookie cookie = new Cookie("rememberLogin", null);
			cookie.setMaxAge(0);
			cookie.setPath(req.getContextPath()); // 쿠키 경로 contextPath 로 설정
			res.addCookie(cookie);
			
			res.sendRedirect(contextPath + "/login");
		}break;
		
		case "update" : {
			HttpSession session = req.getSession(false);
			
			String inputType = req.getParameter("type");
			String inputData = req.getParameter("data");
			int updateResult = 0;
			
			Map<String, Object> result = new HashMap<>();
			
			if (session != null) {
				loginUser = (User)session.getAttribute("loginUser");
				int userNo = loginUser.getUserNo();
				
				updateResult = service.updateUserInfo(userNo, inputType, inputData);
			
				if(updateResult > 0) {
					updateLoginUserInfo(loginUser, inputType, inputData);
					result.put("data", "update Success");
					result.put("message", "성공적으로 업데이트되었습니다.");
				}else {
					result.put("message", "업데이트에 실패하였습니다.");
				}
				
				new Gson().toJson(result, out);
			}
		};break;
		
		default:
			System.out.println("[ERROR] USER API");
		}
	}
	
	private void updateLoginUserInfo(User loginUser, String inputType, String inputData) {
		switch (inputType) {
			case "USER_EMAIL": {
				loginUser.setUserEmail(inputData);
			};break;
			case "USER_PHONE": {
				loginUser.setUserPhone(inputData);
			};break;
			case "USER_SNS": {
				loginUser.setUserSns(inputData);
			};break;
			case "USER_BD": {
				loginUser.setUserBd(inputData);
			};break;
			case "USER_ADDRESS": {
				loginUser.setUserAddress(inputData);
			};break;
		}
	}
}
