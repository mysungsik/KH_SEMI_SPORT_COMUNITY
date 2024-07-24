<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>matchMain</title>
<link rel="stylesheet" href="${contextPath}/src/css/matchMain.css">
<link rel="stylesheet" href="${contextPath}/src/css/dashboard.css">
<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp" />
<script src="${contextPath}/src/js/matchMain.js" defer></script>
</head>

<body>
    <jsp:include page="/WEB-INF/views/layouts/header.jsp" />
    <main>
        <section class="container">
            <div class="main">
                <div class="main-top card__lblue">
                    <div class="main-top-bar fs-20__b base__mblue">
                        <p>KBO 순위</p>
                        <div class="more">
                            <a href="${contextPath}/match/teamRanking">더보기</a>
                        </div>
                    </div>

                    <div>
                        <table class="teamRanking">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>팀명</th>
                                    <th>경기</th>
                                    <th>승</th>
                                    <th>패</th>
                                    <th>게임차</th>
                                </tr>
                            </thead>
                            <tbody>
                            
                            </tbody>
                        </table>
                    </div>
                </div>
                
                <div class="matchschedule">
                    <video class="main-video" autoplay muted loop>
                        <source src="${contextPath}/public/video/backgroundVideo.mp4"
                            id=backgroundVideo>
                    </video>
                    <div class="videoText">
                        <a href="${contextPath}/match/matchDate">경기일정</a>
                    </div>
                </div>
                <div class="player-ranking card__lblue">
                    <div class="player-ranking-top fs-20__b base__mblue" >
                        <p>선수 순위</p>
                    </div>
                    <div class=player_record>
                        <div class="box-ranking">
                            <strong class="rankingCategory">다승</strong>
                            <div class="profileImage">
                                <img src="${contextPath}/public/images/user_img1.jpg" alt="#"
                                    id="playerImage">
                            </div>
                            <ol class="list_ranking">
                                <li>
                                    <div class="list_detail">
                                        <span>1 헤이수스(키움)</span> <span class="count">10승</span>
                                    </div>
                                </li>
                                <li>
                                    <div class="list_detail">
                                        <span>2 엔스(키움)</span> <span class="count">9승</span>
                                    </div>
                                </li>
                                <li>
                                    <div class="list_detail">
                                        <span>3 원커슨(롯데)</span> <span class="count">8승</span>
                                    </div>
                                </li>
                                <li>
                                    <div class="list_detail">
                                        <span>4 후라도(키움)</span> <span class="count">7승</span>
                                    </div>
                                </li>
                                <li>
                                    <div class="list_detail">
                                        <span>5 네일(기아)</span> <span class="count">6승</span>
                                    </div>
                                </li>
                            </ol>
                        </div>
                        <div class="box-ranking">
                            <strong class="rankingCategory">평균자책</strong>
                            <div class="profileImage">
                                <img src="${contextPath}/public/images/user_img1.jpg" alt="#"
                                    id="playerImage">
                            </div>
                            <ol class="list_ranking">
                                <li>
                                    <div class="list_detail">
                                        <span>1 네일(기아)</span> <span class="count">2.44</span>
                                    </div>
                                </li>
                                <li><div class="list_detail">
                                        <span>2 하트(NC)</span> <span class="count">2.88</span>
                                    </div></li>
                                <li><div class="list_detail">
                                        <span>3 헤이수스(키움)</span> <span class="count">3.34</span>
                                    </div></li>
                                <li><div class="list_detail">
                                        <span>4 후라도(키움)</span> <span class="count">3.42</span>
                                    </div></li>
                                <li><div class="list_detail">
                                        <span>5 월커슨(롯데)</span> <span class="count">3.61</span>
                                    </div></li>
                            </ol>
                        </div>
                        <div class="box-ranking">
                            <strong class="rankingCategory">탈삼진</strong>
                            <div class="profileImage">
                                <img src="${contextPath}/public/images/user_img1.jpg" alt="#"
                                    id="playerImage">
                            </div>
                            <ol class="list_ranking">
                                <li><div class="list_detail">
                                        <span>1 하트(NC)</span> <span class="count">128개</span>
                                    </div></li>
                                <li><div class="list_detail">
                                        <span>2 네일(기아)</span> <span class="count">115개</span>
                                    </div></li>
                                <li><div class="list_detail">
                                        <span>3 엄상백(KT)</span> <span class="count">114개</span>
                                    </div></li>
                                <li><div class="list_detail">
                                        <span>4 코너(삼성)</span> <span class="count">113개</span>
                                    </div></li>
                                <li><div class="list_detail">
                                        <span>5 헤이수스(키움)</span> <span class="count">112개</span>
                                    </div></li>
                            </ol>
                        </div>
                        <div class="box-ranking">
                            <strong class="rankingCategory">세이브</strong>
                            <div class="profileImage">
                                <img src="${contextPath}/public/images/user_img1.jpg" alt="#"
                                    id="playerImage">
                            </div>
                            <ol class="list_ranking">
                                <li><div class="list_detail">
                                        <span>1 오승환(삼성)</span> <span class="count">25</span>
                                    </div></li>
                                <li><div class="list_detail">
                                        <span>2 정해영(기아)</span> <span class="count">21</span>
                                    </div></li>
                                <li><div class="list_detail">
                                        <span>3 유영찬(LG)</span> <span class="count">18</span>
                                    </div></li>
                                <li><div class="list_detail">
                                        <span>4 문승원(SSG)</span> <span class="count">17</span>
                                    </div></li>
                                <li><div class="list_detail">
                                        <span>5 김원중(롯데)</span> <span class="count">16</span>
                                    </div></li>
                            </ol>
                        </div>
                        <div class="box-ranking">
                            <strong class="rankingCategory">WHIP</strong>
                            <div class="profileImage">
                                <img src="${contextPath}/public/images/user_img1.jpg" alt="#"
                                    id="playerImage">
                            </div>
                            <ol class="list_ranking">
                                <li><div class="list_detail">
                                        <span>1 하트(NC)</span> <span class="count">1.07</span>
                                    </div></li>
                                <li><div class="list_detail">
                                        <span>2 월커슨(롯데)</span> <span class="count">1.18</span>
                                    </div></li>
                                <li><div class="list_detail">
                                        <span>3 헤이수스(키움)</span> <span class="count">1.17</span>
                                    </div></li>
                                <li><div class="list_detail">
                                        <span>4 코너(삼성)</span> <span class="count">1.21</span>
                                    </div></li>
                                <li><div class="list_detail">
                                        <span>5 네일(기아)</span> <span class="count">1.21</span>
                                    </div></li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <jsp:include page="/WEB-INF/views/layouts/footer.jsp" />
</body>

</html>
