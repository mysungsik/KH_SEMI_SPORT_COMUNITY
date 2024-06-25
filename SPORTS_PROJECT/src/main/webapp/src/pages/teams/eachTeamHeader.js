/**
 * Write common util code like 
 * Validation.js
 * Connect.js
 */

$(document).ready(function () {
    let login = true;

    // 로그인 했을 경우
    if (login){
        $("eachTeamHeader").append(`
            <div class="header-top">
                <div class="header-top-user box-hover dropdown">
                    <img class="user-image" src='/FRONTEND/public/images/user_img1.jpg'>
                    <div class="user-name dropdown-toggle" type="button" data-bs-toggle="dropdown">
                        <a class="text-hover__blue fs-14__b">test_user1</a>
                    </div>
                    <ul class="dropdown-menu">
                        <li class="d-flex dropdown-item">
                            <div class="d-flex">
                                <img class="user-image" src='/FRONTEND/public/images/teams/FL.png'>
                                <p class="fs-20__ex"> 기아 타이거즈 </p>
                            </div>
                            <div class="d-flex">
                                <a class="text-hover__blue" href="/FRONTEND/src/pages/teams/teams.html"> 팀페이지 </a>
                                <a class="text-hover__blue" href="/FRONTEND/src/pages/news/news.html"> 뉴스 </a>
                            </div>
                        </li>
                        <hr class="hr__gray">
                        <p class="header-title fc__gray fs-20__b"> 컨텐츠</p>
                        <li><a class="dropdown-item fs-20__b text-hover__blue" href="#">내 댓글</a></li>
                        <li><a class="dropdown-item fs-20__b text-hover__blue" href="#">내 게시글</a></li>
                        <li><a class="dropdown-item fs-20__b text-hover__blue" href="#">내 스크랩</a></li>
                        
                        <p class="header-title fc__gray fs-20__b"> 개인 정보 </p>
                        <li><a class="dropdown-item fs-20__b text-hover__blue" href="#">내 정보 관리</a></li>
                        <li><a class="dropdown-item fs-20__b text-hover__blue" href="#">회원 탈퇴</a></li>

                    </ul>
                </div>
            </div>
            <div class="header-bot">
                <div class="header-nav">
                    <ul class="d-flex">
                        <a class="fs-20__b text-hover__blue" href="#">BLUE JAYS</a>
                        <a class="fs-20__b  text-hover__blue" href="#">PLAYERS</a>
                        <a class="header-bot-logo" href="./eachTeamMain.html">
                            <img class="logo" src='/FRONTEND/public/images/teams/FL.png'>
                        </a>
                        <a class="fs-20__b text-hover__blue" href="#">SCHEDULE</a>
                        <a class="fs-20__b text-hover__blue" href="#">CONTENTS</a>
                    </ul>
                </div>
            </div>
        `);

    // 로그인 안했을 경우
    } else{
        $("header").append(`
            <div class="header-top">
                
                <div class="header-top-user box-hover" onclick="location.href = '/FRONTEND/src/pages/login/login.html'">
                    <img class="user-image" src='/FRONTEND/public/icons/plus.png'>
                    <div class="user-name">
                        <a class="text-hover__gray fc__gray fs-14__b">로그인후 이용해주세요</a>
                    </div>
                </div>
            </div>
            <div class="header-bot">
                <div class="header-nav">
                    <ul class="d-flex">
                        <a class="fs-20__b text-hover__blue" href="#">BLUE JAYS</a>
                        <a class="fs-20__b text-hover__blue" href="#">PLAYERS</a>
                        <a class="header-bot-logo">
                            <img class="logo" src='/FRONTEND/public/images/mlb_logo.png'>
                        </a>
                        <a class="fs-20__b text-hover__blue" href="#">SCHEDULE</a>
                        <a class="fs-20__b text-hover__blue" href="#">CONTENTS</a>
                    </ul>
                </div>
            </div>
        `);
    }
    

});