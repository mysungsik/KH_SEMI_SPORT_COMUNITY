<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="${contextPath}/src/css/profile.css">
    <script src="${contextPath}/src/js/profile.js" defer></script>
    
    <title>MLB - Na</title>
</head>
<body>
    <jsp:include page="/WEB-INF/views/layouts/header.jsp"/>

    <main>
        <section class="container">
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
                            <li class="text-hover__blue"> 내 댓글</li>
                            <li class="text-hover__blue"> 내 게시글</li>
                            <li class="text-hover__blue"> 내 스크랩</li>
                        </ul>
                    </div>
                    <div>
                        <p class="fc__gray fs-20"> 개인 정보 </p>
                        <ul class="ml-20">
                            <li class="text-hover__blue"> 내 정보 관리</li>
                            <li class="text-hover__blue"> 회원 탈퇴</li>
                        </ul>
                    </div>
                    <div>
                        <p class="fc__gray fs-20"> 회원 관리 </p>
                        <ul class="ml-20">
                            <li class="text-hover__blue"> 유저 관리 </li>
                            <li class="text-hover__blue"> 신고 관리 </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="profile-content">
                <p class="content-title">내 댓글</p>
                <hr class="hr__gray">
                <div class="content-header">
                    <div class="checkbox__blue small-square">
                        <input type="checkbox" id="check-all" name="check-all">
                        <label for="term-personal" class="fs-20__b">전체선택</label>
                    </div>
                    <div>
                        <img src="${contextPath}/public/icons/bin.png">
                        <span> 선택 삭제 </span>
                    </div>
                </div>
                <div class="content-main">
                    <div class="content-elements">
                        <div class="comment checkbox__blue small-square">
                            <input type="checkbox" id="post-check" name="post-check" value="1">
                            <div class="element-text">
                                <p> <span>[ 커뮤니티 - 공지 ]</span> 커뮤니티 글 이렇게 쓰는게 맞나요</p>
                                <p> 커뮤니티 그렇게 쓰는게 맞습니다! </p>
                            </div>
                            <div class="element-edit">
                                <img src="${contextPath}/public/icons/edit.png">
                            </div>
                        </div>
                        <div class="comment checkbox__blue small-square">
                            <input type="checkbox" id="post-check" name="post-check" value="1">
                            <div class="element-text">
                                <p> <span>[ 커뮤니티 - 공지 ]</span> 커뮤니티 글 이렇게 쓰는게 맞나요</p>
                                <p> 커뮤니티 그렇게 쓰는게 맞습니다! </p>
                            </div>
                            <div class="element-edit">
                                <img src="${contextPath}/public/icons/edit.png">
                            </div>
                        </div>
                        <div class="comment checkbox__blue small-square">
                            <input type="checkbox" id="post-check" name="post-check" value="1">
                            <div class="element-text">
                                <p> <span>[ 커뮤니티 - 공지 ]</span> 커뮤니티 글 이렇게 쓰는게 맞나요</p>
                                <p> 커뮤니티 그렇게 쓰는게 맞습니다! </p>
                            </div>
                            <div class="element-edit">
                                <img src="${contextPath}/public/icons/edit.png">
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