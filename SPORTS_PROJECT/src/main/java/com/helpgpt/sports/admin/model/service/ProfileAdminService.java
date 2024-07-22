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

}
