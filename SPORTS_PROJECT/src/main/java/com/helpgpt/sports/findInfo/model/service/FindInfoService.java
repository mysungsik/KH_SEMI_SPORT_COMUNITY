package com.helpgpt.sports.findInfo.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

import java.sql.Connection;

import com.helpgpt.sports.findInfo.model.dao.FindInfoDAO;

public class FindInfoService {
	FindInfoDAO dao = new FindInfoDAO();
	
	public String findUserId(String inputEmail, String inputName) {
		Connection conn = getConnection();

		String userID = dao.findUserId(conn, inputEmail, inputName);
		
		close(conn);
		
		return userID;
	}

}
