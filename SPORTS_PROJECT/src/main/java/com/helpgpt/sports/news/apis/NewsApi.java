package com.helpgpt.sports.news.apis;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.helpgpt.sports.common.filerename.MyRenamePolicy;
import com.helpgpt.sports.common.util.Util;
import com.helpgpt.sports.community.model.service.CommunityService;
import com.helpgpt.sports.community.model.vo.Community;
import com.helpgpt.sports.community.model.vo.CommunityImage;
import com.helpgpt.sports.login.model.vo.User;
import com.helpgpt.sports.news.model.service.NewsService;
import com.helpgpt.sports.news.model.vo.News;
import com.helpgpt.sports.news.model.vo.NewsImg;
import com.helpgpt.sports.profile.service.ProfileService;
import com.helpgpt.sports.teams.model.vo.Teams;
import com.oreilly.servlet.MultipartRequest;

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
			case "getAllTeams" : {
				List<Teams> teams = service.getAllTeams();
				
				if (teams.size() > 0) {
					result.put("data", teams);
					result.put("message", "success to get teamsList");
				} else {
					result.put("message", "failed to get teamsList");
				}
				
				new Gson().toJson(result, out);
			};break;
			case "getFilteredNews" : {
				HttpSession session = req.getSession();
				String searchTerm = req.getParameter("searchTerm");
				int teamNo = Integer.parseInt(req.getParameter("teamNo"));
				List<News> newsList = service.getFilteredNews(searchTerm, teamNo);
				
				if (newsList.size() > 0) {
					result.put("data", newsList);
					result.put("message", "뉴스 리스트를 가져오는데 성공하였습니다");
				}else {
					result.put("message", "뉴스 리스트를 가져오는데 실패하였습니다");
				}
				new Gson().toJson(result, out);
			};break;
			case "getNewsListForMain" : {

				String getType = req.getParameter("getType");	// popular, recent
				List<News> newsList = service.getNewsListForMain(getType);
				
				if (newsList.size() > 0) {
					result.put("data", newsList);
					result.put("message", "뉴스 리스트를 가져오는데 성공하였습니다");
				}else {
					result.put("message", "뉴스 리스트를 가져오는데 실패하였습니다");
				}
				new Gson().toJson(result, out);
			};break;
			
			default: {
				System.out.println("[ERROR] WRONG NEWS API");
			}
		}
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out = res.getWriter();
		User loginUser = null;

		// Path 지정
		String reqPath = req.getPathInfo();
		String path = "";
		


		if (reqPath != null) {
			path = reqPath.split("/")[1];
		}
		
		Map<String, Object> result = new HashMap<>();
		
		// Admin 권한 확인
		HttpSession session = req.getSession(false);
		if(session != null) {
			loginUser = (User)session.getAttribute("loginUser");
			String adminAuthority = loginUser.getUserAuthority();
			
			// 권한 있다면 실행
			if (adminAuthority.equals("A")) {
				
				// 경로에 따라 필요한 기능을 사용
				switch (path) {
					// 뉴스 추가
					case "insertNews" : {
				        // MultipartRequest를 사용하여 파일 업로드 처리
				        int maxSize = 1024 * 1024 * 100; // 최대 업로드 용량 (100MB)
				        String root = session.getServletContext().getRealPath("/"); // 서버의 실제 경로
				        String folderPath = "/public/images/news/"; // 파일 저장 폴더 경로
				        String filePath = root + folderPath; // 파일 저장 절대 경로
				        String encoding = "UTF-8"; // 문자 인코딩
				        MultipartRequest mpReq = new MultipartRequest(req, filePath, maxSize, encoding, new MyRenamePolicy());
				        
				        // 나머지 텍스트 형식의 데이터 처리
				        int teamNo = Integer.parseInt(mpReq.getParameter("team-category"));
				        String newsTitle = mpReq.getParameter("title");
				        String newsPublisher = mpReq.getParameter("publisher");
				        String newsContent = mpReq.getParameter("content");
				        
				        // XSS 및 개행문자 처리
				        newsTitle = Util.XSSHandling(newsTitle);
				        
				        newsContent = Util.XSSHandling(newsContent);
				        newsContent = Util.newLineHandling(newsContent);
						
				        // 현재 로그인한 사용자 정보 가져오기
				        int userNo = loginUser.getUserNo();
				        
				        // News 객체 생성 및 데이터 설정
				        News news = new News();
				        news.setUserNo(userNo);
				        news.setTeamNo(teamNo);
				        news.setNewsTitle(newsTitle);
				        news.setNewsPublisher(newsPublisher);
				        news.setNewsContent(newsContent);
				        
				        // 뉴스 추가 후, 생성된 newsNo 반환
				        int insertResult = service.insertNews(news, mpReq, folderPath);	

				        // 등록 결과에 따른 리다이렉트 처리
				        String redirectPath = "";
				        
				        if (insertResult > 0) {
				            redirectPath = req.getContextPath() + "/news/detail/" + insertResult;
				        } else {
				        	redirectPath = req.getContextPath() + "/news";
				        }
				        
				        res.sendRedirect(redirectPath);
					};break;
					// 뉴스 수정
					case "modifyNews" : {
				        // MultipartRequest를 사용하여 파일 업로드 처리
				        int maxSize = 1024 * 1024 * 100; // 최대 업로드 용량 (100MB)
				        String root = session.getServletContext().getRealPath("/"); // 서버의 실제 경로
				        String folderPath = "/public/images/news/"; // 파일 저장 폴더 경로
				        String filePath = root + folderPath; // 파일 저장 절대 경로
				        String encoding = "UTF-8"; // 문자 인코딩
				        MultipartRequest mpReq = new MultipartRequest(req, filePath, maxSize, encoding, new MyRenamePolicy());
				        
				        // 나머지 텍스트 형식의 데이터 처리
				        int newsNum = Integer.parseInt(mpReq.getParameter("newsNum"));
				        int teamNo = Integer.parseInt(mpReq.getParameter("team-category"));
				        String newsTitle = mpReq.getParameter("title");
				        String newsPublisher = mpReq.getParameter("publisher");
				        String newsContent = mpReq.getParameter("content");
				        
				        // XSS 및 개행문자 처리
				        newsTitle = Util.XSSHandling(newsTitle);
				        
				        newsContent = Util.XSSHandling(newsContent);
				        newsContent = Util.newLineHandling(newsContent);
						
				        // 현재 로그인한 사용자 정보 가져오기
				        int userNo = loginUser.getUserNo();
				        
				        // News 객체 생성 및 데이터 설정
				        News news = new News();
				        news.setNewsNo(newsNum);
				        news.setUserNo(userNo);
				        news.setTeamNo(teamNo);
				        news.setNewsTitle(newsTitle);
				        news.setNewsPublisher(newsPublisher);
				        news.setNewsContent(newsContent);
				        
				        // 뉴스 추가 후, 변경된 뉴스의 no 반환
				        int modifyResult = service.modifyNews(news, mpReq, folderPath);
				        
				        // 등록 결과에 따른 리다이렉트 처리
				        String redirectPath = "";
				        if (modifyResult > 0) {
				            redirectPath = req.getContextPath() + "/news/detail/" + newsNum;
				        } else {
				        	redirectPath = req.getContextPath() + "/news/list";
				        }
				        
				        res.sendRedirect(redirectPath);
					};break;
					
					// 뉴스 삭제
					case "deleteNews" : {
						int newsNum = Integer.parseInt(req.getParameter("newsNum"));
						
				        // 뉴스 삭제
				        int deleteResult = service.deleteNews(newsNum);
				     
				        if (deleteResult > 0 ) {
				        	result.put("data", deleteResult);
					        result.put("message", "성공적으로 삭제하였습니다");
				        } else {
				        	result.put("message", "삭제에 실패하였습니다.");
				        }
				        
				        new Gson().toJson(result, out);
					};break;
					
					default: {
						System.out.println("[ERROR] WRONG NEWS API");
					}
				}
				
			}
		}
	}
}
