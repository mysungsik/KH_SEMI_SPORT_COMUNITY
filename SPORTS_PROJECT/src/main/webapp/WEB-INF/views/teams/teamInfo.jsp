<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="${contextPath}/src/css/teamsInfo.css">
	<link rel="stylesheet" href="${contextPath}/src/css/teamsEachHeader.css">
	<jsp:include page="/WEB-INF/views/layouts/header-teams-dependencies.jsp"/>
	<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp" />
	<script src="${contextPath}/src/js/teamInfo.js" defer></script>
	<title>Team Info</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header-teams.jsp"/>
	<!-- 페이지 커버 -->
	<div class="pagecover">
		<div class="pagecover-img">
			
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