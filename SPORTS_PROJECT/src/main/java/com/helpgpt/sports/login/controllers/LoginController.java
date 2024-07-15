package com.helpgpt.sports.login.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.helpgpt.sports.login.model.vo.User;

@WebServlet(name = "LoginController",
		urlPatterns = {
			"/login"}
		)

public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	RequestDispatcher dispatcher;
	final String defaultURLPath = "/WEB-INF/views/login/";

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(false);
		String contextPath =  req.getContextPath();
		User loginUser = null;
		
		if (session != null) {
			loginUser = (User)session.getAttribute("loginUser");
			
		}
		
		// 로그인 하지 않은 유저만 페이지 접근 가능
		if (loginUser == null) {
			dispatcher = req.getRequestDispatcher(defaultURLPath + "login.jsp");
			dispatcher.forward(req, resp);
		} else {
			resp.sendRedirect(contextPath + "/dashboard");
		}
	}
}

