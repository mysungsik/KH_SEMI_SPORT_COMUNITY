package com.helpgpt.sports.login.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.helpgpt.sports.login.model.dao.UserDAO;
import com.helpgpt.sports.login.model.vo.User;
import com.helpgpt.sports.sign.model.dao.SignDAO;

public class UserService {
	UserDAO dao = new UserDAO();
	SignDAO signDao = new SignDAO();
	
	public User userLogin(User loginInfo, String isAuto) {
		Connection conn = getConnection();
		
		// 로그인 유저객체 생성
		User loginUser =  dao.userLogin(conn, loginInfo);
		
		// 로그인 히스토리 저장 && 탈퇴일 리셋
		signDao.cancelUserResign(conn, loginUser.getUserNo());
		int insertHistoryresult = dao.insertUserHistory(conn, loginUser.getUserNo(), isAuto);
		
		if (insertHistoryresult > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return loginUser;
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
	
	public void insertUserHistory(int userNo, String isAuto) {
		Connection conn = getConnection();
		
		int result = dao.insertUserHistory(conn, userNo, isAuto);
		
		if (result > 0 ) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
	}
	
	public User getLoginInfoFromSessionUUID(String sessionUUID) {
		Connection conn = getConnection();
		User loginInfo = dao.getLoginInfoFromSessionUUID(conn, sessionUUID);
		
		close(conn);
		
		return loginInfo;
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

	public int passwordCheck(int userNo, String inputPw) {
		Connection conn = getConnection();
		int result = dao.passwordCheck(conn, userNo, inputPw);

		close(conn);
		
		return result;
	}
}
