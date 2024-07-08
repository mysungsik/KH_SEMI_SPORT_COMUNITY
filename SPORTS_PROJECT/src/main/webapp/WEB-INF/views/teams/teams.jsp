<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp"/>
    <link rel="stylesheet" href="${contextPath}/src/css/teams.css">
    <script src="${contextPath}/src/css/teams.js" defer></script>
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
                </article>
            </section>

            <section class="main-content">
                <article class="teams">
                    <div class="al-east-icons">
                        <a href="${contextPath}/teams/kia" >
                            <div class="teams-card br-10 mb-10 mr-20">
                            	<div class="team-logo-img">
	                                <img src="https://upload.wikimedia.org/wikipedia/en/e/e0/Kia_Tigers_2017_New_Team_Logo.png" class="team-logo" alt="구단사진1">
                            	</div>
                                <div class="teams-name">
                                    <span class="fs-14 fc__white ml-10">KIA TIGERS</span>
                                    <img src="${contextPath}/public/icons/right-arrow__white.png" class="mr-10">
                                </div>
                            </div>
                        </a>
						
						<a href="${contextPath}/teams/lg" >
                            <div class="teams-card br-10 mb-10 mr-20">
                            	<div class="team-logo-img">
	                                <img src="https://upload.wikimedia.org/wikipedia/commons/4/41/LG_Twins_2017.png" class="team-logo" alt="구단사진1">
                            	</div>
                                <div class="teams-name">
                                    <span class="fs-14 fc__white ml-10">LG TWINS</span>
                                    <img src="${contextPath}/public/icons/right-arrow__white.png" class="mr-10">
                                </div>
                            </div>
                        </a>
                        
                        <a href="${contextPath}/teams/doosan" >
                            <div class="teams-card br-10 mb-10 mr-20">
                            	<div class="team-logo-img">
	                                <img src="https://upload.wikimedia.org/wikipedia/en/thumb/9/98/Doosan_Bears.svg/177px-Doosan_Bears.svg.png" class="team-logo" alt="구단사진1">
                            	</div>
                                <div class="teams-name">
                                    <span class="fs-14 fc__white ml-10">DOOSAN BEARS</span>
                                    <img src="${contextPath}/public/icons/right-arrow__white.png" class="mr-10">
                                </div>
                            </div>
                        </a>
                        
                        <a href="${contextPath}/teams/teamsEach" >
                            <div class="teams-card br-10">
                                <img src="${contextPath}/public/images/teams/FL.png" class="team-logo" alt="구단사진1">
                                <div class="teams-name">
                                    <span class="fs-14 fc__white ml-10">DOOSAN BEARS</span>
                                    <img src="${contextPath}/public/icons/right-arrow__white.png" class="mr-10">
                                </div>
                            </div>
                        </a>

                    </div>
                    
                    <div class="al-east-icons">
                        <a href="${contextPath}/teams/teamsEach" >
                            <div class="teams-card br-10 mb-10 mr-20">
                                <img src="${contextPath}/public/images/teams/FL.png" class="team-logo" alt="구단사진1">
                                <div class="teams-name">
                                    <span class="fs-14 fc__white ml-10">BLUE JAYS</span>
                                    <img src="${contextPath}/public/icons/right-arrow__white.png" class="mr-10">
                                </div>
                            </div>
                        </a>
						
						<a href="${contextPath}/teams/teamsEach" >
                            <div class="teams-card br-10 mr-20">
                                <img src="${contextPath}/public/images/teams/FL.png" class="team-logo" alt="구단사진1">
                                <div class="teams-name">
                                    <span class="fs-14 fc__white ml-10">BLUE JAYS</span>
                                    <img src="${contextPath}/public/icons/right-arrow__white.png" class="mr-10">
                                </div>
                            </div>
                        </a>
                        
                        <a href="${contextPath}/teams/teamsEach" >
                            <div class="teams-card br-10 mr-20">
                                <img src="${contextPath}/public/images/teams/FL.png" class="team-logo" alt="구단사진1">
                                <div class="teams-name">
                                    <span class="fs-14 fc__white ml-10">BLUE JAYS</span>
                                    <img src="${contextPath}/public/icons/right-arrow__white.png" class="mr-10">
                                </div>
                            </div>
                        </a>
                        
                        <a href="${contextPath}/teams/teamsEach" >
                            <div class="teams-card br-10 ">
                                <img src="${contextPath}/public/images/teams/FL.png" class="team-logo" alt="구단사진1">
                                <div class="teams-name">
                                    <span class="fs-14 fc__white ml-10">BLUE JAYS</span>
                                    <img src="${contextPath}/public/icons/right-arrow__white.png" class="mr-10">
                                </div>
                            </div>
                        </a>

                    </div>
                    
                    <div class="al-east-icons">
                        <a href="${contextPath}/teams/teamsEach" >
                            <div class="teams-card br-10 mb-10 mr-20">
                                <img src="${contextPath}/public/images/teams/FL.png" class="team-logo" alt="구단사진1">
                                <div class="teams-name">
                                    <span class="fs-14 fc__white ml-10">BLUE JAYS</span>
                                    <img src="${contextPath}/public/icons/right-arrow__white.png" class="mr-10">
                                </div>
                            </div>
                        </a>
						
						<a href="${contextPath}/teams/teamsEach" >
                            <div class="teams-card br-10 mr-20">
                                <img src="${contextPath}/public/images/teams/FL.png" class="team-logo" alt="구단사진1">
                                <div class="teams-name">
                                    <span class="fs-14 fc__white ml-10">BLUE JAYS</span>
                                    <img src="${contextPath}/public/icons/right-arrow__white.png" class="mr-10">
                                </div>
                            </div>
                        </a>
                    </div>
                </article>
            </section>
        </main>
    </main>
   <jsp:include page="/WEB-INF/views/layouts/footer.jsp"/>
</body>
</html>