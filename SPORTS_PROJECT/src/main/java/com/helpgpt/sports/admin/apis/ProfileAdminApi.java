package com.helpgpt.sports.admin.apis;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.helpgpt.sports.admin.model.service.ProfileAdminService;
import com.helpgpt.sports.login.model.vo.User;

/**
 * Servlet implementation class ProfileAdminApi
 */
@WebServlet("/api/admin/profile/*")
public class ProfileAdminApi extends HttpServlet {
	ProfileAdminService service = new ProfileAdminService();
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out = res.getWriter();
		String contextPath = req.getContextPath();
		User loginUser = null;

		// Path 지정
		String reqPath = req.getPathInfo();
		String path = "";

		if (reqPath != null) {
			path = reqPath.split("/")[1];
		}
		
		// Admin 권한 확인
		HttpSession session = req.getSession(false);
		loginUser = (User)session.getAttribute("loginUser");
		String userAuthority = loginUser.getUserAuthority();
		
		Map<String, Object> result = new HashMap<>();
		
		// 권한 있다면
		if (userAuthority.equals("A")) {
			switch (path) {
				case "getAllUsersData": {
					
					List<User> userList = service.getAllUserInfo();
					
					if (userList.size() > 0) {
						result.put("message", "success get all user info");
						result.put("data", userList);
						new Gson().toJson(result, out);
					}else {
						result.put("message", "failed get all user info");
						new Gson().toJson(result, out);
					}
				}
			}
		}

		// 권한 없다면
		else {
			result.put("message", "You do not have permission");
			
			new Gson().toJson(result, out);
			return;
		}
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	}
}
