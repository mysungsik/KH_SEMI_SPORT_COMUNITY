<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<link rel="stylesheet" href="${contextPath}/src/css/matchTeamRanking.css">
<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp" />
<script src="${contextPath}/src/js/matchTeamRanking.js" defer></script>
<title>TeamRanking</title>
</head>

<body>
	<jsp:include page="/WEB-INF/views/layouts/header.jsp" />
	<main>
		<div class="recordTab">
			<div>
				<span>KBO 팀 순위 상세</span>
			</div>
		</div>
		<div class="game-records card__lblue">
			<div class="teamRankingTop fs-20 base__mblue">팀 순위</div>
			<table class="teamRanking">
				<thead>
					<tr class="rankingTop">
						<th class="regionName fs-14__b">순위</th>
						<th class="teamName fs-14__b">팀  이름</th>
						<th class="matchCount fs-14__b">경기 수</th>
						<th class="matchWin fs-14__b">승</th>
						<th class="matchLose fs-14__b">패</th>
						<th class="winRate fs-14__b" width="50px">승률</th>
						<th class="consequence fs-14__b" >연 속</th>
						<th class="battingAverage fs-14__b">타 율</th>
						<th class="ERA fs-14__b">평균 자책</th>
						<th class="recentMatch fs-14__b">최근 10 경기</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
		</div>
	</main>
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />
</body>

</html>
