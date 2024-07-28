package com.helpgpt.sports.news.apis;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.helpgpt.sports.login.model.vo.User;
import com.helpgpt.sports.news.model.service.NewsService;
import com.helpgpt.sports.news.model.vo.News;
import com.helpgpt.sports.profile.service.ProfileService;

/**
 * Servlet implementation class NewsApi
 */
@WebServlet("/api/news/*")
public class NewsApi extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private NewsService service = new NewsService();

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out = res.getWriter();
		User loginUser = null;

		// Path 지정
		String reqPath = req.getPathInfo();
		String path = "";

		if (reqPath != null) {
			path = reqPath.split("/")[1];
		}
		
		Map<String, Object> result = new HashMap<>();

		// 경로에 따라 필요한 기능을 사용
		switch (path) {
			case "getNewsAll" : {
				
				List<News> newsList = service.getNewsAll();
				
				if (newsList.size() > 0) {
					result.put("data", newsList);
					result.put("message", "뉴스 리스트를 가져오는데 성공하였습니다");
				}else {
					result.put("message", "뉴스 리스트를 가져오는데 실패하였습니다");
				}
				new Gson().toJson(result, out);
			};break;
			
			
			default: {
				System.out.println("[ERROR] WRONG PROFILE API");
			}
		}
	}

}
