<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="/WEB-INF/views/layouts/header-teams-dependencies.jsp"/>
	<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp"/>
    <link rel="stylesheet" href="${contextPath}/src/css/teams.css">
    <script src="${contextPath}/src/js/teams.js" defer></script>
    <title>MLB Teams</title>
</head>
<body>
    <jsp:include page="/WEB-INF/views/layouts/header.jsp"/>
    <main>
        <main class="container">
            <section class="main-top">
                <article class="title">
                    <div class="intro-title-desc">
                        <span class="fs-28__b ">구단 소개</span>
                        <p class="fs-14 mt-10"> <img src="${contextPath}/public/icons/right-arrow.png" alt="오른쪽화살표" class="w-20"> <span class="fs-14">구단 정보</span> ∙ 각 구단을 선택하시면 구단의 상세정보를 확인하실 수 있습니다.</p>
                    </div>
                    <div class="button-area">
                        <button id="add-team-btn" onclick="location.href='${contextPath}/teams/teamAdd' ">구단 추가</button>
                        <button id="delete-team-btn">구단 삭제</button>
                    </div>
                </article>
            </section>

            <section class="main-content">
                <article class="teams">
                    <div class="al-east-icons">
                    </div>
                </article>
            </section>
        </main>
    </main>
   <jsp:include page="/WEB-INF/views/layouts/footer.jsp"/>
</body>
</html>