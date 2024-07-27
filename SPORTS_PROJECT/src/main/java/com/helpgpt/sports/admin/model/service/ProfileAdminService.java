package com.helpgpt.sports.admin.model.service;

import com.helpgpt.sports.admin.model.dao.ProfileAdminDAO;
import com.helpgpt.sports.login.model.dao.UserDAO;
import com.helpgpt.sports.login.model.vo.User;
import com.helpgpt.sports.sign.model.dao.SignDAO;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

public class ProfileAdminService {
	ProfileAdminDAO dao = new ProfileAdminDAO();
	SignDAO signDao = new SignDAO();
	
	public List<User> getAllUserInfo() {
		List<User> userList = null;
		Connection conn = getConnection();
		
		userList = dao.getAllUserInfo(conn);

		close(conn);
		
		return userList;
	}

	public int updateUserInfo(User user) {
		int result = 0;
		Connection conn = getConnection();
		
		result = dao.updateUserInfo(conn, user);

		if(result > 0 ) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		return result;
	}

	public int deleteUser(int userNo) {
		Connection conn = getConnection();
		int result = signDao.userResign(conn, userNo);
		
		if (result > 0 ) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public List<User> searchUsersData(String category, String serachInput) {
		List<User> userList = null;
		Connection conn = getConnection();
		
		userList = dao.searchUsersData(conn, category, serachInput);

		close(conn);
		
		return userList;
	}

	public int acceptReport(int reportNo, int reportTypeNo, int reportTargetNo) {
		Connection conn = getConnection();
		int userWarnResult= 0;
		// 1. 신고 처리
		int reportResult = dao.acceptReport(conn, reportNo);
		
		if (reportResult > 0) {
			// 2. 신고된 게시글 작성자 찾기, 신고자 경고처리
			int authorNo = dao.searchAuthor(conn, reportTypeNo, reportTargetNo);	// 작성자 가져오기 : 0이면 실패
			userWarnResult = dao.updateUserWarn(conn, authorNo);					// 유저 경고 : 0이면 실패
			int selectUserWarnCnt = dao.selectUserWarnCnt(conn, authorNo);			// 경고 회수 출력
			// 3. 경고가 5회가 넘으면 신고자 Lock 처리
			if (selectUserWarnCnt > 5 ) {
				dao.setUserLock(conn, authorNo);
			}
		}
		
		if (userWarnResult > 0 ) {	// 최종적인 값인 "유저 경고 결과"를 기준으로 commit, rollback 설정
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return userWarnResult;
	}

}
