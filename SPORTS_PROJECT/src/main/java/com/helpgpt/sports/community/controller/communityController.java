package com.helpgpt.sports.community.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpgpt.sports.community.model.service.CommunityService;
import com.helpgpt.sports.community.model.vo.Board;


@WebServlet(name = "communityController",
			urlPatterns = {
				"/community",	
				"/community/*"}
)

public class communityController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	RequestDispatcher dispatcher;
	final String defaultURLPath = "/WEB-INF/views/community/";

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		CommunityService service = new CommunityService();
		
		// Path 지정
		String reqPath = req.getPathInfo();
		String path = "";
		String sub = "";
		
		if(reqPath != null) {
			path = reqPath.split("/")[1];
			sub = reqPath.split("/")[2]; 
		}
		
		int type = 0;
		
		switch(sub) {
		case "info" : type = 1; break;
		}
		
		try {
			
			// 경로에 따라 필요한 페이지로 추가 이동
			switch (path) {
			case "": {
				dispatcher = req.getRequestDispatcher(defaultURLPath + "community.jsp");
				
				dispatcher.forward(req, resp);
			}break;
			case "communityBoard": {
				dispatcher = req.getRequestDispatcher(defaultURLPath + "communityBoard.jsp");
				List<Board> boardList = service.selectBoardList(type);
				System.out.println("controller : " + boardList);
				req.setAttribute("sub", sub); 
				dispatcher.forward(req, resp);
			};break;
			case "communityDetail": {
				dispatcher = req.getRequestDispatcher(defaultURLPath + "communityDetail.jsp");
				req.setAttribute("sub", sub);
				dispatcher.forward(req, resp);
			};break;
			case "communityPosting": {
				dispatcher = req.getRequestDispatcher(defaultURLPath + "communityPosting.jsp");
				req.setAttribute("sub", sub);
				dispatcher.forward(req, resp);
			};break;
			default:System.out.println("404 페이지로 이동");}
			
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
}
