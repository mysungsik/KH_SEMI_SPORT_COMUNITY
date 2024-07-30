package com.helpgpt.sports.dashboard.apis;

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
import com.helpgpt.sports.community.model.vo.Community;
import com.helpgpt.sports.dashboard.model.service.DashboardService;
import com.helpgpt.sports.login.model.vo.User;

/**
 * Servlet implementation class DashboardApi
 */
@WebServlet("/api/dashboard/*")
public class DashboardApi extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DashboardService service = new DashboardService();

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
			case "getCommFree" : {
				
				Map<String, Object> result = new HashMap<>();
				
				int commType = 2;	// 자유
				int limit = 4;		// 가져올 개수
				List<Community> commList = service.getDashboardCommunity(commType, limit);
				
				if (commList.size() > 0) {
					result.put("message", "게시글을 성공적으로 가져왔습니다");
					result.put("data", commList);
				}else {
					result.put("message", "작성한 게시글이 없습니다.");
				}
				new Gson().toJson(result, out);
			};break;
			case "getCommCheer" : {
				
				Map<String, Object> result = new HashMap<>();
				
				int commType = 3;	// 응원
				int limit = 4;		// 가져올 개수
				List<Community> commList = service.getDashboardCommunity(commType, limit);
				
				if (commList.size() > 0) {
					result.put("message", "게시글을 성공적으로 가져왔습니다");
					result.put("data", commList);
				}else {
					result.put("message", "작성한 게시글이 없습니다.");
				}
				new Gson().toJson(result, out);
			};break;
		}
	}

}
