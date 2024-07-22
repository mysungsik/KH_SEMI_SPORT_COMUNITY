package com.helpgpt.sports.admin.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.helpgpt.sports.login.model.vo.User;

@WebServlet(name = "profileAdminController",
			urlPatterns = {
				"/admin/profile/",
				"/admin/profile/*"}
)

public class ProfileAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	RequestDispatcher dispatcher;
	final String defaultURLPath = "/WEB-INF/views/profile/";

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(false);
		String contextPath =  req.getContextPath();
		
		User loginUser = (User)session.getAttribute("loginUser");
		
		String reqPath = req.getPathInfo();
		String path = "";
		
		if(reqPath != null) {
			path = reqPath.split("/")[1];
		}
		
		// 로그인을 안했을경우
		if (loginUser == null) {
			resp.sendRedirect(contextPath +"/login");
		} 
		// 로그인헸지만, Admin 이 아닐경우
		else if (loginUser != null && !loginUser.getUserAuthority().equals("A")) {
			resp.sendRedirect(contextPath +"/profile");
		}
		else {
			// 경로에 따라 필요한 페이지로 추가 이동
			switch (path) {
			case "":{
				dispatcher = req.getRequestDispatcher(defaultURLPath + "profileAdminUserManage.jsp");
				req.setAttribute("page", "userManagement");
				dispatcher.forward(req, resp);
			};break;
			case "userManagement": {
				dispatcher = req.getRequestDispatcher(defaultURLPath + "profileAdminUserManage.jsp");
				req.setAttribute("page", "userManagement");
				dispatcher.forward(req, resp);
			};break;
			case "reportManagement": {
				dispatcher = req.getRequestDispatcher(defaultURLPath + "profileAdminReportManage.jsp");
				req.setAttribute("page", "reportManagement");
				dispatcher.forward(req, resp);
			};break;
			default:System.out.println("404 페이지로 이동");
			};
		}
	}
}
