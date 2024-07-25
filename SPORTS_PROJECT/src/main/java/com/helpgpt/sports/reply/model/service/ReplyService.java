package com.helpgpt.sports.reply.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import com.helpgpt.sports.reply.model.dao.ReplyDAO;
import com.helpgpt.sports.reply.model.vo.Reply;

public class ReplyService {
	ReplyDAO dao = new ReplyDAO();
	
	public List<Reply> getReplyAllByOneTarget(int targetTypeNo, int targetNo) {
		Connection conn = getConnection();
		List<Reply> replyList = dao.getReplies(conn, targetTypeNo, targetNo);
	
		close(conn);
		
		return replyList;
	}
}
