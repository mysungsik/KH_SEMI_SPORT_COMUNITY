package com.helpgpt.sports.sign.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;
import com.helpgpt.sports.login.model.vo.User;
import com.helpgpt.sports.sign.model.dao.SignDAO;
import java.sql.Connection;

public class SignService {
	SignDAO dao = new SignDAO();
	
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
	
	public int resign(int userNo) {
		Connection conn = getConnection();
		int result = dao.userResign(conn, userNo);
		
		if (result > 0 ) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
}
