package com.helpgpt.sports.community.controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.helpgpt.sports.common.filerename.MyRenamePolicy;
import com.helpgpt.sports.community.model.service.CommunityService;
import com.helpgpt.sports.community.model.vo.Community;
import com.helpgpt.sports.community.model.vo.CommunityImage;
import com.helpgpt.sports.login.model.vo.User;
import com.oreilly.servlet.MultipartRequest;

@WebServlet("/community/communityPosting/insert")
public class PostingBoardServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        CommunityService service = new CommunityService();
        
        HttpSession session = req.getSession();
        
        // MultipartRequest를 사용하여 파일 업로드 처리
        int maxSize = 1024 * 1024 * 100; // 최대 업로드 용량 (100MB)
        String root = session.getServletContext().getRealPath("/"); // 서버의 실제 경로
        String folderPath = "/public/images/community/"; // 파일 저장 폴더 경로
        String filePath = root + folderPath; // 파일 저장 절대 경로
        String encoding = "UTF-8"; // 문자 인코딩
        MultipartRequest mpReq = new MultipartRequest(req, filePath, maxSize, encoding, new MyRenamePolicy());
        
        // 나머지 텍스트 형식의 데이터 처리
        String title = mpReq.getParameter("title");
        String content = mpReq.getParameter("content");
        int boardType = Integer.parseInt(mpReq.getParameter("type"));
        
        int teamNo = 0;
        String teamNoParam = mpReq.getParameter("team");
        if(teamNoParam != null) {
        	teamNo = Integer.parseInt(teamNoParam);
        }
        
        // 현재 로그인한 사용자 정보 가져오기
        User loginUser = (User) session.getAttribute("loginUser");
        int userNo = loginUser.getUserNo();
        
        // Community 객체 생성 및 데이터 설정
        Community board = new Community();
        board.setUserNo(userNo);
        board.setTypeNo(boardType);
        board.setTeamNo(teamNo);
        board.setBoardTitle(title);
        board.setBoardContent(content);
        
        // CommunityService를 이용하여 데이터베이스에 게시글 등록
        
        int result = service.insertBoard(board);
        
        // 최신 페이지 번호 조회
        int boardNo = service.selectCurrentNo();
        
        // 파일 정보 처리
        Enumeration<String> fileNames = mpReq.getFileNames();
        CommunityImage image = new CommunityImage(); // CommunityImage 객체 초기화
        if (fileNames.hasMoreElements()) {
        	String name = fileNames.nextElement();
        	String rename = mpReq.getFilesystemName(name);
        	String original = mpReq.getOriginalFileName(name);
        	
        	if (rename != null) {
        		image.setBoardNo(boardNo);
        		image.setImageOriginal(original);
        		image.setImageRename(rename);
        		result = service.insertImage(image);
        	}
        	
        }
        
        // 등록 결과에 따른 리다이렉트 처리
        String path = null;
        if (result > 0) {
            path = req.getContextPath() + "/community/communityDetail/" + boardNo;
        } else {
            path = req.getContextPath() + "/community/communityPosting/write";
        }
        
        resp.sendRedirect(path);
    }


}
