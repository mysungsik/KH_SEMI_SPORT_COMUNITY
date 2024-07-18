package com.helpgpt.sports.admin.model.service;

import com.helpgpt.sports.admin.model.dao.ProfileAdminDAO;
import com.helpgpt.sports.login.model.vo.User;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

public class ProfileAdminService {
	ProfileAdminDAO dao = new ProfileAdminDAO();
	
	public List<User> getAllUserInfo() {
		List<User> userList = null;
		Connection conn = getConnection();
		
		userList = dao.getAllUserInfo(conn);

		close(conn);
		
		return userList;
	}

}
