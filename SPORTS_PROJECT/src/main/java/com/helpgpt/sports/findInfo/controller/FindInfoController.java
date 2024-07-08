package com.helpgpt.sports.findInfo.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ForgetInfoController
 */
@WebServlet(name = "/FindInfoController",
			urlPatterns ={
					"/findInfo",
					"/findInfo/*"
				}
			)
public class FindInfoController extends HttpServlet {
	RequestDispatcher dispatcher;
	final String defaultURLPath = "/WEB-INF/views/findInfo/";

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String reqPath = request.getPathInfo();
		String path = "";
		
		if (reqPath != null) {
			path = reqPath.split("/")[1];
		}
		
		switch (path) {
			case "": {
				RequestDispatcher dispatcher = request.getRequestDispatcher(defaultURLPath + "findId.jsp");
				dispatcher.forward(request, response);
			};break;
			case "findId" : {
				RequestDispatcher dispatcher = request.getRequestDispatcher(defaultURLPath + "findId.jsp");
				dispatcher.forward(request, response);
			};break;
			case "findPw" : {
				RequestDispatcher dispatcher = request.getRequestDispatcher(defaultURLPath + "findPw.jsp");
				dispatcher.forward(request, response);
			};break;
			case "findResult" : {
				RequestDispatcher dispatcher = request.getRequestDispatcher(defaultURLPath + "findResult.jsp");
				dispatcher.forward(request, response);
			};break;
		}
	}
}
