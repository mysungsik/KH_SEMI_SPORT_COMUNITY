package com.helpgpt.sports.login.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

import java.sql.Connection;

import com.helpgpt.sports.login.model.dao.UserDAO;
import com.helpgpt.sports.login.model.vo.User;

public class UserService {
	UserDAO dao = new UserDAO();
	
	public User userLogin(User loginInfo) {
		Connection conn = getConnection();
		User loginUser =  dao.userLogin(conn, loginInfo);
		
		close(conn);
		
		return loginUser;
	}
	
	public User getLoginInfoFromSessionUUID(String sessionUUID) {
		Connection conn = getConnection();
		User loginInfo = dao.getLoginInfoFromSessionUUID(conn, sessionUUID);
		
		close(conn);
		
		return loginInfo;
	}

	public void updateSessionUUID(User loginUser, String sessionUUID) {
		Connection conn = getConnection();
		
		int result = dao.updateSessionUUID(conn, loginUser.getUserNo(), sessionUUID);
		
		if (result > 0 ) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
	}

	public int updateUserInfo(int userNo, String inputType, String inputData) {
		Connection conn = getConnection();
		
		int result = dao.updateUserInfo(conn, userNo, inputType, inputData);
		
		if (result > 0 ) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
}
