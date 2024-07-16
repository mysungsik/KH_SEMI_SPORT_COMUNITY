<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp"/>
    <link rel="stylesheet" href="${contextPath}/src/css/teamAdd.css">
    <script src="${contextPath}/src/css/teams.js" defer></script>
    <script src="${contextPath}/src/js/teamAdd.js" defer></script>
    <title>MLB Teams</title>
</head>
<body>
    <jsp:include page="/WEB-INF/views/layouts/header.jsp"/>
    <div class="container">
        <form action="#">
            <h1>구단 추가</h1>
            <hr>
            <div class="step step-count-3">
                <ul>
                    <li class="on">
                        <a href="#" class="step-item"> 
                            <span class="step-circle"></span> 
                            <span class="label">기본정보</span>
                        </a>
                    </li>
                    <li class="">
                        <a href="#" class="step-item"> 
                            <span class="step-circle"></span> 
                            <span class="label">추가정보</span>
                        </a>
                    </li>
                    <li class="">
                        <a href="#" class="step-item"> 
                            <span class="step-circle"></span> 
                            <span class="label">추가완료</span>
                        </a>
                    </li>
                </ul>
                <div class="more-info">
                    <p class="title h7">기본정보</p>
                </div>
            </div>
			
            <div class="base-info">
                <hr>
                <div class="input-area">
                    <input type="text" name="teamName" placeholder="구단명">
                    <input type="text" name="teamLeader" placeholder="단장">
                    <input type="text" name="director" placeholder="감독명 ">
                    <input type="text" name="pCompany" placeholder="모기업">
                    <input type="text" name="teamRegion" placeholder="광역 연고권 | 연고지">
                    <textarea type="text" name="teamDes" placeholder="구단 설명(500자 이내)"></textarea>
                </div>
                <hr>
                <button>다음</button>
            </div>
        </form>

    </div>
    <jsp:include page="/WEB-INF/views/layouts/footer.jsp"/>
</body>
</html>