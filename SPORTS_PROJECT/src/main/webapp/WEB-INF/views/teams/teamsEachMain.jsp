<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="${contextPath}/src/css/teamsEachMain.css">
    <script src="${contextPath}/src/js/teamsEachMain.js" defer></script>
    <title>Team Main</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header-teams.jsp"/>
    <div class="team-each-image">
        <div class="today-schedule br-10">
            <div class="today-schedule-header">
                <img src="${contextPath }/public/icons/left-arrow__white.png" >
                <span class="fc__white fs-20__b">2024-07-02</span>
                <img src="${contextPath }/public/icons/right-arrow__white.png" >
            </div>
            <div class="today-schedule-main">

            </div>
            <div class="today-schedule-footer">

            </div>
        </div>
    </div>

    <main>
        <section class="container">

        </section>
    </main>
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp"/>
</body>
</html>