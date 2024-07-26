<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp"/>
<link rel="stylesheet" href="${contextPath}/src/css/community.css">
<script src="${contextPath}/src/js/community.js" defer></script>
<script src="${contextPath}/src/util/pagination.js" defer></script>
<script src="https://kit.fontawesome.com/e245e5bbb1.js"
	crossorigin="anonymous"></script>

<title>COMMUNITY</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header.jsp"/>
	
${sub}
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
						<select name="search-type" style="border: none; outline: none;" class="br-5">
					    	<option value="USER_NAME" name="author">작성자</option>
					    	<option value="COMM_TITLE" name="title">제목</option>
					    	<option value="COMM_CONTENT" name="content">내용</option>
						</select>
						<input type="text" name="search-input">
						<button type="button" class="fa-solid fa-magnifying-glass" onclick="searchBoard()"></button>
					</form>
					<button type="button" class="write-btn mg-right" onclick="location.href='${contextPath}/community/communityPosting/write'">글쓰기</button>
				</div>
			</article>
			<article class="swiper-wrapper">
				<div class="popular base__lblue swiper-slide d-flex">
					<div class="popular-area">
						<div class="popular-post" onclick="location.href='${contextPath}/community/communityDetail/${map.type4[0].boardNo}'">
							<div class="post-title">
								<span class="fs-12 fc__gray">[ ${map.type4[0].boardCategory} ]</span> 
								<span class="fs-14__b">${map.type4[0].boardTitle}</span>
							</div>
							<div class="post-content">
								<span class="fs-12 fc__gray">
									${map.type4[0].boardContent}
								 </span>
							</div>
							<div class="post-info">
								<span class="fs-10">${map.type4[0].boardAuthor} ${map.type4[0].boardCreateDate}</span> 
								<span class="fs-10">조회수 ${map.type4[0].boardViews} | 댓글 ${map.type4[0].boardComent} | 좋아요 ${map.type4[0].boardLike} ♡</span>
							</div>
						</div>
					</div>
					<div class="popular-area">
						<div class="popular-post" onclick="location.href='${contextPath}/community/communityDetail/${map.type4[1].boardNo}'">
							<div class="post-title">
								<span class="fs-12 fc__gray">[ ${map.type4[1].boardCategory} ]</span> 
								<span class="fs-14__b">${map.type4[1].boardTitle}</span>
							</div>
							<div class="post-content">
								<span class="fs-12 fc__gray">
									${map.type4[1].boardContent}
								 </span>
							</div>
							<div class="post-info">
								<span class="fs-10">${map.type4[1].boardAuthor} ${map.type4[1].boardCreateDate}</span> 
								<span class="fs-10">조회수 ${map.type4[1].boardViews} | 댓글 ${map.type4[1].boardComent} | 좋아요 ${map.type4[1].boardLike} ♡</span>
							</div>
						</div>
					</div>
				</div>
				<div class="popular base__lblue swiper-slide d-flex">
					<div class="popular-area">
						<div class="popular-post" onclick="location.href='${contextPath}/community/communityDetail/${map.type4[2].boardNo}'">
							<div class="post-title">
								<span class="fs-12 fc__gray">[ ${map.type4[2].boardCategory} ]</span> 
								<span class="fs-14__b">${map.type4[2].boardTitle}</span>
							</div>
							<div class="post-content">
								<span class="fs-12 fc__gray">
									${map.type4[2].boardContent}
								 </span>
							</div>
							<div class="post-info">
								<span class="fs-10">${map.type4[2].boardAuthor} ${map.type4[2].boardCreateDate}</span> 
								<span class="fs-10">조회수 ${map.type4[2].boardViews} | 댓글 ${map.type4[2].boardComent} | 좋아요 ${map.type4[2].boardLike} ♡</span>
							</div>
						</div>
					</div>
					<div class="popular-area">
						<div class="popular-post" onclick="location.href='${contextPath}/community/communityDetail/${map.type4[3].boardNo}'">
							<div class="post-title">
								<span class="fs-12 fc__gray">[ ${map.type4[3].boardCategory} ]</span> 
								<span class="fs-14__b">${map.type4[3].boardTitle}</span>
							</div>
							<div class="post-content">
								<span class="fs-12 fc__gray">
									${map.type4[3].boardContent}
								 </span>
							</div>
							<div class="post-info">
								<span class="fs-10">${map.type4[3].boardAuthor} ${map.type4[3].boardCreateDate}</span> 
								<span class="fs-10">조회수 ${map.type4[3].boardViews} | 댓글 ${map.type4[3].boardComent} | 좋아요 ${map.type4[3].boardLike} ♡</span>
							</div>
						</div>
					</div>
				</div>
				<div class="popular base__lblue swiper-slide d-flex">
					<div class="popular-area">
						<div class="popular-post" onclick="location.href='${contextPath}/community/communityDetail/${map.type4[4].boardNo}'">
							<div class="post-title">
								<span class="fs-12 fc__gray">[ ${map.type4[4].boardCategory} ]</span> 
								<span class="fs-14__b">${map.type4[4].boardTitle}</span>
							</div>
							<div class="post-content">
								<span class="fs-12 fc__gray">
									${map.type4[4].boardContent}
								 </span>
							</div>
							<div class="post-info">
								<span class="fs-10">${map.type4[4].boardAuthor} ${map.type4[4].boardCreateDate}</span> 
								<span class="fs-10">조회수 ${map.type4[4].boardViews} | 댓글 ${map.type4[4].boardComent} | 좋아요 ${map.type4[4].boardLike} ♡</span>
							</div>
						</div>
					</div>
					<div class="popular-area">
						<div class="popular-post" onclick="location.href='${contextPath}/community/communityDetail/${map.type4[5].boardNo}'">
							<div class="post-title">
								<span class="fs-12 fc__gray">[ ${map.type4[5].boardCategory} ]</span> 
								<span class="fs-14__b">${map.type4[5].boardTitle}</span>
							</div>
							<div class="post-content">
								<span class="fs-12 fc__gray">
									${map.type4[5].boardContent}
								 </span>
							</div>
							<div class="post-info">
								<span class="fs-10">${map.type4[5].boardAuthor} ${map.type4[5].boardCreateDate}</span> 
								<span class="fs-10">조회수 ${map.type4[5].boardViews} | 댓글 ${map.type4[5].boardComent} | 좋아요 ${map.type4[5].boardLike} ♡</span>
							</div>
						</div>
					</div>
				</div>
				<div class="popular base__lblue swiper-slide d-flex">
					<div class="popular-area">
						<div class="popular-post" onclick="location.href='${contextPath}/community/communityDetail/${map.type4[6].boardNo}'">
							<div class="post-title">
								<span class="fs-12 fc__gray">[ ${map.type4[6].boardCategory} ]</span> 
								<span class="fs-14__b">${map.type4[6].boardTitle}</span>
							</div>
							<div class="post-content">
								<span class="fs-12 fc__gray">
									${map.type4[6].boardContent}
								 </span>
							</div>
							<div class="post-info">
								<span class="fs-10">${map.type4[6].boardAuthor} ${map.type4[6].boardCreateDate}</span> 
								<span class="fs-10">조회수 ${map.type4[6].boardViews} | 댓글 ${map.type4[6].boardComent} | 좋아요 ${map.type4[6].boardLike} ♡</span>
							</div>
						</div>
					</div>
					<div class="popular-area">
						<div class="popular-post" onclick="location.href='${contextPath}/community/communityDetail/${map.type4[7].boardNo}'">
							<div class="post-title">
								<span class="fs-12 fc__gray">[ ${map.type4[7].boardCategory} ]</span> 
								<span class="fs-14__b">${map.type4[7].boardTitle}</span>
							</div>
							<div class="post-content">
								<span class="fs-12 fc__gray">
									${map.type4[7].boardContent}
								 </span>
							</div>
							<div class="post-info">
								<span class="fs-10">${map.type4[7].boardAuthor} ${map.type4[7].boardCreateDate}</span> 
								<span class="fs-10">조회수 ${map.type4[7].boardViews} | 댓글 ${map.type4[7].boardComent} | 좋아요 ${map.type4[7].boardLike} ♡</span>
							</div>
						</div>
					</div>
				</div>
				<div class="popular base__lblue swiper-slide d-flex">
					<div class="popular-area">
						<div class="popular-post" onclick="location.href='${contextPath}/community/communityDetail/${map.type4[8].boardNo}'">
							<div class="post-title">
								<span class="fs-12 fc__gray">[ ${map.type4[8].boardCategory} ]</span> 
								<span class="fs-14__b">${map.type4[8].boardTitle}</span>
							</div>
							<div class="post-content">
								<span class="fs-12 fc__gray">
									${map.type4[8].boardContent}
								 </span>
							</div>
							<div class="post-info">
								<span class="fs-10">${map.type4[8].boardAuthor} ${map.type4[8].boardCreateDate}</span> 
								<span class="fs-10">조회수 ${map.type4[8].boardViews} | 댓글 ${map.type4[8].boardComent} | 좋아요 ${map.type4[8].boardLike} ♡</span>
							</div>
						</div>
					</div>
					<div class="popular-area">
						<div class="popular-post" onclick="location.href='${contextPath}/community/communityDetail/${map.type4[9].boardNo}'">
							<div class="post-title">
								<span class="fs-12 fc__gray">[ ${map.type4[9].boardCategory} ]</span> 
								<span class="fs-14__b">${map.type4[9].boardTitle}</span>
							</div>
							<div class="post-content">
								<span class="fs-12 fc__gray">
									${map.type4[9].boardContent}
								 </span>
							</div>
							<div class="post-info">
								<span class="fs-10">${map.type4[9].boardAuthor} ${map.type4[9].boardCreateDate}</span> 
								<span class="fs-10">조회수 ${map.type4[9].boardViews} | 댓글 ${map.type4[9].boardComent} | 좋아요 ${map.type4[9].boardLike} ♡</span>
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
				<c:forEach var="all" items="${map.type0}">
					<div class="post"  onclick="location.href='${contextPath}/community/communityDetail/${all.boardNo}'">
						<div class="post-title">
							<span class="fs-12 fc__gray">[ ${all.boardCategory} ]</span>
							<span class="fs-14__b">${all.boardTitle}</span>
						</div>
						<div class="post-info">
							<span class="fs-10">${all.boardAuthor} | ${all.boardCreateDate}</span> 
							<span class="fs-10">조회수 ${all.boardViews} | 댓글 ${all.boardComent} | 좋아요 ${all.boardLike} ♡</span>
						</div>
					</div>
				</c:forEach>
				
			</article>


			<!-- best -->
			<article class="best card__lblue br-15 mg-right">
				<div class="best-title">
					<span class="fs-14__b fc__blue">베스트 댓글</span>
				</div>
				<c:forEach var="bestReply" items="${map.bestReply}" varStatus="i">
					<div class="best-post">
						<div class="rank">
							<span class="fs-14__b fc__blue">${i.count}</span>
						</div>
						<div class="best-img">
							<img src="${contextPath}/public/images/user_img1.jpg">
						</div>
						<div class="best-content-area">
							<div class="best-info">
								<span class="fs-10 fc__gray">[ ${bestReply.boardCategory} ]</span> 
								<span class="fs-10 fc__gray">${bestReply.boardTitle}</span>
							</div>
							<div class="best-content">
								<span class="fs-10">${bestReply.boardAuthor}</span> 
								<span class="fs-10__b">${bestReply.boardContent}</span>
							</div>
						</div>
						<div class="best-like">
							<span class="fs-10__b">좋아요 ${bestReply.boardLike} ♥</span>
						</div>
					</div>
				</c:forEach>
				
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
						<c:forEach var="info" items="${map.type1}">
							<a class="swiper-slide fs-12" href="${contextPath}/community/communityDetail/${info.boardNo}">
								<span>${info.boardTitle}</span>
							</a> 
						</c:forEach>
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

				<c:forEach var="free" items="${map.type2}">
					<div class="post"  onclick="location.href='${contextPath}/community/communityDetail/${free.boardNo}'">
						<div class="post-title">
							<span class="fs-12 fc__gray">[ ${free.boardCategory} ]</span>
							<span class="fs-14__b">${free.boardTitle}</span>
						</div>
						<div class="post-info">
							<span class="fs-10">${free.boardAuthor} | ${free.boardCreateDate}</span> 
							<span class="fs-10">조회수 ${free.boardViews} | 댓글 ${free.boardComent} | 좋아요 ${free.boardLike} ♡</span>
						</div>
					</div>
				</c:forEach>

			</article>

			<!-- 응원 게시판 -->
			<article class="board mg-right">
				<div class="title">
					<span class="fs-28__b">응원 게시판</span> <span
						class="see-more fs-10 fc__gray"><a
						href="${contextPath}/community/communityBoard/cheer">더보기▶</a></span>
				</div>

				<c:forEach var="cheer" items="${map.type3}">
					<div class="post"  onclick="location.href='${contextPath}/community/communityDetail/${cheer.boardNo}'">
						<div class="post-title">
							<span class="fs-12 fc__gray">[ ${cheer.boardCategory} ]</span>
							<span class="fs-14__b">${cheer.boardTitle}</span>
						</div>
						<div class="post-info">
							<span class="fs-10">${cheer.boardAuthor} | ${cheer.boardCreateDate}</span> 
							<span class="fs-10">조회수 ${cheer.boardViews} | 댓글 ${cheer.boardComent} | 좋아요 ${cheer.boardLike} ♡</span>
						</div>
					</div>
				</c:forEach>


			
			</article>
		</section>

	</main>
	<!-- Be sure to include this TAG -->
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />


</body>
</html>