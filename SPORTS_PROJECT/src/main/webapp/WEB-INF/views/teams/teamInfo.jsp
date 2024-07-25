<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="${contextPath}/src/css/teamInfo.css">
    <script src="${contextPath}/src/js/teamInfo.js" defer></script>
    <title>TeamsInfo</title>
    <script src="https://kit.fontawesome.com/cb5f1fee4d.js" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header-teams.jsp"/>
	<!-- 페이지 커버 -->
	<div class="pagecover">
		<div class="pagecover-img">
			<div class="fc__white fs-28__b">구단 소개</div>
			
			<div class="fc__white">
				<i class="fa-solid fa-house"></i>
				 > ${d.team_name} > 구단 소개
			</div>
			
		</div>
		<!-- 소개띠 -->
		
		<!-- 소개띠 끝 -->
	</div>
	<!-- 페이지 커버 끝 -->
	
	<!-- 메인 -->
	<main>

	</main>
	
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp"/>
</body>
</html>