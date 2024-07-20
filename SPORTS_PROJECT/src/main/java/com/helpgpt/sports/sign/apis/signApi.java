package com.helpgpt.sports.sign.apis;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.helpgpt.sports.login.model.vo.User;
import com.helpgpt.sports.sign.model.service.SignService;

/**
 * Servlet implementation class Login
 */
@WebServlet("/api/sign/*")
public class signApi extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SignService service = new SignService();
	

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out = res.getWriter();
		User loginUser = null;
		
		// Path 지정
		String reqPath = req.getPathInfo();
		String path = "";
		
		if(reqPath != null) {
			path = reqPath.split("/")[1];
		}
		
		// 경로에 따라 필요한 기능을 사용 ("*" 이후 들어갈 첫번째 값이 해당 기능)
		switch (path) {
			case "signup": {
				String inputId = req.getParameter("inputId");
				String inputPw = req.getParameter("inputPw");
				String inputEmail = req.getParameter("inputEmail");
				String inputName = req.getParameter("inputName");
				String inputPhone = req.getParameter("inputPhone");
				String inputBd = req.getParameter("inputBd");
				String inputAddress = req.getParameter("inputAddress");
				String inputGender = req.getParameter("inputGender");
				String inputNation = req.getParameter("inputNation");
				
				User signupInfo = new User(inputId, inputPw, inputEmail, inputName, inputPhone, inputBd, inputAddress, inputGender, inputNation);
				
				int signupResult = service.signup(signupInfo);
				
				Map<String, Object> result = new HashMap<>();
				
				// 회원가입 성공 여부
				if (signupResult > 0){
					
					result.put("message", "회원가입에 성공했습니다.");
					result.put("data", "Signup Success");	// 회원가입 성공시만 data 전달
					
					new Gson().toJson(result, out);
				}
				else {
					result.put("message", "회원가입에 실패하였습니다.");
					new Gson().toJson(result, out);
				}
				
			}break;
			
			case "resign" :{
				HttpSession session = req.getSession(false);
				Map<String, Object> result = new HashMap<>();
				
				if (session != null) {
					loginUser = (User)session.getAttribute("loginUser");
					
					int updateResult = service.resign(loginUser.getUserNo());
					
					if (updateResult > 0 ) {
						// 로그아웃처리
						session.setAttribute("loginUser", null);
				
						// 쿠키 제거
						Cookie cookie = new Cookie("rememberLogin", null);
						cookie.setMaxAge(0);
						cookie.setPath(req.getContextPath()); // 쿠키 경로 contextPath 로 설정
						res.addCookie(cookie);
						
						result.put("data", "delete Success");
						result.put("message", "그동안 이용해 주셔서 감사합니다. 3초후 페이지가 이동합니다.");
					} else {
						result.put("message","업데이트에 실패하였습니다");
					}
					
					new Gson().toJson(result, out);
					
				}
			};break;
				
			default:System.out.println("[ERROR] Wrong sign URL");
		}
	}
}
