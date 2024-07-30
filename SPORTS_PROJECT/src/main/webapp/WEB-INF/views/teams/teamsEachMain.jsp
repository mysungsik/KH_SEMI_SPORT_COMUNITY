<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="${contextPath}/src/css/teamsEachMain.css">
	<link rel="stylesheet" href="${contextPath}/src/css/teamsEachHeader.css">
	<jsp:include page="/WEB-INF/views/layouts/header-teams-dependencies.jsp"/>
	<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp" />
	<%-- <script src="${contextPath}/src/js/header-teams.js" defer></script> --%>
	<script src="${contextPath}/src/js/teamEach.js" defer></script>
	
	<title>Team Main</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header-teams.jsp"/>
	<!-- 날짜 슬라이드 시작 -->
	<div class="team-each-image">
		<div class="main-header">
			<div class="like-button">
				<i class="fa-solid fa-heart" id="heart"></i> <span>좋아요</span>
			</div>
			<div class="today-schedule-area">
				<div class="today-schedule br-10">
					<!-- Swiper -->
					<div class="swiper mySwiper">
						<div class="swiper-wrapper today-schedule-swiper">
						</div>
						<div class="swiper-pagination"></div>
					</div>
					<div class="btn-area">
						<div class="swiper-button-next fc__white"></div>
						<div class="swiper-button-prev fc__white"></div>
					</div>
				</div>
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
								<a href="${contextPath }/news/detail/1">
									<img class="card-thumbnail-img" src="${contextPath }/public/images/profile/202407207110760_63885.jpg"/>
									<div class="card-thumbnail-infos">
										<div class="card-thumbnail-title">
											<p>한화 이글스 기아에게 충격 패배</p>
										</div>
										<div class="card-thumbnail-content">
											<p>
												♡ <span>5</span>
											</p>
											<p>KBO 리그</p>
										</div>
									</div>
								</a>
							</div>
							<div class="card-thumbnail swiper-slide">
								<a href="${contextPath }/news/detail/2">
									<img class="card-thumbnail-img" src="${contextPath }/public/images/profile/house.jpeg"/>
									<div class="card-thumbnail-infos">
										<div class="card-thumbnail-title">
											<p>빰 빠라밤밤밤밤 축33333하 !</p>
										</div>
										<div class="card-thumbnail-content">
											<p>
												♡ <span>3</span>
											</p>
											<p>KBO 리그</p>
										</div>
									</div>
								</a>
							</div>
							<div class="card-thumbnail swiper-slide">
								<a href="${contextPath }/news/detail/3">
									<img class="card-thumbnail-img" src="${contextPath }/public/images/profile/202407205000776_12975.jpg"/>
									<div class="card-thumbnail-infos">
										<div class="card-thumbnail-title">
											<p>빰 빠라밤밤밤밤 축2222하 !</p>
										</div>
										<div class="card-thumbnail-content">
											<p>
												♡ <span>3</span>
											</p>
											<p>KBO 리그</p>
										</div>
									</div>
								</a>
							</div>
							<div class="card-thumbnail swiper-slide">
								<a href="${contextPath }/news/detail/4">
									<img class="card-thumbnail-img" src="${contextPath }/public/images/profile/9d43577286a94ca918d47c8e7df4bdc5.jpg"/>
									<div class="card-thumbnail-infos">
										<div class="card-thumbnail-title">
											<p> 롯데 타이거즈 기아에게 충격 패배</p>
										</div>
										<div class="card-thumbnail-content">
											<p>
												♡ <span>2</span>
											</p>
											<p>KBO 리그</p>
										</div>
									</div>
								</a>
							</div>
							<div class="card-thumbnail swiper-slide">
								<a href="${contextPath }/news/detail/5">
									<img class="card-thumbnail-img" src="${contextPath }/public/images/profile/user_img1.jpg"/>
									<div class="card-thumbnail-infos">
										<div class="card-thumbnail-title">
											<p> 빰 빠라밤밤밤밤 축하 !</p>
										</div>
										<div class="card-thumbnail-content">
											<p>
												♡ <span>2</span>
											</p>
											<p>KBO 리그</p>
										</div>
									</div>
								</a>
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
					<a class="swiper-slide fs-12"
						href="${contextPath}/community/communityDetail/1"><span>안녕히
							계세요 여러분~ 저는 행복과 자유를 찾아 떠납니다~~~ 모두 행복하세요~~~~~</span></a> <a
						class="swiper-slide fs-12"
						href="${contextPath}/community/communityDetail/2"><span>서버
							접습니다.</span></a> <a class="swiper-slide fs-12"
						href="${contextPath}/community/communityDetail/3"><span>집에
							가고 싶습니다.</span></a> <a class="swiper-slide fs-12"
						href="${contextPath}/community/communityDetail/4"><span>포켓몬고
							시작하세요. 동준님. 선물 하루에 하나씩 줄게~~~~~~~~~~~~~~~~~~ 어때!!!!!!!!!!!</span></a>
				</div>
			</article>
			<article class="suppl">
				<a href="${contextPath}/community/communityBoard/info"><span
					class="see-more fs-12 fc__gray">더보기▶</span></a>
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
					<a href="${contextPath }/community/communityBoard/cheer"><span class="see-more fs-10 fc__gray">더보기▶</span></a>
				</div>
				<hr>
				<div class="post">
					<a href="${contextPath }/community/communityDetail/291">
						<div class="post-title">
							<span class="fs-12 fc__gray">[ 다저스 ]</span> <span class="fs-14__b">게시글입니다
								test 1234</span>
						</div>
						<div class="post-info">
							<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
								30 | 댓글 2 | 좋아요 3 ♡</span>
						</div>
					</a>
				</div>
				<div class="post">
					<a href="${contextPath }/community/communityDetail/291">
						<div class="post-title">
							<span class="fs-12 fc__gray">[ 다저스 ]</span> <span class="fs-14__b">게시글입니다
								test 1234</span>
						</div>
						<div class="post-info">
							<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
								30 | 댓글 2 | 좋아요 3 ♡</span>
						</div>
					</a>
				</div>
				<div class="post">
					<a href="${contextPath }/community/communityDetail/291">
						<div class="post-title">
							<span class="fs-12 fc__gray">[ 다저스 ]</span> <span class="fs-14__b">게시글입니다
								test 1234</span>
						</div>
						<div class="post-info">
							<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
								30 | 댓글 2 | 좋아요 3 ♡</span>
						</div>
					</a>
				</div>
				<div class="post">
					<a href="${contextPath }/community/communityDetail/291">
						<div class="post-title">
							<span class="fs-12 fc__gray">[ 다저스 ]</span> <span class="fs-14__b">게시글입니다
								test 1234</span>
						</div>
						<div class="post-info">
							<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
								30 | 댓글 2 | 좋아요 3 ♡</span>
						</div>
					</a>
				</div>
				<div class="post">
					<a href="${contextPath }/community/communityDetail/291">
						<div class="post-title">
							<span class="fs-12 fc__gray">[ 다저스 ]</span> <span class="fs-14__b">게시글입니다
								test 1234</span>
						</div>
						<div class="post-info">
							<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
								30 | 댓글 2 | 좋아요 3 ♡</span>
						</div>
					</a>
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