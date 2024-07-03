package com.helpgpt.sports.profile.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


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
		// Path 지정
		String reqPath = req.getPathInfo();
		String path = "";
		
		if(reqPath != null) {
			path = reqPath.split("/")[1];
		}
		
		// 경로에 따라 필요한 페이지로 추가 이동
		switch (path) {
		case "": {
			dispatcher = req.getRequestDispatcher(defaultURLPath + "profileMyComment.jsp");
			dispatcher.forward(req, resp);
			}break;
		case "myComment": {
			dispatcher = req.getRequestDispatcher(defaultURLPath + "profileMyComment.jsp");
			dispatcher.forward(req, resp);
			}break;
		case "myBoard": {
			dispatcher = req.getRequestDispatcher(defaultURLPath + "profileMyBoards.jsp");
			dispatcher.forward(req, resp);
			}break;
		case "myScrab": {
			dispatcher = req.getRequestDispatcher(defaultURLPath + "profileMyScrab.jsp");
			dispatcher.forward(req, resp);
			}break;
		case "myInfo" :{
			dispatcher = req.getRequestDispatcher(defaultURLPath + "profileMyInfo.jsp");
			dispatcher.forward(req, resp);
			};break;
		case "resign" :{
			dispatcher = req.getRequestDispatcher(defaultURLPath + "profileResign.jsp");
			dispatcher.forward(req, resp);
			};break;
		default:System.out.println("404 페이지로 이동");}
		
	}
}
