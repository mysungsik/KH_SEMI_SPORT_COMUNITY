package com.helpgpt.sports.news.model.service;

import static com.helpgpt.sports.common.util.JDBCTemplate.close;
import static com.helpgpt.sports.common.util.JDBCTemplate.commit;
import static com.helpgpt.sports.common.util.JDBCTemplate.getConnection;
import static com.helpgpt.sports.common.util.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;

import com.helpgpt.sports.like.model.dao.LikeDAO;
import com.helpgpt.sports.news.model.dao.NewsDAO;
import com.helpgpt.sports.news.model.vo.News;
import com.helpgpt.sports.news.model.vo.NewsImg;
import com.helpgpt.sports.reply.model.dao.ReplyDAO;
import com.helpgpt.sports.teams.model.vo.Teams;
import com.oreilly.servlet.MultipartRequest;

public class NewsService {
	NewsDAO dao = new NewsDAO();
	ReplyDAO replyDao = new ReplyDAO();
	LikeDAO likeDao = new LikeDAO();

	public News getNewsOne(int newsNum) {
		Connection conn = getConnection();
		
		// 뉴스 가져오기
		News newsInfo = dao.getNewsOne(conn, newsNum);
		
		if (newsInfo != null) {
			// 뉴스에 이미지 추가
			newsInfo = dao.getNewsImgs(conn, newsNum, newsInfo);
		}
		close(conn);
		
		return newsInfo;
	}

	public List<Teams> getAllTeams() {
		Connection conn = getConnection();
		
		List<Teams> newsList = dao.getAllTeams(conn);
		
		close(conn);
		
		return newsList;
	}

	public int modifyNews(News news, MultipartRequest mpReq, String folderPath) {
		Connection conn = getConnection();
		
		// 뉴스 정보 수정
		int newsModifyResult = dao.modifyNews(conn, news);
		
		// 변경된 뉴스 번호 확인
		int newsNum = news.getNewsNo();
		
		// 이미지 추가
		Enumeration<String> imgFileNames = mpReq.getFileNames();
		
		if (newsModifyResult > 0) {
	        NewsImg image = new NewsImg();
	        
	        int newsImgModifyResult = 0;
	        
	        while (imgFileNames.hasMoreElements()) {
	        	String name = imgFileNames.nextElement();
	        	String rename = mpReq.getFilesystemName(name);
	        	String original = mpReq.getOriginalFileName(name);
	        	
	        	if (rename != null) {
	        		image.setNewsNo(newsNum);
	        		image.setImgOriginal(original);
	        		image.setImgRename(folderPath+rename);
	        		image.setImgLevel(1); 	// 썸네일만 추가 => 레벨1 고정 (TODO: 여러개 추가시 변경)
	        		newsImgModifyResult = dao.modifyNewsImg(conn, image);
	        	}else {
	        		newsImgModifyResult = 0;	// 이미지 넣기 실패하면 0 반환
	        		break;
	        	}
	        }
	        
	        // 정상 (뉴스 정보 및 이미지 정상 수정) : 변경된 뉴스 번호 반환
			if(newsImgModifyResult > 0) {
				commit(conn);
				close(conn);
				return newsNum;
				
			// 비정상 :  Rollback 후 0 반환
			} else {
				rollback(conn);
				close(conn);
				return 0;
			}
		
		// 비정상 :  Rollback 후 0 반환
		}else {
			rollback(conn);
			close(conn);
			return 0;
		}
	}

	public int insertNews(News news, MultipartRequest mpReq, String folderPath) {
		Connection conn = getConnection();
		
		// 뉴스 추가
		int newsInsertResult = dao.insertNews(conn, news);
		
		// 추가된 뉴스 번호 확인
		int lastNewsNum = dao.getLastNewsNum(conn);
		
		// 이미지 추가
		Enumeration<String> imgFileNames = mpReq.getFileNames();
		
		if (newsInsertResult > 0) {
	        NewsImg image = new NewsImg();
	        
	        int newsImgInsertResult = 0;
	        
	        while (imgFileNames.hasMoreElements()) {
	        	String name = imgFileNames.nextElement();
	        	String rename = mpReq.getFilesystemName(name);
	        	String original = mpReq.getOriginalFileName(name);
	        	
	        	if (rename != null) {
	        		image.setNewsNo(lastNewsNum);
	        		image.setImgOriginal(original);
	        		image.setImgRename(folderPath+rename);
	        		image.setImgLevel(1); 	// 썸네일만 추가 => 레벨1 고정 (TODO: 여러개 추가시 변경)
	        		newsImgInsertResult = dao.insertNewsImg(conn, image);
	        	}else {
	        		newsImgInsertResult = 0;	// 이미지 넣기 실패하면 0 반환
	        		break;
	        	}
	        }
	        
	        // 모든게 정상적이면 lastNewsNum 반환
			if(newsImgInsertResult > 0) {
				commit(conn);
				close(conn);
				return lastNewsNum;
				
			// 비정상 :  Rollback 후 0 반환
			} else {
				rollback(conn);
				close(conn);
				return 0;
			}
		
		// 뉴스 추가실패시 Rollback 후 0 반환
		}else {
			rollback(conn);
			close(conn);
			return 0;
		}

	}

	public int deleteNews(int newsNum) {
		Connection conn = getConnection();
		
		int deleteResult = dao.deleteNews(conn, newsNum);
	
		if (deleteResult > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return deleteResult;
	}

	public List<News> getFilteredNews(String searchTerm, int teamNo) {
		Connection conn = getConnection();
		
		// 뉴스 가져오기 (썸네일 자동 추가)
		List<News> newsList = dao.getFilteredNews(conn, searchTerm, teamNo);
		
		close(conn);
		
		return newsList;
	}

	// 조회수 갱신
	public void updateNewsView(int newsNum) {
		Connection conn = getConnection();
		
		int updateResult = dao.updateNewsView(conn, newsNum);
	
		if (updateResult > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return;
	}
}
