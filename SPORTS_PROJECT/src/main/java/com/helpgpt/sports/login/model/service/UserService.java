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
}
