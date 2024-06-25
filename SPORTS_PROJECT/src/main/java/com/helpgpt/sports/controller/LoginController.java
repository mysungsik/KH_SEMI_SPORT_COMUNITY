package com.helpgpt.sports.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/controller/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		String userId = req.getParameter("userId");
		String userPw = req.getParameter("userPw");
		
		// ToDo
		// 1. 로그인 validation 다시
		// 2. Model 으로 데이터 확인
		// 3. 로그인 성공후 적절한 메시지 반환
		
		HttpSession session = req.getSession();
		session.setAttribute("isLogin", true);
		
		res.sendRedirect("/SPORTS_PROJECT/src/pages/dashboard/dashboard.jsp");
	}
	
		@Override
		protected void doDelete(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		session.setAttribute("isLogin", false);
	
	}
}
