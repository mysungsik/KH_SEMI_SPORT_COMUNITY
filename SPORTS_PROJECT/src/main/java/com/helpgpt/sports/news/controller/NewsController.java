package com.helpgpt.sports.news.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.helpgpt.sports.news.model.service.NewsService;
import com.helpgpt.sports.news.model.vo.News;


@WebServlet(name = "newsController",
urlPatterns = {
	"/news",	
	"/news/*"}
)

public class NewsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	RequestDispatcher dispatcher;
	final String defaultURLPath = "/WEB-INF/views/news/";
	NewsService service = new NewsService();
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String contextPath = req.getContextPath();
		String reqPath = req.getPathInfo();
		String path = "";
		int newsNum = 0;
		
		if(reqPath != null) {
			path = reqPath.split("/")[1];
			
			if (path.equals("detail")) {
				try {
					newsNum = Integer.parseInt(reqPath.split("/")[2]);
				} catch (Exception e) {
					System.out.println("[ERROR] WRONG NEWS PATH");
					e.printStackTrace();
					res.sendRedirect(contextPath + "/news");
					return;
				}
			}
		}
		
		switch (path) {
			case "": {
				dispatcher = req.getRequestDispatcher(defaultURLPath + "newsMain.jsp");
				dispatcher.forward(req, res);
			};break;
			case "main": {
				dispatcher = req.getRequestDispatcher(defaultURLPath + "newsMain.jsp");
				dispatcher.forward(req, res);
			};break;
			case "list": {
				dispatcher = req.getRequestDispatcher(defaultURLPath + "newsList.jsp");
				dispatcher.forward(req, res);
			};break;
			case "vods": {
				dispatcher = req.getRequestDispatcher(defaultURLPath + "newsVods.jsp");
				dispatcher.forward(req, res);
			};break;
			case "detail": {
				dispatcher = req.getRequestDispatcher(defaultURLPath + "newsDetail.jsp");
				News newsInfo = service.getNewsOne(newsNum);
				req.setAttribute("newsNum", newsNum);
				req.setAttribute("newsInfo", newsInfo);
				dispatcher.forward(req, res);
			};break;
			case "modify": {
				dispatcher = req.getRequestDispatcher(defaultURLPath + "newsModify.jsp");
				// TODO : DAO 에서 데이터를 찾아 뉴스 페이지 만들기
				// 		  NEWS 데이터를 찾아 JSP 로 만들고, 댓글은 페이지 생성시 JS 로 불러오기
				req.setAttribute("newsNum", newsNum);
				dispatcher.forward(req, res);
			};break;
		}
	}
}
