<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="${contextPath}/src/css/teamPlayers.css">
    <script src="${contextPath}/src/js/teamPlayers.js" defer></script>
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
		<div class="pagecover-bottom">
			<div class="pagecover-bottom-inner d-flex fc__white">
				<ul>
					<li><a href="${contextPath}/team/${requestScope.team }/players?type=1">코칭스태프</a></li>
					|
					<li><a href="${contextPath}/team/${requestScope.team }/players?type=2">투수</a></li>
					|
					<li><a href="${contextPath}/team/${requestScope.team }/players?type=3">포수</a></li>
					|
					<li><a href="${contextPath}/team/${requestScope.team }/players?type=4">내야수</a></li>
					|
					<li><a href="${contextPath}/team/${requestScope.team }/players?type=5">외야수</a></li>
				</ul>
			</div>
		</div>
		<!-- 소개띠 끝 -->
	</div>
	<!-- 페이지 커버 끝 -->
	<!-- 메인 시작 -->
	<main>
		<!-- 플레이어 시작 -->
		<div class="team-players">
			<div class="button-area">
				<button id="add-player-btn" onclick="location.href='${contextPath}/team/${requestScope.team}/players/playersAdd' ">선수 추가</button>
				<button id="delete-player-btn">선수 삭제</button>
			</div>
			<div class="team-player-table">
			</div>
		</div>
	
	</main>
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp"/>
</body>
</html>