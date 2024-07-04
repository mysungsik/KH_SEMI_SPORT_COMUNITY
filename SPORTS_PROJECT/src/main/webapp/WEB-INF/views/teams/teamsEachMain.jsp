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
	<!-- 날짜 슬라이드 시작 -->
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
	<!-- 날짜 슬라이드 끝 -->
	<main>
		<section class="container">
			<!-- 뉴스 슬라이드 시작 -->
			<div class="hot-issue">
				<div class="main-news">
					<p class="content-header fs-28__b">Hot Issue</p>
					<div class="main-news-content mt-10 swiper swiper-news">
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
						<div class="swiper-pagination"></div>
					</div>
					<div class="swiper-button-next fc__gray mr-20"></div>
					<div class="swiper-button-prev fc__gray ml-20"></div>
				</div>
			</div>
			<!-- 뉴스 슬라이드 끝 -->
		</section>
	</main>
	<!-- 공지사항 시작 -->
    <section class="info base__lblue mt-20">
    	<div class="info-one">
	        <article class="info-title">
	            <span class="fs-14__b">공지사항</span>
	        </article>
	        <article class="info-content swiper-info">
	        	<div class="swiper-wrapper">
	            	<a class="swiper-slide fs-12" href="#"><span>안녕히 계세요 여러분~ 저는 행복과 자유를 찾아 떠납니다~~~ 모두 행복하세요~~~~~</span></a>
	            	<a class="swiper-slide fs-12"  href="#" href="#"><span>서버 접습니다.</span></a>
	            	<a class="swiper-slide fs-12"  href="#"><span>집에 가고 싶습니다.</span></a>
	            	<a class="swiper-slide fs-12"  href="#"><span>포켓몬고 시작하세요. 동준님. 선물 하루에 하나씩 줄게~~~~~~~~~~~~~~~~~~ 어때!!!!!!!!!!!</span></a>
	        	</div>
	        </article>
	        <article class="suppl">
	        	<a href="#"><span class="see-more fs-12 fc__gray">더보기▶</span></a>
	        </article>
    	</div>
    </section>
    <!-- 공지사항 끝 -->
    
    <!-- 응원 게시판 시작 -->
	 <main>

		 <section class="container">
			 <article class="board mg-right">
				 <div class="title">
					 <span class="fs-28__b">응원 게시판</span>
					 <span class="see-more fs-10 fc__gray"><a>더보기▶</a></span>
				 </div>
				 <hr>
				 <div class="post">
					 <div class="post-title">
						 <span class="fs-12 fc__gray">[ 다저스 ]</span>
						 <span class="fs-14__b">게시글입니다 test 1234</span>
					 </div>
					 <div class="post-info">
						 <span class="fs-10">작성자 2024-06-23</span>
						 <span class="fs-10">조회수 30 | 댓글 2 | 좋아요 3 ♡</span>
					 </div>
				 </div>
				 <div class="post">
					 <div class="post-title">
						 <span class="fs-12 fc__gray">[ 해머스 ]</span>
						 <span class="fs-14__b">게시글입니다 test 1234</span>
					 </div>
					 <div class="post-info">
						 <span class="fs-10">작성자 2024-06-23</span>
						 <span class="fs-10">조회수 30 | 댓글 2 | 좋아요 3 ♡</span>
					 </div>
				 </div>
				 <div class="post">
					 <div class="post-title">
						 <span class="fs-12 fc__gray">[ 다저스 ]</span>
						 <span class="fs-14__b">게시글입니다 test 1234</span>
					 </div>
					 <div class="post-info">
						 <span class="fs-10">작성자 2024-06-23</span>
						 <span class="fs-10">조회수 30 | 댓글 2 | 좋아요 3 ♡</span>
					 </div>
				 </div>
				 <div class="post">
					 <div class="post-title">
						 <span class="fs-12 fc__gray">[ 해머스 ]</span>
						 <span class="fs-14__b">게시글입니다 test 1234</span>
					 </div>
					 <div class="post-info">
						 <span class="fs-10">작성자 2024-06-23</span>
						 <span class="fs-10">조회수 30 | 댓글 2 | 좋아요 3 ♡</span>
					 </div>
				 </div>
				 <div class="post">
					 <div class="post-title">
						 <span class="fs-12 fc__gray">[ 다저스 ]</span>
						 <span class="fs-14__b">게시글입니다 test 1234</span>
					 </div>
					 <div class="post-info">
						 <span class="fs-10">작성자 2024-06-23</span>
						 <span class="fs-10">조회수 30 | 댓글 2 | 좋아요 3 ♡</span>
					 </div>
				 </div>
			 </article>
			 
		 </section>
		 <!-- 응원게시판 끝 -->
		 
	 </main>
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />
	<script
		src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
</body>
</html>