/**
 * Write common util code like 
 * Validation.js
 * Connect.js
 */

$(document).ready(function () {
    $("header").append(`
        <div class="header-top">
            <div class="header-top-logo">
                <img class="logo" src='/FRONTEND/public/images/mlb_logo.png'>
            </div>
            <div class="header-top-user box-hover">
                <img class="user-image" src='/FRONTEND/public/images/user_img1.jpg'>
                <div class="user-name">
                    <p class="text-hover__blue fs-14__b">test_user1</p>
                </div>
            </div>
        </div>
        <div class="header-bot">
            <div class="header-nav">
                <ul class="d-flex">
                    <li class="fc__white text-hover__white">HOME</li>
                    <li class="fc__white text-hover__white">TODAY</li>
                    <li class="fc__white text-hover__white">NEWS</li>
                    <li class="fc__white text-hover__white">COMMUNITY</li>
                    <li class="fc__white text-hover__white">TEAMS</li>
                </ul>
            </div>
        </div>
    `);

    $("footer").append(`
        <div class="footer-top d-flex">
            <div class="footer-top-left d-flex">
                <img class="logo" src='/FRONTEND/public/images/mlb_logo2.jpg'>
                <div class="footer-top-anno d-flex">
                    <p> 공지사항 </p>
                    <p> KH 커뮤니티 페이지가 오픈했습니다! </p>
                </div>
            </div>
            <div class="footer-top-right d-flex">
                <p class="fs-12 fc__gray"> HOME </p> <span> &#183;</span>
                <p class="fs-12 fc__gray"> TODAY </p> <span> &#183;</span>
                <p class="fs-12 fc__gray"> NEWS </p> <span> &#183;</span>
                <p class="fs-12 fc__gray"> COMMUNITY </p> <span> &#183;</span>
                <p class="fs-12 fc__gray"> TEAMS </p>
            </div>
        </div>
        <div class="footer-bot">
        </div>
    `);
});