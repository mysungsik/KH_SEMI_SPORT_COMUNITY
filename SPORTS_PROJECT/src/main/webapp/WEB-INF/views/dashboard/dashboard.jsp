<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp"/>
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
                            </div>
                        </div>
                    </div>
                    <div class="main-news card__blue">
                        <p class="content-header fs-14__b fc__white"> MAIN NEWS</p>
                        <div class="main-news-content card__lblue mt-10 swiper swiper-news">
                            <!-- 좌중단 메인 뉴스 작성 -->
                            <div class="news-content-top d-flex swiper-wrapper"></div>
                            <div class="news-content-bottom"></div>
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
				<!-- 하단 커뮤니티 -->
                <div class="community card__lblue">
                    <p class="content-header fs-20__b fc__blue"> COMMUNITY </p>
                    <p class="content-all fc__blue fs-10 text-hover__blue" onclick="location.href='${contextPath}/community'"> See All Posts</p>
                    <hr class="hr__gray mb-16">
                    <!-- 하단 커뮤티니 작성 -->
                    <div class="main-bot">
                        <!-- 자유 게시판 -->
                        <div class="board mg-left">
                            <p class="title fs-20__b fc__blue">자유 게시판<p>
                            <div class="board-free-container"></div>
                        </div>
                        <!-- 응원 게시판 -->
                        <div class="board mg-right">
                            <p class="title fs-20__b fc__blue">응원 게시판<p>
                            <div class="board-cheer-container"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <jsp:include page="/WEB-INF/views/layouts/footer.jsp"/>
</body>
</html>