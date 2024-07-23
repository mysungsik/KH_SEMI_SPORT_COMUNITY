package com.helpgpt.sports.findInfo.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

import java.sql.Connection;

import com.helpgpt.sports.findInfo.model.dao.FindInfoDAO;
import com.helpgpt.sports.findInfo.model.dao.UpdateInfoDAO;
import com.helpgpt.sports.login.model.vo.User;

public class UpdateInfoService {
	UpdateInfoDAO dao = new UpdateInfoDAO();
	
	public int mailCheck(int userNo, String inputMailAuth) {
		Connection conn = getConnection();
		
		int result = dao.mailCheck(conn, userNo, inputMailAuth);
		
		close(conn);
		
		return result;
	}
	
	public int resetUserPw(int userNo) {
		Connection conn = getConnection();
		
		int result = dao.resetUserPw(conn, userNo);
		
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}


}
