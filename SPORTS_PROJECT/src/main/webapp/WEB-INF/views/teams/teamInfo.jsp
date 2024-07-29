<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link rel="stylesheet" href="${contextPath}/src/css/teamsEachHeader.css">
	<link rel="stylesheet" href="${contextPath}/src/css/teamInfo.css">
	
	<jsp:include page="/WEB-INF/views/layouts/header-teams-dependencies.jsp"/>
	<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp" />
	
	<script src="${contextPath}/src/js/teamInfo.js" defer></script>
	<title>Team Info</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header-teams.jsp"/>
	<div class="pagecover">
		<div class="pagecover-img">
		</div>
	</div>
	<main>

	</main>
	
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp"/>
</body>
</html>