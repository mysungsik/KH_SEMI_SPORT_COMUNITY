package com.helpgpt.sports.profile.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.helpgpt.sports.login.model.vo.User;


@WebServlet(name = "ProfileController",
			urlPatterns = {
				"/profile",	
				"/profile/*"}
)

public class ProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	RequestDispatcher dispatcher;
	final String defaultURLPath = "/WEB-INF/views/profile/";

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String contextPath =  req.getContextPath();
		
		User loginUser = (User)session.getAttribute("loginUser");
		
		String reqPath = req.getPathInfo();
		String path = "";
		
		if(reqPath != null) {
			path = reqPath.split("/")[1];
		}
		
		// 로그인한 유저가 아니라면, login 페이로 이동
		if (loginUser == null) {
			resp.sendRedirect(contextPath +"/login");
		}else {
			// 경로에 따라 필요한 페이지로 추가 이동
			switch (path) {
				case "": {
					dispatcher = req.getRequestDispatcher(defaultURLPath + "profileMyComment.jsp");
					req.setAttribute("page", "myComment");
					dispatcher.forward(req, resp);
				};break;
				case "myComment": {
					dispatcher = req.getRequestDispatcher(defaultURLPath + "profileMyComment.jsp");
					req.setAttribute("page", "myComment");
					dispatcher.forward(req, resp);
				};break;
				case "myBoard": {
					dispatcher = req.getRequestDispatcher(defaultURLPath + "profileMyBoards.jsp");
					req.setAttribute("page", "myBoard");
					dispatcher.forward(req, resp);
				};break;
				case "myScrab": {
					dispatcher = req.getRequestDispatcher(defaultURLPath + "profileMyScrab.jsp");
					req.setAttribute("page", "myScrab");
					dispatcher.forward(req, resp);
				};break;
				case "myInfo" :{
					dispatcher = req.getRequestDispatcher(defaultURLPath + "profileMyInfo.jsp");
					req.setAttribute("page", "myInfo");
					dispatcher.forward(req, resp);
				};break;
				case "resign" :{
					dispatcher = req.getRequestDispatcher(defaultURLPath + "profileResign.jsp");
					req.setAttribute("page", "resign");
					dispatcher.forward(req, resp);
				};break;
			}
		}
	}
}
