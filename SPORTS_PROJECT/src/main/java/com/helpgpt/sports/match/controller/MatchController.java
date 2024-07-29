package com.helpgpt.sports.match.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "MatchController",
    urlPatterns = {
        "/match",
        "/match/*"
    }
)
public class MatchController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    RequestDispatcher dispatcher;
    final String defaultURLPath = "/WEB-INF/views/match/";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String reqPath = req.getPathInfo();
        String path = "";

        if (reqPath != null) {
            path = reqPath.split("/")[1];
        }

        switch (path) {
            case "":
                dispatcher = req.getRequestDispatcher(defaultURLPath + "matchMain.jsp");
                dispatcher.forward(req, resp);
                break;
            case "detail":
                dispatcher = req.getRequestDispatcher(defaultURLPath + "matchDetail.jsp");
                dispatcher.forward(req, resp);
                break;
            case "matchResult":
                dispatcher = req.getRequestDispatcher(defaultURLPath + "matchResult.jsp");
                dispatcher.forward(req, resp);
                break;
            case "teamRanking":
                dispatcher = req.getRequestDispatcher(defaultURLPath + "matchTeamRanking.jsp");
                dispatcher.forward(req, resp);
                break;
            case "matchResultPlus":
                dispatcher = req.getRequestDispatcher(defaultURLPath + "matchResultPlus.jsp");
                dispatcher.forward(req, resp);
                break;
            case "matchResultEdit":
                dispatcher = req.getRequestDispatcher(defaultURLPath + "matchResultEdit.jsp");
                dispatcher.forward(req, resp);
                break;
            case "matchStadiumInfo":
                dispatcher = req.getRequestDispatcher(defaultURLPath + "matchStadiumInfo.jsp");
                dispatcher.forward(req, resp);
                break;
            case "matchStadiumInfoPlus":
                dispatcher = req.getRequestDispatcher(defaultURLPath + "matchStadiumInfoPlus.jsp");
                dispatcher.forward(req, resp);
                break;
            case "matchDate":
                dispatcher = req.getRequestDispatcher(defaultURLPath + "matchDate.jsp");
                dispatcher.forward(req, resp);
                break;
            case "TRAmerican":
                dispatcher = req.getRequestDispatcher(defaultURLPath + "TRAmerican.jsp");
                dispatcher.forward(req, resp);
                break;
            default:
                System.out.println("404 페이지로 이동");
                break;
        }
    }
}
