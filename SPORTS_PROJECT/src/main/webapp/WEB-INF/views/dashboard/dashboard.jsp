<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="${contextPath}/src/css/dashboard.css">
    <script src="${contextPath}/src/js/dashboard.js" defer></script>
    
    <title>MLB - Dashboard</title>
</head>
<body>
    <jsp:include page="/WEB-INF/views/layouts/header.jsp"/>
    <main>
        <section class="container">
            <div class="container-top">
                <div class="container-left">
                    <div class="current-events card__lblue ">
                        <p class="content-header fs-14__b fc__blue"> CURRENT MAIN EVENT</p>
                        <div class="events-date-div d-flex">
                            <img src="${contextPath}/public/icons/left-arrow.png" class="w-15 h-15" onclick="beforeDay()">
                            <div id="dateDisplay"></div>
                            <img src="${contextPath}/public/icons/right-arrow.png" class="w-15 h-15" onclick="nextDay()">
                        </div>
                        <div class="swiper swiper-events">
                            <div class="swiper-wrapper current-events-score">
                                <!-- ul 내부 list 최대 7개 -->
                                <ul class="swiper-slide card__white">
                                    <li class="d-flex right-win">
                                        <div class="score-left-symbol score__red"></div>
                                        <span class="score-left-team fs-14"> 한화 </span>
                                        <span class="score-left-score fs-14__b"> 6 </span>
                                        <div class="score-inning fs-20">
                                            종료
                                            <!-- <div class="score-inning-down"></div> -->
                                        </div>
                                        <span class="score-right-score fs-14__b"> 7 </span>
                                        <span class="score-right-team fs-14"> 기아 </span>
                                        <div class="score-right-symbol score__green"></div>
                                    </li>
                                    <li class="d-flex">
                                        <div class="score-left-symbol score__gray"></div>
                                        <span class="score-left-team fs-14"> 한화 </span>
                                        <span class="score-left-score fs-14__b"> 6 </span>
                                        <div class="score-inning fs-20">
                                            7회<div class="score-inning-up"></div>
                                        </div>
                                        <span class="score-right-score fs-14__b"> 7 </span>
                                        <span class="score-right-team fs-14"> 기아 타이거 </span>
                                        <div class="score-right-symbol score__gray"></div>
                                    </li>
                                    <li class="d-flex left-win">
                                        <div class="score-left-symbol score__green"></div>
                                        <span class="score-left-team fs-14"> 한화 </span>
                                        <span class="score-left-score fs-14__b"> 3 </span>
                                        <div class="score-inning fs-20">
                                            종료
                                            <!-- <div class="score-inning-down"></div> -->
                                        </div>
                                        <span class="score-right-score fs-14__b"> 13 </span>
                                        <span class="score-right-team fs-14"> 기아 </span>
                                        <div class="score-right-symbol score__red"></div>
                                    </li>
                                    <li class="d-flex">
                                        <div class="score-left-symbol score__green"></div>
                                        <span class="score-left-team fs-14"> 한화 </span>
                                        <span class="score-left-score fs-14__b"> 6 </span>
                                        <div class="score-inning fs-20">
                                            종료
                                            <!-- <div class="score-inning-up"></div> -->
                                        </div>
                                        <span class="score-right-score fs-14__b"> 7 </span>
                                        <span class="score-right-team fs-14"> 기아 타이거 </span>
                                        <div class="score-right-symbol score__red"></div>
                                    </li>
                                    <li class="d-flex">
                                        <div class="score-left-symbol score__gray"></div>
                                        <span class="score-left-team fs-14"> 한화 </span>
                                        <span class="score-left-score fs-14__b"> 6 </span>
                                        <div class="score-inning fs-20">
                                            9회 
                                            <div class="score-inning-down"></div>
                                        </div>
                                        <span class="score-right-score fs-14__b"> 7 </span>
                                        <span class="score-right-team fs-14"> 기아 </span>
                                        <div class="score-right-symbol score__gray"></div>
                                    </li>
                                    <li class="d-flex left-win">
                                        <div class="score-left-symbol score__green"></div>
                                        <span class="score-left-team fs-14"> 삼성 </span>
                                        <span class="score-left-score fs-14__b"> 13 </span>
                                        <div class="score-inning fs-20">
                                            종료
                                            <!-- <div class="score-inning-up"></div> -->
                                        </div>
                                        <span class="score-right-score fs-14__b"> 7 </span>
                                        <span class="score-right-team fs-14"> 기아 타이거 </span>
                                        <div class="score-right-symbol score__red"></div>
                                    </li>
                                    <li class="d-flex left-win">
                                        <div class="score-left-symbol score__green"></div>
                                        <span class="score-left-team fs-14"> 두산 </span>
                                        <span class="score-left-score fs-14__b"> 11 </span>
                                        <div class="score-inning fs-20">
                                            종료
                                            <!-- <div class="score-inning-up"></div> -->
                                        </div>
                                        <span class="score-right-score fs-14__b"> 7 </span>
                                        <span class="score-right-team fs-14"> 기아 타이거 </span>
                                        <div class="score-right-symbol score__red"></div>
                                    </li>
                                </ul>
                                <!-- ul 내부 list 최대 7개 -->
                                <ul class="swiper-slide card__white">
                                    <li class="d-flex right-win">
                                        <div class="score-left-symbol score__red"></div>
                                        <span class="score-left-team fs-14"> 한화 </span>
                                        <span class="score-left-score fs-14__b"> 6 </span>
                                        <div class="score-inning fs-20">
                                            종료
                                            <!-- <div class="score-inning-down"></div> -->
                                        </div>
                                        <span class="score-right-score fs-14__b"> 7 </span>
                                        <span class="score-right-team fs-14"> 기아 </span>
                                        <div class="score-right-symbol score__green"></div>
                                    </li>
                                    <li class="d-flex">
                                        <div class="score-left-symbol score__gray"></div>
                                        <span class="score-left-team fs-14"> 한화 </span>
                                        <span class="score-left-score fs-14__b"> 6 </span>
                                        <div class="score-inning fs-20">
                                            7회<div class="score-inning-up"></div>
                                        </div>
                                        <span class="score-right-score fs-14__b"> 7 </span>
                                        <span class="score-right-team fs-14"> 기아 타이거 </span>
                                        <div class="score-right-symbol score__gray"></div>
                                    </li>
                                </ul>
                                <!-- ul 내부 list 최대 7개 -->
                                <ul class="swiper-slide card__white">
                                    <li class="d-flex right-win">
                                        <div class="score-left-symbol score__red"></div>
                                        <span class="score-left-team fs-14"> 한화 </span>
                                        <span class="score-left-score fs-14__b"> 6 </span>
                                        <div class="score-inning fs-20">
                                            종료
                                            <!-- <div class="score-inning-down"></div> -->
                                        </div>
                                        <span class="score-right-score fs-14__b"> 7 </span>
                                        <span class="score-right-team fs-14"> 기아 </span>
                                        <div class="score-right-symbol score__green"></div>
                                    </li>
                                    <li class="d-flex">
                                        <div class="score-left-symbol score__gray"></div>
                                        <span class="score-left-team fs-14"> 한화 </span>
                                        <span class="score-left-score fs-14__b"> 6 </span>
                                        <div class="score-inning fs-20">
                                            7회<div class="score-inning-up"></div>
                                        </div>
                                        <span class="score-right-score fs-14__b"> 7 </span>
                                        <span class="score-right-team fs-14"> 기아 타이거 </span>
                                        <div class="score-right-symbol score__gray"></div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="d-flex arrows">
                            <img src="${contextPath}/public/icons/left-arrow.png" style="width: 13px; height: 13px;">
                            <img src="${contextPath}/public/icons/right-arrow.png" style="width: 13px; height: 13px;">
                        </div>
                    </div>
                    <div class="main-news card__blue">
                        <p class="content-header fs-14__b fc__white"> MAIN NEWS</p>
                        <div class="main-news-content card__lblue mt-10 swiper swiper-news">
                            <!-- 좌중단 메인 뉴스 작성 -->
                            <div class="news-content-top d-flex swiper-wrapper">
                                <div class="card-thumbnail swiper-slide">
                                    <img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg">
                                    <div class="card-thumbnail-infos">
                                        <div class="card-thumbnail-title">
                                            '9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ
                                        </div>
                                        <div class="card-thumbnail-content">
                                            <p> ♡ <span>9999</span></p>
                                            <p> KBO 리그</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-thumbnail swiper-slide">
                                    <img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg">
                                    <div class="card-thumbnail-infos">
                                        <div class="card-thumbnail-title">
                                            '9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ
                                        </div>
                                        <div class="card-thumbnail-content">
                                            <p> ♡ <span>9999</span></p>
                                            <p> KBO 리그</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-thumbnail swiper-slide">
                                    <img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg">
                                    <div class="card-thumbnail-infos">
                                        <div class="card-thumbnail-title">
                                            '9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ
                                        </div>
                                        <div class="card-thumbnail-content">
                                            <p> ♡ <span>9999</span></p>
                                            <p> KBO 리그</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-thumbnail swiper-slide">
                                    <img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg">
                                    <div class="card-thumbnail-infos">
                                        <div class="card-thumbnail-title">
                                            '9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ
                                        </div>
                                        <div class="card-thumbnail-content">
                                            <p> ♡ <span>9999</span></p>
                                            <p> KBO 리그</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-thumbnail swiper-slide">
                                    <img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg">
                                    <div class="card-thumbnail-infos">
                                        <div class="card-thumbnail-title">
                                            '9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ
                                        </div>
                                        <div class="card-thumbnail-content">
                                            <p> ♡ <span>9999</span></p>
                                            <p> KBO 리그</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="news-content-bottom">
                                <div class="new-headline d-flex">
                                    <p>‘주간 ERA 11.57’ 5월 MVP 곽빈 1군 말소당해버렸다 이승엽 감독 ”에이스니까, 더 해야지 안그러냐 </p><span>[IS 잠실]</span>
                                </div>
                                <div class="new-headline d-flex">
                                    <p>‘주간 ERA 11.57’ 5월 MVP 곽빈 1군 말소당해버렸다 이승엽 감독 ”에이스니까, 더 해야지 안그러냐 </p><span>[IS 잠실]</span>
                                </div>
                                <div class="new-headline d-flex">
                                    <p>‘주간 ERA 11.57’ 5월 MVP 곽빈 1군 말소당해버렸다 이승엽 감독 ”에이스니까, 더 해야지 안그러냐 </p><span>[IS 잠실]</span>
                                </div>
                                <div class="new-headline d-flex">
                                    <p>‘주간 ERA 11.57’ 5월 MVP 곽빈 1군 말소당해버렸다 이승엽 감독 ”에이스니까, 더 해야지 안그러냐 </p><span>[IS 잠실]</span>
                                </div>
                                <div class="new-headline d-flex">
                                    <p>‘주간 ERA 11.57’ 5월 MVP 곽빈 1군 말소당해버렸다 이승엽 감독 ”에이스니까, 더 해야지 안그러냐 </p><span>[IS 잠실]</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container-right card__lblue">
                    <div class="score-board">
                        <p class="content-header fs-14__b fc__blue"> SCORE BOARD</p>
                        <div class="score-board-score card__white mt-10">
                            <!-- 우측 스코어 보드 작성 -->
                            <ul>
                                <li class="d-flex">
                                    <div class="score-board-infos">
                                        <img class="score-board-logo" src="${contextPath}/public/images/teams/FL.png">
                                        <span class="score-board-team fs-14"> 한화 </span>
                                    </div>
                                    <div class="score-board-symbols d-flex">
                                        <div class="score-board-symbol score__green"></div>
                                        <div class="score-board-symbol score__green"></div>
                                        <div class="score-board-symbol score__red"></div>
                                        <div class="score-board-symbol score__green"></div>
                                        <div class="score-board-symbol score__gray"></div>
                                        <div class="score-board-symbol score__gray"></div>
                                    </div>
                                </li>
                                <li class="d-flex">
                                    <div class="score-board-infos">
                                        <img class="score-board-logo" src="${contextPath}/public/images/teams/FL.png">
                                        <span class="score-board-team fs-14"> 기아 타이거즈 </span>
                                    </div>
                                    <div class="score-board-symbols d-flex">
                                        <div class="score-board-symbol score__green"></div>
                                        <div class="score-board-symbol score__green"></div>
                                        <div class="score-board-symbol score__red"></div>
                                        <div class="score-board-symbol score__green"></div>
                                        <div class="score-board-symbol score__gray"></div>
                                        <div class="score-board-symbol score__gray"></div>
                                    </div>
                                </li>
                                <li class="d-flex">
                                    <div class="score-board-infos">
                                        <img class="score-board-logo" src="${contextPath}/public/images/teams/FL.png">
                                        <span class="score-board-team fs-14"> 제이 블루즌 </span>
                                    </div>
                                    <div class="score-board-symbols d-flex">
                                        <div class="score-board-symbol score__green"></div>
                                        <div class="score-board-symbol score__green"></div>
                                        <div class="score-board-symbol score__red"></div>
                                        <div class="score-board-symbol score__green"></div>
                                        <div class="score-board-symbol score__gray"></div>
                                        <div class="score-board-symbol score__gray"></div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-bot">
                <div class="hightlight-clip card__lblue swiper swiper-highlight">
                    <p class="content-header fs-20__b fc__blue"> HIGHTLIGHT CLIP</p>
                    <p class="content-all fc__blue fs-10 text-hover__blue"> See All Clips</p>
                    <hr class="hr__gray mt-10 mb-16">
                    <!-- 하단 하이라이트 클립 작성 -->
                    <div class="news-content-top d-flex swiper-wrapper">
                        <div class="card-thumbnail swiper-slide">
                            <img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg">
                            <div class="card-thumbnail-infos">
                                <div class="card-thumbnail-title">
                                    '9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ
                                </div>
                                <div class="card-thumbnail-content">
                                    <p> 일반영상</p>
                                    <p> ▷ <span> 9995 </span></p>
                                    <p> 2024.06.18</p>
                                </div>
                            </div>
                        </div>
                        <div class="card-thumbnail swiper-slide">
                            <img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg">
                            <div class="card-thumbnail-infos">
                                <div class="card-thumbnail-title">
                                    '9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ
                                </div>
                                <div class="card-thumbnail-content">
                                    <p> 일반영상</p>
                                    <p> ▷ <span> 9995 </span></p>
                                    <p> 2024.06.18</p>
                                </div>
                            </div>
                        </div>
                        <div class="card-thumbnail swiper-slide">
                            <img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg">
                            <div class="card-thumbnail-infos">
                                <div class="card-thumbnail-title">
                                    '9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ
                                </div>
                                <div class="card-thumbnail-content">
                                    <p> 일반영상</p>
                                    <p> ▷ <span> 9995 </span></p>
                                    <p> 2024.06.18</p>
                                </div>
                            </div>
                        </div>
                        <div class="card-thumbnail swiper-slide">
                            <img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg">
                            <div class="card-thumbnail-infos">
                                <div class="card-thumbnail-title">
                                    '9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ
                                </div>
                                <div class="card-thumbnail-content">
                                    <p> 일반영상</p>
                                    <p> ▷ <span> 9995 </span></p>
                                    <p> 2024.06.18</p>
                                </div>
                            </div>
                        </div>
                        <div class="card-thumbnail swiper-slide">
                            <img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg">
                            <div class="card-thumbnail-infos">
                                <div class="card-thumbnail-title">
                                    '9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ
                                </div>
                                <div class="card-thumbnail-content">
                                    <p> 일반영상</p>
                                    <p> ▷ <span> 9995 </span></p>
                                    <p> 2024.06.18</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="swiper-pagination"></div>
                </div>
                <div class="community card__lblue">
                    <p class="content-header fs-20__b fc__blue"> COMMUNITY </p>
                    <p class="content-all fc__blue fs-10 text-hover__blue"> See All Posts</p>
                    <hr class="hr__gray mb-16">
                    <!-- 하단 커뮤티니 작성 -->
                    <div class="main-bot">
                        <!-- 자유 게시판 -->
                        <div class="board mg-left">
                            <p class="title fs-20__b fc__blue">자유 게시판<p>
                            <div class="post">
                                <div class="post-title">
                                    <span class="fs-14__b">게시글입니다 test 1234</span>
                                </div>
                                <div class="post-info">
                                    <span class="fs-10">작성자 2024-06-23</span>
                                    <span class="fs-10">조회수 30 | 댓글 2 | 좋아요 3 ♡</span>
                                </div>
                            </div>
                            <div class="post">
                                <div class="post-title">
                                    <span class="fs-14__b">게시글입니다 test 1234</span>
                                </div>
                                <div class="post-info">
                                    <span class="fs-10">작성자 2024-06-23</span>
                                    <span class="fs-10">조회수 30 | 댓글 2 | 좋아요 3 ♡</span>
                                </div>
                            </div>
                            <div class="post">
                                <div class="post-title">
                                    <span class="fs-14__b">게시글입니다 test 1234</span>
                                </div>
                                <div class="post-info">
                                    <span class="fs-10">작성자 2024-06-23</span>
                                    <span class="fs-10">조회수 30 | 댓글 2 | 좋아요 3 ♡</span>
                                </div>
                            </div>
                            <div class="post">
                                <div class="post-title">
                                    <span class="fs-14__b">게시글입니다 test 1234</span>
                                </div>
                                <div class="post-info">
                                    <span class="fs-10">작성자 2024-06-23</span>
                                    <span class="fs-10">조회수 30 | 댓글 2 | 좋아요 3 ♡</span>
                                </div>
                            </div>
                            
                        </div>
        
                        <!-- 응원 게시판 -->
                        <div class="board mg-right">
                            <p class="title fs-20__b fc__blue">응원 게시판<p>
                            <div class="post">
                                <div class="post-title">
                                    <span class="fs-12 fc__gray">[ 다저스 ]</span>
                                    <span class="fs-14__b">게시글입니다 test 1234</span>
                                </div>
                                <div class="post-info">
                                    <span class="fs-10">작성자 2024-06-23</span>
                                    <span class="fs-10">조회수 30 | 댓글 2 | 좋아요 3 ♡</span>
                                </div>
                            </div>
                            <div class="post">
                                <div class="post-title">
                                    <span class="fs-12 fc__gray">[ 해머스 ]</span>
                                    <span class="fs-14__b">게시글입니다 test 1234</span>
                                </div>
                                <div class="post-info">
                                    <span class="fs-10">작성자 2024-06-23</span>
                                    <span class="fs-10">조회수 30 | 댓글 2 | 좋아요 3 ♡</span>
                                </div>
                            </div>
                            <div class="post">
                                <div class="post-title">
                                    <span class="fs-12 fc__gray">[ 다저스 ]</span>
                                    <span class="fs-14__b">게시글입니다 test 1234</span>
                                </div>
                                <div class="post-info">
                                    <span class="fs-10">작성자 2024-06-23</span>
                                    <span class="fs-10">조회수 30 | 댓글 2 | 좋아요 3 ♡</span>
                                </div>
                            </div>
                            <div class="post">
                                <div class="post-title">
                                    <span class="fs-12 fc__gray">[ 해머스 ]</span>
                                    <span class="fs-14__b">게시글입니다 test 1234</span>
                                </div>
                                <div class="post-info">
                                    <span class="fs-10">작성자 2024-06-23</span>
                                    <span class="fs-10">조회수 30 | 댓글 2 | 좋아요 3 ♡</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <jsp:include page="/WEB-INF/views/layouts/footer.jsp"/>
</body>
</html>