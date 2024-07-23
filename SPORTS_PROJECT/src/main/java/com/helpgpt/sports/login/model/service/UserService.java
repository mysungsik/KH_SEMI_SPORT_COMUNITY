package com.helpgpt.sports.login.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

import java.sql.Connection;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.helpgpt.sports.login.model.dao.UserDAO;
import com.helpgpt.sports.login.model.vo.User;
import com.helpgpt.sports.sign.model.dao.SignDAO;

public class UserService {
	UserDAO dao = new UserDAO();
	SignDAO signDao = new SignDAO();
	
	public User userLogin(User loginInfo) {
		Connection conn = getConnection();
		
		// 로그인 유저객체 생성
		User loginUser =  dao.userLogin(conn, loginInfo);

		close(conn);
		
		return loginUser;
	}
	
	public void updateUserHisotry(User loginUser, String isAuto) {
		Connection conn = getConnection();
		
		// 로그인 히스토리 저장 && 탈퇴일 리셋
		int insertHistoryresult = dao.insertUserHistory(conn, loginUser.getUserNo(), isAuto);
		
		if (insertHistoryresult > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
	}
	
	public void cancelUserResign(User loginUser) {
		Connection conn = getConnection();
		
		int result = signDao.cancelUserResign(conn, loginUser.getUserNo());
		
		if (result > 0 ) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
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

	public void resetFailCnt(int userNo) {
		Connection conn = getConnection();
		int result = dao.resetFailCnt(conn, userNo);
		
		if (result > 0 ) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return;
	}

	// 특정 유저 아이디에 해당하는 정보가 있을 경우 Fail Cnt 추가
	public void addFailCnt(String inputId) {
		
		Connection conn = getConnection();
		User findUser = dao.findUserbyId(conn, inputId);
		
		// User 를 찾았을 경우, Fail Count 추가
		if (findUser != null) {
			
			// Fail Cnt 가 4였다면, 5로 감과 동시에 State L 로 변경
			int userNo = findUser.getUserNo();
			int nowFailCnt = findUser.getFailCnt();
			
			if (nowFailCnt >= 4) {
				int lockedResult =  dao.userLock(conn, userNo);
				
				if (lockedResult > 0) {
					commit(conn);
				}else {
					rollback(conn);
				}
			}
			// Fail Cnt 가 3 이하라면, FailCnt 추가
			else {
				int addFailCntResult = dao.addFailCnt(conn, userNo, nowFailCnt);
				
				if (addFailCntResult > 0) {
					commit(conn);
				}else {
					rollback(conn);
				}
			}
		}
		close(conn);
		
		return;
		
	}
	
	// 유저 정보 완전 삭제
	public void deleteUserInfo() {
		Connection conn = getConnection();
		int result = dao.deleteUserInfo(conn);
		
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
	}
}
