<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link rel="stylesheet" href="${contextPath}/src/css/teamSchedule.css">
	<title>schedule</title>
	<script src="https://kit.fontawesome.com/cb5f1fee4d.js" crossorigin="anonymous"></script>

	<!-- jQuery -->
	<script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.14/index.global.min.js'></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	 <!-- pagination.js CSS -->
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.5/pagination.css">
	 <link rel="stylesheet" href="./index.css">
	 <!-- pagination.js JavaScript -->
	 <script src="${contextPath }/src/js/teamSchedule.js" defer></script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header-teams.jsp" />
	<!-- 페이지 커버 -->
	<div class="pagecover">
		<div class="pagecover-img">
			<div class="fc__white fs-28__b">스케쥴</div>

			<div class="fc__white">
				<i class="fa-solid fa-house"></i> > Schedules > 스케쥴
			</div>

		</div>
		<!-- 소개띠 -->
		<div class="pagecover-bottom">
			<div class="pagecover-bottom-inner d-flex">
				<div class="fc__white fs-20 team-name mt-10">BLUE JAYS</div>
			</div>
		</div>
		<!-- 소개띠 끝 -->
	</div>
	<!-- 페이지 커버 끝 -->

	<!-- 팀 경기 날짜 시작 -->
	<div class="team-match-area d-flex">

		<div class="team-match br-10">
			<div class="team-match-date base__blue br-t-10">
				<p class="fs-20 fc__white">24.07.02 (화)</p>
			</div>
			<div class="team-match-info br-b-10">
				<p class="fc__gray mt-10">광주 18:30</p>
				<div class="score-area">
					<div class="left-team">
						<img src="${contextPath}/public/images/teams/FL.png" class="left-logo"alt=""> 
						<p class="fs-14">BLUE JAYS</p>
						<p class="fs-12">선발 : 김승연</p>
					</div>
					<div class="middle-info">
						<span class="fs-28__b">15 vs 13</span> 
						<a href="${contextPath}/match/matchResult"><button class="base__blue fc__white br-10">경기 결과</button></a>
					</div>
					<div class="right-team">
						<img src="${contextPath}/public/images/teams/FL.png" class="right-logo" alt="">
						<p class="fs-14">BLUE JAYS</p>
						<p class="fs-12">선발 : 김승연</p>
					</div>
				</div>
			</div>
		</div>


		<div class="team-match-today br-10">
			<div class="team-match-date base__blue br-t-10">
				<p class="fs-20 fc__white">24.07.03 (수)</p>
			</div>
			<div class="team-match-info br-b-10">
				<p class="fc__gray mt-10">광주 18:30</p>
				<div class="score-area">
					<div class="left-team">
						<img src="${contextPath}/public/images/teams/FL.png" class="left-logo"alt=""> 
						<p class="fs-14">BLUE JAYS</p>
						<p class="fs-12">선발 : 김승연</p>
					</div>
					<div class="middle-info">
						<span class="fs-28__b">0 vs 13</span> 
						<a href="${contextPath}/match/matchResult"><button class="base__blue fc__white br-10 fs-14">경기 결과</button></a>
					</div>
					<div class="right-team">
						<img src="${contextPath}/public/images/teams/FL.png" class="right-logo" alt="">
						<p class="fs-14">BLUE JAYS</p>
						<p class="fs-12">선발 : 김승연</p>
					</div>
				</div>
			</div>
		</div>

		<div class="team-match br-10">
			<div class="team-match-date base__blue br-t-10">
				<p class="fs-20 fc__white">24.07.04 (목)</p>
			</div>
			<div class="team-match-info br-b-10">
				<p class="fc__gray mt-10">광주 18:30</p>
				<div class="score-area">
					<div class="left-team">
						<img src="${contextPath}/public/images/teams/FL.png" class="left-logo"alt=""> 
						<p class="fs-14">BLUE JAYS</p>
						<p class="fs-12">선발 : 김승연</p>
					</div>
					<div class="middle-info">
						<span class="fs-28__b">0 vs 0</span> 
						<a href="${contextPath}/match/matchResult"><button class="base__blue fc__white br-10">경기 결과</button></a>
					</div>
					<div class="right-team">
						<img src="${contextPath}/public/images/teams/FL.png" class="right-logo" alt="">
						<p class="fs-14">BLUE JAYS</p>
						<p class="fs-12">선발 : 김승연</p>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- 팀 경기 날짜 끝 -->

	<!-- 달력 api -->
    <div id='calendar-container'>
  		<div id='calendar'></div>
	</div>

</body>
<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />
</body>
</html>