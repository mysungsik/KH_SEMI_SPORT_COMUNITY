package com.helpgpt.sports.news.apis;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helpgpt.sports.login.model.vo.User;
import com.helpgpt.sports.profile.service.ProfileService;

/**
 * Servlet implementation class NewsApi
 */
@WebServlet("/api/news/*")
public class NewsApi extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProfileService service = new ProfileService();

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out = res.getWriter();
		User loginUser = null;

		// Path 지정
		String reqPath = req.getPathInfo();
		String path = "";

		if (reqPath != null) {
			path = reqPath.split("/")[1];
		}

		// 경로에 따라 필요한 기능을 사용
		switch (path) {
			case "getNewsOne" : {
			
			};break;
			case "getNewsAll" : {
				
			};break;
			default: {
				System.out.println("[ERROR] WRONG PROFILE API");
			}
		}
	}

}
