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

				session.setAttribute("loginUser", loginUser);
				session.setMaxInactiveInterval(10);

				// 로그인 성공 && 로그인상태유지를 체크한경우 (30일간 저장) - 쿠키에 UUID 를 만들어서 저장시킴
				if (stayLogin.equals("true")) {
					Cookie cookie = new Cookie("rememberLogin", UUID.randomUUID().toString());
					cookie.setHttpOnly(true); // 클라이언트 측 스크립트에서 접근 불가
					cookie.setMaxAge(3600 * 24 * 30); // 30일간 지속
					cookie.setPath(req.getContextPath()); // 쿠키 경로 contextPath 로 설정
					res.addCookie(cookie);
					
					// 추가적으로 UUID token 과, userId 를 DB 에 저장
					// TODO : userID, userPw, token 저장 (DB에) -> AuthFilter 에서 rememberLogin 토큰 확인 후 (있을경우) 로그인 수행
				}

				result.put("message", "환영합니다.");
				result.put("data", "Login Success"); // 로그인 성공시만 data 전달

				new Gson().toJson(result, out);
			} else {
				result.put("message", "해당 유저는 존재하지 않습니다.");
				new Gson().toJson(result, out);
			}
		}
			break;

		case "logout": {
			HttpSession session = req.getSession();

			if (session != null) {
				session.setAttribute("loginUser", null);
			}

			// 쿠키 제거
			Cookie cookie = new Cookie("rememberLogin", null);
			cookie.setMaxAge(0);
			res.addCookie(cookie);

			res.sendRedirect(contextPath + "/login");
		}break;
		default:
			System.out.println("[ERROR] LOGIN API");
		}
	}
}
