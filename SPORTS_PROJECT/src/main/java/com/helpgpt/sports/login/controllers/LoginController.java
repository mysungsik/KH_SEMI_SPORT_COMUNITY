package com.helpgpt.sports.login.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		dispatcher = req.getRequestDispatcher(defaultURLPath + "login.jsp");
		dispatcher.forward(req, resp);
	}
}

