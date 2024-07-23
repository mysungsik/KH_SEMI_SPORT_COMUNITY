package com.helpgpt.sports.findInfo.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

import java.sql.Connection;

import com.helpgpt.sports.findInfo.model.dao.FindInfoDAO;
import com.helpgpt.sports.findInfo.model.dao.UpdateInfoDAO;

public class UpdateInfoService {
	UpdateInfoDAO dao = new UpdateInfoDAO();

	public int updateUserPw(String inputId, String inputEmail, String inputPw) {
		Connection conn = getConnection();
		
		int result = dao.updateUserPw(conn, inputId, inputEmail, inputPw);
		
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
}
