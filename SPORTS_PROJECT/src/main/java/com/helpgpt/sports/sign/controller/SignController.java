package com.helpgpt.sports.sign.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.helpgpt.sports.login.model.vo.User;

@WebServlet(name = "SignupController",
		urlPatterns = {
			"/signup",	
			"/signup/*"}
		)

public class SignController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	RequestDispatcher dispatcher;
	final String defaultURLPath = "/WEB-INF/views/signup/";

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String contextPath =  req.getContextPath();
		
		User loginUser = (User)session.getAttribute("loginUser");
		
		// 경로에 따라 필요한 페이지로 추가 이동
		String reqPath = req.getPathInfo();
		String path = "";
		
		if(reqPath != null) {
			path = reqPath.split("/")[1];
		}
		
		// 로그인 하지 않은 유저만 페이지 접근 가능
		if (loginUser == null) {
			switch (path) {
			case "": {
				dispatcher = req.getRequestDispatcher(defaultURLPath + "signup.jsp");
				dispatcher.forward(req, resp);
				};break;
			case "signupTerms" : {
				dispatcher = req.getRequestDispatcher(defaultURLPath + "signupTerms.jsp");
				dispatcher.forward(req, resp);
				};break;
			default:System.out.println("404 페이지로 이동");}
		}else {
			resp.sendRedirect(contextPath +"/dashboard");
		}
	}
}

