<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="/WEB-INF/views/layouts/header-teams-dependencies.jsp"/>
	<script>
		const contextPath = "${contextPath}";
		const loginUser = "${loginUser}";
	</script>
 
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link rel="stylesheet" href="${contextPath}/src/common/common.css">
	<link rel="stylesheet" href="${contextPath}/src/css/teamsEachHeader.css">
	<link rel="stylesheet" href="${contextPath}/src/css/teamPlayers.css">

	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	<script src="${contextPath}/src/common/common.js" defer></script>
	<script src="${contextPath}/src/js/teams.js" defer></script> 
    <script src="${contextPath}/src/js/teamPlayers.js" defer></script>	
	<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	
    <title>TeamPlayers</title>
    <script src="https://kit.fontawesome.com/cb5f1fee4d.js" crossorigin="anonymous"></script>

</head>
<body>
	<input type="hidden" name="team" value="${requestScope.team}">
	<jsp:include page="/WEB-INF/views/layouts/header-teams.jsp"/>
	<!-- 페이지 커버 -->
	<div class="pagecover">
		<div class="pagecover-img">
			<div class="fc__white fs-28__b">선수 소개</div>
			
			<div class="fc__white">
				<i class="fa-solid fa-house"></i>
				 > PLAYERS > 선수 소개
			</div>
		</div>
		<!-- 소개띠 -->
			
		<!-- 소개띠 끝 -->
	</div>
	<!-- 페이지 커버 끝 -->
	<!-- 메인 시작 -->
	<main>
		<!-- 플레이어 시작 -->
		<div class="team-players">
			<div class="button-area">
				
			</div>
			<div class="team-player-table">
			</div>
		</div>
	
	</main>
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp"/>
</body>
</html>