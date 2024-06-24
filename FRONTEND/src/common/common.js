/**
 * Write common util code like 
 * Validation.js
 * Connect.js
 */

$(document).ready(function () {
    let login = false;

    // 로그인 했을 경우
    if (login){
        $("header").append(`
            <div class="header-top">
                <div class="header-top-logo">
                    <img class="logo" src='/FRONTEND/public/images/mlb_logo.png'>
                </div>
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
                        <a class="fs-14 fc__white text-hover__white" href="/FRONTEND/src/pages/dashboard/dashboard.html">HOME</a>
                        <a class="fs-14 fc__white text-hover__white" href="/FRONTEND/src/pages/news/news.html">TODAY</a>
                        <a class="fs-14 fc__white text-hover__white" href="/FRONTEND/src/pages/news/news.html">NEWS</a>
                        <a class="fs-14 fc__white text-hover__white" href="/FRONTEND/src/pages/community/community.html">COMMUNITY</a>
                        <a class="fs-14 fc__white text-hover__white" href="/FRONTEND/src/pages/teams/teams.html">TEAMS</a>
                    </ul>
                </div>
            </div>
        `);

    // 로그인 안했을 경우
    } else{
        $("header").append(`
            <div class="header-top">
                <div class="header-top-logo">
                    <img class="logo" src='/FRONTEND/public/images/mlb_logo.png'>
                </div>
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
                        <a class="fs-14 fc__white text-hover__white" href="/FRONTEND/src/pages/dashboard/dashboard.html">HOME</a>
                        <a class="fs-14 fc__white text-hover__white" href="/FRONTEND/src/pages/news/news.html">TODAY</a>
                        <a class="fs-14 fc__white text-hover__white" href="/FRONTEND/src/pages/news/news.html">NEWS</a>
                        <a class="fs-14 fc__white text-hover__white" href="/FRONTEND/src/pages/community/community.html">COMMUNITY</a>
                        <a class="fs-14 fc__white text-hover__white" href="/FRONTEND/src/pages/teams/teams.html">TEAMS</a>
                    </ul>
                </div>
            </div>
        `);
    }
    

    $("footer").append(`
        <div class="footer-top d-flex">
            <div class="footer-top-left d-flex">
                <img class="logo" src='/FRONTEND/public/images/mlb_logo2.jpg'>
                <div class="footer-top-anno d-flex">
                    <p class="fs-14__ex fc__dgray mr-10"> 공지사항 </p>
                    <p class="fs-14 fc__gray text-hover__gray"> KH 커뮤니티 페이지가 오픈했습니다! </p>
                </div>
            </div>
            <div class="footer-top-right d-flex">
                <p class="fs-12 fc__gray text-hover__gray"> HOME </p> <span> &#183;</span>
                <p class="fs-12 fc__gray text-hover__gray"> TODAY </p> <span> &#183;</span>
                <p class="fs-12 fc__gray text-hover__gray"> NEWS </p> <span> &#183;</span>
                <p class="fs-12 fc__gray text-hover__gray"> COMMUNITY </p> <span> &#183;</span>
                <p class="fs-12 fc__gray text-hover__gray"> TEAMS </p>
            </div>
        </div>
        <div class="footer-bot d-flex">
            <div class="footer-bot-nav d-flex">
                <ul class="d-flex m-10">
                    <li class="fc__gray text-hover__gray">LOGOUT</li>
                    <li class="fc__gray text-hover__gray">공지사항</li>
                    <li class="fc__gray text-hover__gray">HOMME</li>
                    <li class="fc__gray text-hover__gray">COMMUNITY</li>
                    <li class="fc__gray text-hover__gray">CONTACT</li>
                </ul>
            </div>
            <p class="footer-bot-warn fc__gray"> 본 콘텐츠의 저작권은 제공처 또는 GPT야 도와조에게 있으며, 이를 무단 이용하는 경우 저작권법 등에 따라 법적 책임을 질 수 있습니다. </p>
        </div>
    `);
});