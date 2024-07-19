package com.helpgpt.sports.profile.apis;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
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
import com.helpgpt.sports.profile.model.vo.LoginHistory;
import com.helpgpt.sports.profile.service.ProfileService;

/**
 * Servlet implementation class Login
 */
@WebServlet("/api/profile/*")
public class ProfileApi extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProfileService service = new ProfileService();

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out = res.getWriter();
		User loginUser = null;

		// Path 지정
		String reqPath = req.getPathInfo();
		String path = "";

		if (reqPath != null) {
			path = reqPath.split("/")[1];
		}

		// 경로에 따라 필요한 기능을 사용
		switch (path) {
			case "getUserHistories" : {
				HttpSession session = req.getSession(false);
				
				Map<String, Object> result = new HashMap<>();
				
				if (session != null) {
					loginUser = (User)session.getAttribute("loginUser");
					int loginUserNo = loginUser.getUserNo();
					
					List<LoginHistory> loginHistories = service.getUserHistory(loginUserNo);
					
					if (!loginHistories.isEmpty()) {
						result.put("data", loginHistories);
						result.put("message", "success to login histories");
					} else {
						result.put("message", "failed to login histories");
					}
				
					new Gson().toJson(result, out);
				}
			};break;
			default: {
				System.out.println("[ERROR] USER API");
			}
		}
	}
}
