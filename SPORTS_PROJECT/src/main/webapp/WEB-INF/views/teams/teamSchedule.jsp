<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="${contextPath}/src/css/player.css">

<script src="${contextPath}/src/util/pagination.js" defer></script>
<script src="${contextPath}/src/js/communityDetail.js" defer></script>
<script src="${contextPath}/src/css/teams.js" defer></script>

<title>schedule</title>
<script src="https://kit.fontawesome.com/cb5f1fee4d.js"
	crossorigin="anonymous"></script>
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
<body>
	<!-- 날짜 슬라이드 시작 -->
	<div class="team-each-image">
		<div class="today-schedule br-10">
		
			<div class="team-match">
				<p class="fs-20 fc__white mt-10">24.07.02 (화)</p>
				<p class="fc__white">광주 18:30</p>
				<div class="swiper-logo">
					<img src="${contextPath}/public/images/teams/FL.png" class="ml-20"
						alt=""> <span class="fc__white">vs</span> <img
						src="${contextPath}/public/images/teams/FL.png" class="mr-20"
						alt="">
				</div>
				
				<div class="swiper-team-info">
					<div class="swiper-team-name">
						<div class="swiper-left-team">
							<p class="fs-14  fc__white">BLUE JAYS</p>
							<p class="fs-12 fc__white">선발 : 김승연</p>
						</div>
						<div class="swiper-right-team">
							<p class="fs-14  fc__white">BLUE JAYS</p>
							<p class="fs-12 fc__white">선발 : 김승연</p>
						</div>

					</div>
				</div>
			</div>

	
			<div class="team-match">
				<div class="fs-20 fc__white mt-10" id="dateDisplay"></div>
				<p class="fc__white">광주 18:30</p>
				<div class="swiper-logo">
					<img src="${contextPath}/public/images/teams/FL.png" class="ml-20"
						alt=""> <span class="fc__white">vs</span> <img
						src="${contextPath}/public/images/teams/FL.png" class="mr-20"
						alt="">
				</div>
				<div class="swiper-team-info">
					<div class="swiper-team-name">
						<div class="swiper-left-team">
							<p class="fs-14  fc__white">BLUE JAYS</p>
							<p class="fs-12 fc__white">선발 : 김승연</p>
						</div>
						<div class="swiper-right-team">
							<p class="fs-14  fc__white">BLUE JAYS</p>
							<p class="fs-12 fc__white">선발 : 김승연</p>
						</div>

					</div>
				</div>
			</div>

			<div class="team-match">
				<p class="fs-20 fc__white mt-10">24.07.04 (목)</p>
				<p class="fc__white">광주 18:30</p>
				<div class="swiper-logo">
					<img src="${contextPath}/public/images/teams/FL.png" class="ml-20"
						alt=""> <span class="fc__white">vs</span> <img
						src="${contextPath}/public/images/teams/FL.png" class="mr-20"
						alt="">
				</div>
				<div class="swiper-team-info">
					<div class="swiper-team-name">
						<div class="swiper-left-team">
							<p class="fs-14  fc__white">BLUE JAYS</p>
							<p class="fs-12 fc__white">선발 : 김승연</p>
						</div>
						<div class="swiper-right-team">
							<p class="fs-14  fc__white">BLUE JAYS</p>
							<p class="fs-12 fc__white">선발 : 김승연</p>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 날짜 슬라이드 끝 -->

</body>
<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />
</body>
</html>