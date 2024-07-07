<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp"/>
    <link rel="stylesheet" href="${contextPath}/src/css/profile.css">
    <script src="${contextPath}/src/util/pagination.js" defer></script>
    <script src="${contextPath}/src/js/profile.js" defer></script>
    
    <title>MLB - Na</title>
</head>
<body>
    <jsp:include page="/WEB-INF/views/layouts/header.jsp"/>

    <main>
        <section class="container">
        	<!-- 사이드바 -->
            <jsp:include page="/WEB-INF/views/profile/profileSidebar.jsp"></jsp:include>
            
            <!-- 메인컨텐츠 -->
            <div class="profile-content">
            	<!-- 컨텐츠 > 헤더 -->
                <p class="content-title fs-28__b"> 내 스크랩</p>
                <hr class="hr__gray mt-20">
                <div class="content-header d-flex">
                    <div class="checkbox__blue small-square">
                        <input type="checkbox" id="check-all" name="check-all">
                        <label for="check-all" class="fs-12">전체 선택</label>
                    </div>
                    <div>
                        <img src="${contextPath}/public/icons/bin.png">
                        <span> 선택 삭제 </span>
                    </div>
                </div>
                
                <!-- 컨텐츠 > 메인 -->
                <div class="content-main">
                    <div id="scrab-data" class="content-elements"></div>
                </div>
                <div id="scrab-pagination"></div>
                <!-- 컨텐츠 메인 종료 -->
            </div>
        </section>
    </main>
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp"/>
</body>
</html>