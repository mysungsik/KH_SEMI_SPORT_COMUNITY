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

	/* TODO
	 쿠키나 세션정보에서 받아온 USER EMAIL(중복불가) 로 조회하여 가져올 수 있도록 요청해야할듯
	 그래야 데이터 은닉이 가능할것같다. (적어도 URL 로 유저를 판단하지는 못하게 하도록)
	 추가적으로 PAGE 이동은 아래와 같이 하면 될 것 같다.
		/profile/myComment
	 	/profile/myContent
	 	/profile/myScrab
	 	/profile/myInfo
	 	/profile/resign
	 	/profile/manager/userManage    (추가적인 컨트롤러로 이동시키거나** 여기서 처리)
	 	/profile/manager/reportManage  (추가적인 컨트롤러로 이동시키거나** 여기서 처리)
	 	 
	 */
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
		default:System.out.println("404 페이지로 이동");}
		
	}
}
