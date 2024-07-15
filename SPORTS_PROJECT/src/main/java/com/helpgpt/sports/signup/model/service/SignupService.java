package com.helpgpt.sports.signup.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;
import com.helpgpt.sports.login.model.vo.User;
import com.helpgpt.sports.signup.model.dao.SignupDAO;
import java.sql.Connection;

public class SignupService {
	SignupDAO dao = new SignupDAO();
	
	public int signup(User signupInfo) {
		Connection conn = getConnection();
		
		int signupResult = dao.signup(conn, signupInfo);
		int createSessionResult = dao.createSessionUUID(conn);
		int createPolicyResult = dao.createUserPolicy(conn);
		
		if (signupResult > 0 &&
			createSessionResult > 0 &&
			createPolicyResult > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		return signupResult;
	}

}
