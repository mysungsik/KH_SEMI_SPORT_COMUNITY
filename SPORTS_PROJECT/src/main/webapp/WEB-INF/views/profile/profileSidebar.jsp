<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="profile-left">
    <div class="user-profile d-flex">
        <img src="${contextPath}/public/images/user_img1.jpg">
        <p> test_id </p>
        <p> test_email@email.com</p>
    </div>
    <hr class="hr__gray mr-12 ml-12">
    <div class="user-nav mt-20">
        <div>
            <p class="fc__gray fs-20"> 컨텐츠 </p>
            <ul class="ml-20">
                <li class="text-hover__blue"> <a href="${contextPath}/profile/myComment">내 댓글</a></li>
                <li class="text-hover__blue"> <a href="${contextPath}/profile/myBoard">내 게시글</a></li>
                <li class="text-hover__blue"> <a href="${contextPath}/profile/myScrab">내 스크랩</a></li>
            </ul>
        </div>
        <div>
            <p class="fc__gray fs-20"> 개인 정보 </p>
            <ul class="ml-20">
                <li class="text-hover__blue"> <a href="${contextPath}/profile/myInfo">내 정보 관리</a></li>
                <li class="text-hover__blue"> <a href="${contextPath}/profile/resign">회원 탈퇴</a></li>
            </ul>
        </div>
        <div>
            <p class="fc__gray fs-20"> 회원 관리 </p>
            <ul class="ml-20">
                <li class="text-hover__blue"> <a href="${contextPath}/admin/profile/userManagement">유저 관리</a> </li>
                <li class="text-hover__blue"> <a href="${contextPath}/admin/profile/reportManagement">신고 관리</a> </li>
            </ul>
        </div>
    </div>
</div>
