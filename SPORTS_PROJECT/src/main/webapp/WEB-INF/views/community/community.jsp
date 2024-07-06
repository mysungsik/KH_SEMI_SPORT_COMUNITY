<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="${contextPath}/src/css/community.css">
<script src="${contextPath}/src/js/community.js" defer></script>
<script src="${contextPath}/src/util/pagination.js" defer></script>
<script src="https://kit.fontawesome.com/e245e5bbb1.js"
	crossorigin="anonymous"></script>

<title>COMMUNITY</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header.jsp" />
	<!-- Write Main Content -->
	<main class="container">

		<!-- main-top -->
		<section class="swiper mySwiper main-top">
			<article class="title mg-left">
				<div class="title-area">
					<span class="fs-28__b">주간 인기글</span> 
					<span class="see-more fs-10 fc__gray">
						<a href="${contextPath}/community/communityBoard/popular">더보기▶</a>
					</span>
				</div>
				<div class="search-area">
					<form action="#" class="search">
						<input type="text">
						<button class="fa-solid fa-magnifying-glass"></button>
					</form>
					<button type="button" class="write-btn mg-right">글쓰기</button>
				</div>
			</article>
			<article class="swiper-wrapper">
				<div class="popular base__lblue swiper-slide d-flex">
					<div class="popular-area">
						<div class="popular-post" onclick="location.href='${contextPath}/community/communityDetail/1'">
							<div class="post-title">
								<span class="fs-12 fc__gray">[ 응원 게시판 ]</span> <span
									class="fs-14__b">파이팅 다저스</span>
							</div>
							<div class="post-content">
								<span class="fs-12 fc__gray">
								 경기력이 정말 화가 납니다..사회 생활을 하며 사람을 화나게 하는 방법은 여러가지가 있습니다. 그 중 첫 번째는 말을 하다 마는 것입니다. 이어서 두 번째는 바로.. 
								 </span>
							</div>
							<div class="post-info">
								<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
									30 | 댓글 3 | 좋아요 3 ♡</span>
							</div>
						</div>
					</div>
					<div class="popular-area">
						<div class="popular-post">
							<div class="post-title">
								<span class="fs-12 fc__gray">[ 자유 게시판 ]</span> <span
									class="fs-14__b">한국이 야구 못하는 이유</span>
							</div>
							<div class="post-content">
								<span class="fs-12 fc__gray"> 사회 생활을 하며 사람을 화나게 하는 방법은
									여러가지가 있습니다. 그 중 첫 번째는 말을 하다 마는 것입니다... 이어서 두 번째는 바로.. </span>
							</div>
							<div class="post-info">
								<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
									30 | 댓글 3 | 좋아요 3 ♡</span>
							</div>
						</div>
					</div>
				</div>
				<div class="popular base__lblue swiper-slide d-flex">
					<div class="popular-area">
						<div class="popular-post">

							<div class="post-title">
								<span class="fs-12 fc__gray">[ 응원 게시판 ]</span> <span
									class="fs-14__b">파이팅 다저스</span>
							</div>
							<div class="post-content">
								<span class="fs-12 fc__gray"> 사회 생활을 하며 사람을 화나게 하는 방법은
									여러가지가 있습니다. 그 중 첫 번째는 말을 하다 마는 것입니다... 이어서 두 번째는 바로.. </span>
							</div>
							<div class="post-info">
								<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
									30 | 댓글 3 | 좋아요 3 ♡</span>
							</div>
						</div>
					</div>
					<div class="popular-area">
						<div class="popular-post">
							<div class="post-title">
								<span class="fs-12 fc__gray">[ 자유 게시판 ]</span> <span
									class="fs-14__b">한국이 야구 못하는 이유</span>
							</div>
							<div class="post-content">
								<span class="fs-12 fc__gray"> 사회 생활을 하며 사람을 화나게 하는 방법은
									여러가지가 있습니다. 그 중 첫 번째는 말을 하다 마는 것입니다... 이어서 두 번째는 바로.. </span>
							</div>
							<div class="post-info">
								<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
									30 | 댓글 3 | 좋아요 3 ♡</span>
							</div>
						</div>
					</div>
				</div>
				<div class="popular base__lblue swiper-slide d-flex">
					<div class="popular-area">
						<div class="popular-post">
							<div class="post-title">
								<span class="fs-12 fc__gray">[ 응원 게시판 ]</span> <span
									class="fs-14__b">파이팅 다저스</span>
							</div>
							<div class="post-content">
								<span class="fs-12 fc__gray"> 사회 생활을 하며 사람을 화나게 하는 방법은
									여러가지가 있습니다. 그 중 첫 번째는 말을 하다 마는 것입니다... 이어서 두 번째는 바로.. </span>
							</div>
							<div class="post-info">
								<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
									30 | 댓글 3 | 좋아요 3 ♡</span>
							</div>
						</div>
					</div>
					<div class="popular-area">
						<div class="popular-post">
							<div class="post-title">
								<span class="fs-12 fc__gray">[ 자유 게시판 ]</span> <span
									class="fs-14__b">한국이 야구 못하는 이유</span>
							</div>
							<div class="post-content">
								<span class="fs-12 fc__gray"> 사회 생활을 하며 사람을 화나게 하는 방법은
									여러가지가 있습니다. 그 중 첫 번째는 말을 하다 마는 것입니다... 이어서 두 번째는 바로.. </span>
							</div>
							<div class="post-info">
								<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
									30 | 댓글 3 | 좋아요 3 ♡</span>
							</div>
						</div>
					</div>
				</div>
				<div class="popular base__lblue swiper-slide d-flex">
					<div class="popular-area">
						<div class="popular-post">
							<div class="post-title">
								<span class="fs-12 fc__gray">[ 응원 게시판 ]</span> <span
									class="fs-14__b">파이팅 다저스</span>
							</div>
							<div class="post-content">
								<span class="fs-12 fc__gray"> 사회 생활을 하며 사람을 화나게 하는 방법은
									여러가지가 있습니다. 그 중 첫 번째는 말을 하다 마는 것입니다... 이어서 두 번째는 바로.. </span>
							</div>
							<div class="post-info">
								<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
									30 | 댓글 3 | 좋아요 3 ♡</span>
							</div>
						</div>
					</div>
					<div class="popular-area">
						<div class="popular-post">
							<div class="post-title">
								<span class="fs-12 fc__gray">[ 자유 게시판 ]</span> <span
									class="fs-14__b">한국이 야구 못하는 이유</span>
							</div>
							<div class="post-content">
								<span class="fs-12 fc__gray"> 사회 생활을 하며 사람을 화나게 하는 방법은
									여러가지가 있습니다. 그 중 첫 번째는 말을 하다 마는 것입니다... 이어서 두 번째는 바로.. </span>
							</div>
							<div class="post-info">
								<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
									30 | 댓글 3 | 좋아요 3 ♡</span>
							</div>
						</div>
					</div>
				</div>
				<div class="popular base__lblue swiper-slide d-flex">
					<div class="popular-area">
						<div class="popular-post">

							<div class="post-title">
								<span class="fs-12 fc__gray">[ 응원 게시판 ]</span> <span
									class="fs-14__b">파이팅 다저스</span>
							</div>
							<div class="post-content">
								<span class="fs-12 fc__gray"> 사회 생활을 하며 사람을 화나게 하는 방법은
									여러가지가 있습니다. 그 중 첫 번째는 말을 하다 마는 것입니다... 이어서 두 번째는 바로.. </span>
							</div>
							<div class="post-info">
								<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
									30 | 댓글 3 | 좋아요 3 ♡</span>
							</div>
						</div>
					</div>
					<div class="popular-area">
						<div class="popular-post">

							<div class="post-title">
								<span class="fs-12 fc__gray">[ 자유 게시판 ]</span> <span
									class="fs-14__b">한국이 야구 못하는 이유</span>
							</div>
							<div class="post-content">
								<span class="fs-12 fc__gray"> 사회 생활을 하며 사람을 화나게 하는 방법은
									여러가지가 있습니다. 그 중 첫 번째는 말을 하다 마는 것입니다... 이어서 두 번째는 바로.. </span>
							</div>
							<div class="post-info">
								<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
									30 | 댓글 3 | 좋아요 3 ♡</span>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>

		<!-- 전체 -->
		<section class="main-mid">
			<article class="board mg-left">
				<div class="title">
					<span class="fs-28__b">전체</span> <span
						class="see-more fs-10 fc__gray"><a
						href="${contextPath}/community/communityBoard/all">더보기▶</a></span>
				</div>
				<div class="post">
					<div class="post-title">
						<span class="fs-14__b">게시글입니다 test 1234</span>
					</div>
					<div class="post-info">
						<span class="fs-10">작성자 2024-07-04</span> <span class="fs-10">조회수
							30 | 댓글 2 | 좋아요 3 ♡</span>
					</div>
				</div>
				<div class="post">
					<div class="post-title">
						<span class="fs-14__b">게시글입니다 test 1234</span>
					</div>
					<div class="post-info">
						<span class="fs-10">작성자 2024-07-04</span> <span class="fs-10">조회수
							30 | 댓글 2 | 좋아요 3 ♡</span>
					</div>
				</div>
				<div class="post">
					<div class="post-title">
						<span class="fs-14__b">게시글입니다 test 1234</span>
					</div>
					<div class="post-info">
						<span class="fs-10">작성자 2024-07-04</span> <span class="fs-10">조회수
							30 | 댓글 2 | 좋아요 3 ♡</span>
					</div>
				</div>
				<div class="post">
					<div class="post-title">
						<span class="fs-14__b">게시글입니다 test 1234</span>
					</div>
					<div class="post-info">
						<span class="fs-10">작성자 2024-07-04</span> <span class="fs-10">조회수
							30 | 댓글 2 | 좋아요 3 ♡</span>
					</div>
				</div>
				<div class="post">
					<div class="post-title">
						<span class="fs-14__b">게시글입니다 test 1234</span>
					</div>
					<div class="post-info">
						<span class="fs-10">작성자 2024-07-04</span> <span class="fs-10">조회수
							30 | 댓글 2 | 좋아요 3 ♡</span>
					</div>
				</div>
			</article>


			<!-- best -->
			<article class="best card__lblue br-15 mg-right">
				<div class="best-title">
					<span class="fs-14__b fc__blue">베스트 댓글</span>
				</div>
				<div class="best-post">
					<div class="rank">
						<span class="fs-14__b fc__blue">1</span>
					</div>
					<div class="best-img">
						<img src="${contextPath}/public/images/user_img1.jpg">
					</div>
					<div class="best-content-area">
						<div class="best-info">
							<span class="fs-10 fc__gray">[ 자유 ]</span> <span
								class="fs-10 fc__gray">한국이 야구 못하는 이유</span>
						</div>
						<div class="best-content">
							<span class="fs-10">작성자</span> 
							<span class="fs-10__b">댓글입니다 베스트 댓글 노리는 중입니다동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세</span>
						</div>
					</div>
					<div class="best-like">
						<span class="fs-10__b">좋아요 50 ♥</span>
					</div>
				</div>
				<div class="best-post">
					<div class="rank">
						<span class="fs-14__b fc__blue">2</span>
					</div>
					<div class="best-img">
						<img src="${contextPath}/public/images/user_img1.jpg">
					</div>
					<div class="best-content-area">
						<div class="best-info">
							<span class="fs-10 fc__gray">[ 자유 ]</span> <span
								class="fs-10 fc__gray">한국이 야구 못하는 이유</span>
						</div>
						<div class="best-content">
							<span class="fs-10__b">작성자</span> 
							<span class="fs-10__b">댓글입니다 베스트 댓글 노리는 중입니다동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세</span>
						</div>
					</div>
					<div class="best-like">
						<span class="fs-10__b">좋아요 50 ♥</span>
					</div>
				</div>
				<div class="best-post">
					<div class="rank">
						<span class="fs-14__b fc__blue">3</span>
					</div>
					<div class="best-img">
						<img src="${contextPath}/public/images/user_img1.jpg">
					</div>
					<div class="best-content-area">
						<div class="best-info">
							<span class="fs-10 fc__gray">[ 자유 ]</span> <span
								class="fs-10 fc__gray">한국이 야구 못하는 이유</span>
						</div>
						<div class="best-content">
							<span class="fs-10">작성자</span> 
							<span class="fs-10__b">댓글입니다 베스트 댓글 노리는 중입니다동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세</span>
						</div>
					</div>
					<div class="best-like">
						<span class="fs-10__b">좋아요 50 ♥</span>
					</div>
				</div>
				<div class="best-post">
					<div class="rank">
						<span class="fs-14__b fc__blue">4</span>
					</div>
					<div class="best-img">
						<img src="${contextPath}/public/images/user_img1.jpg">
					</div>
					<div class="best-content-area">
						<div class="best-info">
							<span class="fs-10 fc__gray">[ 자유 ]</span> <span
								class="fs-10 fc__gray">한국이 야구 못하는 이유</span>
						</div>
						<div class="best-content">
							<span class="fs-10">작성자</span>
							<span class="fs-10__b">댓글입니다 베스트 댓글 노리는 중입니다동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세</span>
						</div>
					</div>
					<div class="best-like">
						<span class="fs-10__b">좋아요 50 ♥</span>
					</div>
				</div>
				<div class="best-post">
					<div class="rank">
						<span class="fs-14__b fc__blue">5</span>
					</div>
					<div class="best-img">
						<img src="${contextPath}/public/images/user_img1.jpg">
					</div>
					<div class="best-content-area">
						<div class="best-info">
							<span class="fs-10 fc__gray">[ 자유 ]</span> <span
								class="fs-10 fc__gray">한국이 야구 못하는 이유</span>
						</div>
						<div class="best-content">
							<span class="fs-10">작성자</span> 
							<span class="fs-10__b">댓글입니다 베스트 댓글 노리는 중입니다동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세</span>
						</div>
					</div>
					<div class="best-like">
						<span class="fs-10__b">좋아요 50 ♥</span>
					</div>
				</div>
			</article>
		</section>

		<!-- 공지사항 시작 -->
		<section class="info base__lblue mt-30">
			<div class="info-one">
				<article class="info-title">
					<span class="fs-14__b">공지사항</span>
				</article>
				<article class="info-content swiper-info">
					<div class="swiper-wrapper">
						<a class="swiper-slide fs-12" href="#">
							<span>안녕히 계세요 여러분~ 저는 행복과 자유를 찾아 떠납니다~~~ 모두 행복하세요~~~~~</span>
						</a> 
						<a class="swiper-slide fs-12" href="#" href="#">
							<span>서버 접습니다.</span>
						</a> 
						<a class="swiper-slide fs-12" href="#">
							<span>집에 가고 싶습니다.</span>
						</a> 
						<a class="swiper-slide fs-12" href="#">
							<span>포켓몬고 시작하세요. 동준님. 선물 하루에 하나씩 줄게~~~~~~~~~~~~~~~~~~ 어때!!!!!!!!!!!</span>
						</a>
					</div>
				</article>
				<article class="suppl">
					<a href="${contextPath}/community/communityBoard/info"><span class="see-more fs-12 fc__gray">더보기▶</span></a>
				</article>
			</div>
		</section>

		<!-- main-bot -->
		<section class="main-bot">
			<!-- 자유 게시판 -->
			<article class="board mg-left">
				<div class="title">
					<span class="fs-28__b">자유 게시판</span> <span
						class="see-more fs-10 fc__gray"><a
						href="${contextPath}/community/communityBoard/free">더보기▶</a></span>
				</div>
				<div class="post">
					<div class="post-title">
						<span class="fs-14__b">게시글입니다 test 1234</span>
					</div>
					<div class="post-info">
						<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
							30 | 댓글 2 | 좋아요 3 ♡</span>
					</div>
				</div>
				<div class="post">
					<div class="post-title">
						<span class="fs-14__b">게시글입니다 test 1234</span>
					</div>
					<div class="post-info">
						<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
							30 | 댓글 2 | 좋아요 3 ♡</span>
					</div>
				</div>
				<div class="post">
					<div class="post-title">
						<span class="fs-14__b">게시글입니다 test 1234</span>
					</div>
					<div class="post-info">
						<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
							30 | 댓글 2 | 좋아요 3 ♡</span>
					</div>
				</div>
				<div class="post">
					<div class="post-title">
						<span class="fs-14__b">게시글입니다 test 1234</span>
					</div>
					<div class="post-info">
						<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
							30 | 댓글 2 | 좋아요 3 ♡</span>
					</div>
				</div>
				<div class="post">
					<div class="post-title">
						<span class="fs-14__b">게시글입니다 test 1234</span>
					</div>
					<div class="post-info">
						<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
							30 | 댓글 2 | 좋아요 3 ♡</span>
					</div>
				</div>
			</article>

			<!-- 응원 게시판 -->
			<article class="board mg-right">
				<div class="title">
					<span class="fs-28__b">응원 게시판</span> <span
						class="see-more fs-10 fc__gray"><a
						href="${contextPath}/community/communityBoard/cheer">더보기▶</a></span>
				</div>

				<div class="post">
					<div class="post-title">
						<span class="fs-12 fc__gray">[ 다저스 ]</span> <span class="fs-14__b">게시글입니다
							test 1234</span>
					</div>
					<div class="post-info">
						<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
							30 | 댓글 2 | 좋아요 3 ♡</span>
					</div>
				</div>
				<div class="post">
					<div class="post-title">
						<span class="fs-12 fc__gray">[ 해머스 ]</span> <span class="fs-14__b">게시글입니다
							test 1234</span>
					</div>
					<div class="post-info">
						<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
							30 | 댓글 2 | 좋아요 3 ♡</span>
					</div>
				</div>
				<div class="post">
					<div class="post-title">
						<span class="fs-12 fc__gray">[ 다저스 ]</span> <span class="fs-14__b">게시글입니다
							test 1234</span>
					</div>
					<div class="post-info">
						<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
							30 | 댓글 2 | 좋아요 3 ♡</span>
					</div>
				</div>
				<div class="post">
					<div class="post-title">
						<span class="fs-12 fc__gray">[ 해머스 ]</span> <span class="fs-14__b">게시글입니다
							test 1234</span>
					</div>
					<div class="post-info">
						<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
							30 | 댓글 2 | 좋아요 3 ♡</span>
					</div>
				</div>
				<div class="post">
					<div class="post-title">
						<span class="fs-12 fc__gray">[ 다저스 ]</span> <span class="fs-14__b">게시글입니다
							test 1234</span>
					</div>
					<div class="post-info">
						<span class="fs-10">작성자 2024-06-23</span> <span class="fs-10">조회수
							30 | 댓글 2 | 좋아요 3 ♡</span>
					</div>
				</div>
			</article>
		</section>

	</main>
	<!-- Be sure to include this TAG -->
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />


</body>
</html>