package com.helpgpt.sports.signup.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

import java.sql.Connection;

import com.helpgpt.sports.login.model.vo.User;
import com.helpgpt.sports.signup.model.dao.SignupDAO;

public class SignupService {
	SignupDAO dao = new SignupDAO();
	
	public int signup(User signupInfo) {
		Connection conn = getConnection();
		
		int signupResult = dao.signup(conn, signupInfo);
		int createSessionResult = dao.createSessionUUID(conn);
		
		if (signupResult > 0 &&
			createSessionResult > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		return signupResult;
	}

}
