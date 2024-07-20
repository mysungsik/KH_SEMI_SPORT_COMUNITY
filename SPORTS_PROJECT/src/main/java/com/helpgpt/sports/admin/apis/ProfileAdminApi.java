package com.helpgpt.sports.admin.apis;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
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
		String adminAuthority = loginUser.getUserAuthority();
		
		Map<String, Object> result = new HashMap<>();
		
		// 권한 있다면
		if (adminAuthority.equals("A")) {
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
				};break;
				
				default : {
					System.out.println("잘못된 URL");
				};
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
		PrintWriter out = res.getWriter();
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
		String adminAuthority = loginUser.getUserAuthority();
		
		Map<String, Object> result = new HashMap<>();
		
		// 권한 있다면
		if (adminAuthority.equals("A")) {
			switch (path) {
				case "updateUserInfo": {
					int userNo = Integer.parseInt(req.getParameter("userNo"));
					String userAuthority =  req.getParameter("userAuthority");
					String userState = req.getParameter("userState");
					
					User user = new User();
					user.setUserNo(userNo);
					user.setUserAuthority(userAuthority);
					user.setUserState(userState);
					
					int updateResult = service.updateUserInfo(user);
					
					if (updateResult > 0) {
						
						result.put("data", "success to update user Auth");
						result.put("message", "유저 업데이트에 성공했습니다.");
					}
					else {
						result.put("message", "유저 업데이트에 성공했습니다.");
					}
					
					new Gson().toJson(result, out);
				};break;
				case "deleteUser": {
					
					int userNo = Integer.parseInt(req.getParameter("userNo"));
					int deleteResult = service.deleteUser(userNo);
					
					if (deleteResult > 0) {
						LocalDateTime currentDateTime = LocalDateTime.now();
						DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
						String formatedCurrentDatetime = currentDateTime.format(format);
						
						result.put("data", formatedCurrentDatetime);
						result.put("message", "삭제에 성공하였습니다.");
						new Gson().toJson(result, out);
					}else {
						result.put("message", "삭제에 실패하였습니다.");
						new Gson().toJson(result, out);
					}
				};break;
				default : {
					System.out.println("잘못된 URL");
				};
				
				
			}
		}

		// 권한 없다면
		else {
			result.put("message", "You do not have permission");
			
			new Gson().toJson(result, out);
			return;
		}
	}
}
