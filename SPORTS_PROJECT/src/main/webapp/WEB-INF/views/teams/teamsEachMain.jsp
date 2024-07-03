<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="${contextPath}/src/css/teamsEachMain.css">
<link rel="stylesheet"
	href="${contextPath}/src/css/team/${requestScope.team}.css">
<!-- Link Swiper's CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<script src="${contextPath}/src/js/teams.js" defer></script>
<title>Team Main</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header-teams.jsp" />
	<div class="main-img"></div>

	<div class="team-each-image">
		<div class="today-schedule br-10">
			<!-- Swiper -->
			<div class="swiper mySwiper">
				<div class="swiper-wrapper">

					<div class="swiper-slide">
						<p class="fs-20 fc__white mt-10">24.07.02 (화)</p>
						<p class="fc__white">광주 18:30</p>
						<div class="swiper-logo">
							<img src="${contextPath}/public/images/teams/FL.png"
								class="ml-20" alt=""> <span class="fc__white">vs</span> <img
								src="${contextPath}/public/images/teams/FL.png" class="mr-20"
								alt="">
						</div>
						<div class="swiper-team-info">
							<div class="swiper-team-name">
								<div class="swiper-left-team">
									<p class="fs-14  fc__white">BLUE JAYS</p>
									<p class="fs-12 fc__white">선발 : 김승연</p>
								</div>
								<a href="${contextPath}/src/pages/match/matchResult.jsp"><button>경기
										결과</button></a>
								<div class="swiper-right-team">
									<p class="fs-14  fc__white">BLUE JAYS</p>
									<p class="fs-12 fc__white">선발 : 김승연</p>
								</div>

							</div>
						</div>
					</div>

					<div class="swiper-slide">
						<div class="fs-20 fc__white mt-10" id="dateDisplay"></div>
						<p class="fc__white">광주 18:30</p>
						<div class="swiper-logo">
							<img src="${contextPath}/public/images/teams/FL.png"
								class="ml-20" alt=""> <span class="fc__white">vs</span> <img
								src="${contextPath}/public/images/teams/FL.png" class="mr-20"
								alt="">
						</div>
						<div class="swiper-team-info">
							<div class="swiper-team-name">
								<div class="swiper-left-team">
									<p class="fs-14  fc__white">BLUE JAYS</p>
									<p class="fs-12 fc__white">선발 : 김승연</p>
								</div>
								<a href="${contextPath}/src/pages/match/matchResult.jsp"><button>경기
										결과</button></a>
								<div class="swiper-right-team">
									<p class="fs-14  fc__white">BLUE JAYS</p>
									<p class="fs-12 fc__white">선발 : 김승연</p>
								</div>

							</div>
						</div>
					</div>

					<div class="swiper-slide">
						<p class="fs-20 fc__white mt-10">24.07.04 (목)</p>
						<p class="fc__white">광주 18:30</p>
						<div class="swiper-logo">
							<img src="${contextPath}/public/images/teams/FL.png"
								class="ml-20" alt=""> <span class="fc__white">vs</span> <img
								src="${contextPath}/public/images/teams/FL.png" class="mr-20"
								alt="">
						</div>
						<div class="swiper-team-info">
							<div class="swiper-team-name">
								<div class="swiper-left-team">
									<p class="fs-14  fc__white">BLUE JAYS</p>
									<p class="fs-12 fc__white">선발 : 김승연</p>
								</div>
								<a href="${contextPath}/src/pages/match/matchResult.jsp"><button>경기
										결과</button></a>
								<div class="swiper-right-team">
									<p class="fs-14  fc__white">BLUE JAYS</p>
									<p class="fs-12 fc__white">선발 : 김승연</p>
								</div>

							</div>
						</div>
					</div>
				</div>

				<div class="swiper-button-next fc__white"></div>
				<div class="swiper-button-prev fc__white"></div>
				<div class="swiper-pagination"></div>
			</div>
		</div>
	</div>

	<main>
		<section class="container">
			<div class="hot-issue">
				<div class="main-news">
					<p class="content-header fs-28__b">Hot Issue</p>
					<div class="main-news-content mt-10 swiper swiper-news">
						<!-- 좌중단 메인 뉴스 작성 -->
						<div class="news-content-top d-flex swiper-wrapper">
							<div class="card-thumbnail swiper-slide">
								<img class="card-thumbnail-img"
									src="${contextPath}/public/images/news_example.jpg">
								<div class="card-thumbnail-infos">
									<div class="card-thumbnail-title">
										<p>'9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ
											ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</p>
									</div>
									<div class="card-thumbnail-content">
										<p>
											♡ <span>9999</span>
										</p>
										<p>KBO 리그</p>
									</div>
								</div>
							</div>
							<div class="card-thumbnail swiper-slide">
								<img class="card-thumbnail-img"
									src="${contextPath}/public/images/news_example.jpg">
								<div class="card-thumbnail-infos">
									<div class="card-thumbnail-title">
										<p>'9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ
											ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</p>
									</div>
									<div class="card-thumbnail-content">
										<p>
											♡ <span>9999</span>
										</p>
										<p>KBO 리그</p>
									</div>
								</div>
							</div>
							<div class="card-thumbnail swiper-slide">
								<img class="card-thumbnail-img"
									src="${contextPath}/public/images/news_example.jpg">
								<div class="card-thumbnail-infos">
									<div class="card-thumbnail-title">
										<p>'9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ
											ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</p>
									</div>
									<div class="card-thumbnail-content">
										<p>
											♡ <span>9999</span>
										</p>
										<p>KBO 리그</p>
									</div>
								</div>
							</div>
							<div class="card-thumbnail swiper-slide">
								<img class="card-thumbnail-img"
									src="${contextPath}/public/images/news_example.jpg">
								<div class="card-thumbnail-infos">
									<div class="card-thumbnail-title">
										<p>'9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ
											ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</p>
									</div>
									<div class="card-thumbnail-content">
										<p>
											♡ <span>9999</span>
										</p>
										<p>KBO 리그</p>
									</div>
								</div>
							</div>
							<div class="card-thumbnail swiper-slide">
								<img class="card-thumbnail-img"
									src="${contextPath}/public/images/news_example.jpg">
								<div class="card-thumbnail-infos">
									<div class="card-thumbnail-title">
										<p>'9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ
											ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</p>
									</div>
									<div class="card-thumbnail-content">
										<p>
											♡ <span>9999</span>
										</p>
										<p>KBO 리그</p>
									</div>
								</div>
							</div>
						</div>
						<div class="swiper-button-next fc__gray"></div>
						<div class="swiper-button-prev fc__gray"></div>
						<div class="swiper-pagination"></div>
					</div>
				</div>
				
			</div>
		</section>
	</main>
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />
	<script
		src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
</body>
</html>