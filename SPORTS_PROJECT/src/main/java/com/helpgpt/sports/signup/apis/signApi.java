package com.helpgpt.sports.signup.apis;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.helpgpt.sports.login.model.service.UserService;
import com.helpgpt.sports.login.model.vo.User;
import com.helpgpt.sports.signup.model.service.SignupService;

/**
 * Servlet implementation class Login
 */
@WebServlet("/api/sign/*")
public class signApi extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SignupService service = new SignupService();
	

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out = res.getWriter();
		
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
				
			default:System.out.println("[ERROR] Failed to Signup");
		}
	}
}
