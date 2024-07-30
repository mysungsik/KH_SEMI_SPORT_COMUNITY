package com.helpgpt.sports.profile.apis;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.helpgpt.sports.common.filerename.MyRenamePolicy;
import com.helpgpt.sports.community.model.service.CommunityService;
import com.helpgpt.sports.community.model.vo.Community;
import com.helpgpt.sports.login.model.service.UserService;
import com.helpgpt.sports.login.model.vo.User;
import com.helpgpt.sports.news.model.vo.News;
import com.helpgpt.sports.profile.model.vo.LoginHistory;
import com.helpgpt.sports.profile.service.ProfileService;
import com.helpgpt.sports.reply.model.service.ReplyService;
import com.helpgpt.sports.reply.model.vo.Reply;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class Login
 */
@WebServlet("/api/profile/*")
public class ProfileApi extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProfileService service = new ProfileService();
	private ReplyService replyService = new ReplyService();
	private CommunityService commService = new CommunityService();

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
			case "getUserHistories" : {
				HttpSession session = req.getSession(false);
				
				Map<String, Object> result = new HashMap<>();
				
				if (session != null) {
					loginUser = (User)session.getAttribute("loginUser");
					int loginUserNo = loginUser.getUserNo();
					
					List<LoginHistory> loginHistories = service.getUserHistory(loginUserNo);
					
					if (!loginHistories.isEmpty()) {
						result.put("data", loginHistories);
						result.put("message", "success to login histories");
					} else {
						result.put("message", "failed to login histories");
					}
				
					new Gson().toJson(result, out);
				}
			};break;
			case "getMycomments" : {
				HttpSession session = req.getSession(false);
				
				Map<String, Object> result = new HashMap<>();
				
				if (session != null) {
					loginUser = (User)session.getAttribute("loginUser");
					int userNo = loginUser.getUserNo();
					
					List<Reply> replyList = service.getMycomments(userNo);
					
					if (replyList.size() > 0) {
						result.put("message", "success get all reply");
						result.put("data", replyList);
					}else {
						result.put("message", "there is no reply");
					}
					new Gson().toJson(result, out);
				}
			};break;
			case "getMyCommunity" : {
				HttpSession session = req.getSession(false);
				
				Map<String, Object> result = new HashMap<>();
				
				if (session != null) {
					loginUser = (User)session.getAttribute("loginUser");
					int userNo = loginUser.getUserNo();
					
					List<Community> commList = service.getMyCommunity(userNo);
					
					if (commList.size() > 0) {
						result.put("message", "게시글을 성공적으로 가져왔습니다");
						result.put("data", commList);
					}else {
						result.put("message", "작성한 게시글이 없습니다.");
					}
					new Gson().toJson(result, out);
				}
			};break;
			case "getMyNewsLiked" : {
				HttpSession session = req.getSession(false);
				
				Map<String, Object> result = new HashMap<>();
				
				if (session != null) {
					loginUser = (User)session.getAttribute("loginUser");
					int userNo = loginUser.getUserNo();
					
					List<News> newsList = service.getMyNewsLiked(userNo);
					
					if (newsList.size() > 0) {
						result.put("message", "뉴스 리스트를 성공적으로 가져왔습니다");
						result.put("data", newsList);
					}else {
						result.put("message", "좋아요한 뉴스 리스트가 없습니다.");
					}
					new Gson().toJson(result, out);
				}
			};break;
			default: {
				System.out.println("[ERROR] WRONG PROFILE API");
			}
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String contextPath = req.getContextPath();
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
			case "changeUserProfileImg" : {
				HttpSession session = req.getSession(false);
				
				int maxSize = 1024* 1024 * 30;	// 30MB
				String root = session.getServletContext().getRealPath("/");
				String folderPath = "/public/images/profile/";
				String filePath = root + folderPath;
				String encoding = "UTF-8";
				
				// 파일 업로드
				MultipartRequest mpReq = new MultipartRequest(req, filePath, maxSize, encoding, new MyRenamePolicy());
				
				if (session != null) {
					// DB변경
					loginUser = (User)session.getAttribute("loginUser");
					int userNo = loginUser.getUserNo();
					
					String originalFileName = mpReq.getOriginalFileName("inputProfieImg");	// 클라이언트 input 의 name 속성 이름
					String renamedFile = mpReq.getFilesystemName("inputProfieImg");	// 클라이언트 input 의 name 속성 이름
					
					String renamedFilePath = contextPath + folderPath + renamedFile;
					int changeResult = service.changeUserProfileImg(userNo, originalFileName, renamedFilePath);
					
					// 세션의 로그인 객체 프로필 이미지 변경후, 재요청
					if (changeResult > 0) {
						loginUser.setUserProfileImg(renamedFilePath);
					}
					res.sendRedirect(contextPath + "/profile/myInfo");
				}
			};break;
			case "restUserProfileImg" : {
				HttpSession session = req.getSession(false);

				String folderPath = "/public/images/profile/user_img1.jpg";
				String defaultFilePath = contextPath + folderPath;

				if (session != null) {
					// DB변경
					loginUser = (User)session.getAttribute("loginUser");
					int userNo = loginUser.getUserNo();
					
					int changeResult = service.resetUserProfileImg(userNo, defaultFilePath);
					
					// 세션의 로그인 객체 프로필 이미지 변경
					if (changeResult > 0) {
						loginUser.setUserProfileImg(defaultFilePath);
					}
				}
			};break;
			case "deleteMyReplyMany" : {
				String replyNoStr = req.getParameter("replyNos");
				List<Integer> parsedReplyNo = new ArrayList<>();
				
				if (replyNoStr != null && !replyNoStr.isEmpty()) {
		            String[] replyNoArray = replyNoStr.split(",");
		            for (String replyNo : replyNoArray) {
		                parsedReplyNo.add(Integer.parseInt(replyNo.trim()));
		            }
		        }
				
				int deleteResult = replyService.deleteMyReplyMany(parsedReplyNo);
				
		        Map<String, Object> result = new HashMap<>();
				
				if (deleteResult > 0) {
					result.put("message", "success to delete many reply");
					result.put("data", deleteResult);
					new Gson().toJson(result, out);
				}else {
					result.put("message", "failed to delete many reply");
					new Gson().toJson(result, out);
				}
			};break;
			case "deleteMyCommMany" : {
				String commNoStr = req.getParameter("commNos");
				List<Integer> parsedCommNo = new ArrayList<>();
				
				if (commNoStr != null && !commNoStr.isEmpty()) {
		            String[] commNoArray = commNoStr.split(",");
		            for (String commNo : commNoArray) {
		            	parsedCommNo.add(Integer.parseInt(commNo.trim()));
		            }
		        }
				
				int deleteResult = commService.deleteBoardMany(parsedCommNo);
				
		        Map<String, Object> result = new HashMap<>();
				
				if (deleteResult > 0) {
					result.put("message", "success to delete many board");
					result.put("data", deleteResult);
					new Gson().toJson(result, out);
				}else {
					result.put("message", "failed to delete many board");
					new Gson().toJson(result, out);
				}
			};break;
			default: {
				System.out.println("[ERROR] WRONG PROFILE API");
			}
		}
	}
}
