<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${contextPath}/src/css/communityBoard.css">
<script src="${contextPath}/src/js/communityBoard.js" defer></script>
<script src="${contextPath}/src/util/pagination.js" defer></script>
<script src="https://kit.fontawesome.com/e245e5bbb1.js"
	crossorigin="anonymous"></script>

<title>COMMUNITY</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header.jsp" />
	<input type="hidden" name="sub" value="${requestScope.sub}">
	<!-- Write Main Content -->
	<main>
		<!-- 게시판 메뉴 -->
		<section class="nav">
			<div class="switch">
				<a href="all" class="switch-category"><span class="switch-title">전체</span></a>
				<a href="popular" class="switch-category"><span
					class="switch-title">인기</span></a> <a href="cheer"
					class="switch-category"><span class="switch-title">응원</span></a> <a
					href="free" class="switch-category"><span class="switch-title">자유</span></a>
				<a href="info" class="switch-category"><span
					class="switch-title">공지사항</span></a>
			</div>

		</section>
		<!-- 게시판 -->
		<section class="board">
			<div class="title-area">
				<span class="fs-28__b title"></span>
				<div class="search-area">
					<form action="#" class="search">
						<select name="searchType" style="border: none; outline: none;" class="br-5">
					    	<option value="author" name="author">작성자</option>
					    	<option value="title" name="title">제목</option>
						</select>
						<input type="text">
						<button class="fa-solid fa-magnifying-glass"></button>
					</form>
					<button type="button" class="write-btn mg-right" onclick="location.href='${contextPath}/community/communityPosting/free'">글쓰기</button>
				</div>
			</div>
			<div id="community-data"></div>

		</section>
		<!-- 페이지 -->
		<section class="page">
			<div id="community-pagination"></div>
		</section>
	</main>
	<!-- Be sure to include this TAG -->
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />


</body>
</html>