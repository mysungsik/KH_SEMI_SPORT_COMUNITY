<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="/SPORTS_PROJECT/src/css/profile.css">
    <script src="/SPORTS_PROJECT/src/js/profile.js" defer></script>
    
    <title>MLB - Na</title>
</head>
<body>
    <jsp:include page="/WEB-INF/views/layouts/header.jsp"/>

    <main>
        <section class="container">
            <div class="myInfo-left">
                <div class="user-profile">
                    <img src="/SPORTS_PROJECT/public/images/user_img1.jpg">
                    <p> test_id </p>
                    <p> test_email@email.com</p>
                </div>
                <div class="user-nav">
                    <div>
                        <p> 컨텐츠 </p>
                        <ul>
                            <li> 내 댓글</li>
                            <li> 내 게시글</li>
                            <li> 내 스크랩</li>
                        </ul>
                    </div>
                    <div>
                        <p> 개인 정보 </p>
                        <ul>
                            <li> 내 정보 관리</li>
                            <li> 회원 탈퇴</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="myInfo-content">
                <p class="content-title">내 댓글</p>
                <hr class="hr__gray">
                <div class="content-header">
                    <div class="checkbox__blue small-square">
                        <input type="checkbox" id="check-all" name="check-all">
                        <label for="term-personal" class="fs-20__b">전체선택</label>
                    </div>
                    <div>
                        <img src="/SPORTS_PROJECT/public/icons/bin.png">
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
                                <img src="/SPORTS_PROJECT/public/icons/edit.png">
                            </div>
                        </div>
                        <div class="comment checkbox__blue small-square">
                            <input type="checkbox" id="post-check" name="post-check" value="1">
                            <div class="element-text">
                                <p> <span>[ 커뮤니티 - 공지 ]</span> 커뮤니티 글 이렇게 쓰는게 맞나요</p>
                                <p> 커뮤니티 그렇게 쓰는게 맞습니다! </p>
                            </div>
                            <div class="element-edit">
                                <img src="/SPORTS_PROJECT/public/icons/edit.png">
                            </div>
                        </div>
                        <div class="comment checkbox__blue small-square">
                            <input type="checkbox" id="post-check" name="post-check" value="1">
                            <div class="element-text">
                                <p> <span>[ 커뮤니티 - 공지 ]</span> 커뮤니티 글 이렇게 쓰는게 맞나요</p>
                                <p> 커뮤니티 그렇게 쓰는게 맞습니다! </p>
                            </div>
                            <div class="element-edit">
                                <img src="/SPORTS_PROJECT/public/icons/edit.png">
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