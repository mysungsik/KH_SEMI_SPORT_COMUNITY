<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="/SPORTS_PROJECT/src/css/communityBoard.css">
    <script src="/SPORTS_PROJECT/src/js/community.js" defer></script>
    <script src="https://kit.fontawesome.com/e245e5bbb1.js" crossorigin="anonymous"></script>
    
    <title>COMMUNITY</title>
</head>
<body>
    <jsp:include page="/WEB-INF/views/layouts/header.jsp"/>
    <!-- Write Main Content -->
		<main>
			<!-- 게시판 메뉴 -->
			<section class="nav">
				<div class="switch">
					<label>
					<span>전체</span>
					<input type="radio" name="tabs">
					</label>
					<input type="radio" name="tabs">
					<input type="radio" name="tabs">
					<input type="radio" name="tabs">
					<input type="radio" name="tabs">
				</div>
				
			</section>
			<!-- 게시판 -->
			<section class="board">
			</section>
			<!-- 페이지 -->
			<section class="page">
			</section>
        </main>
    <!-- Be sure to include this TAG -->
    <jsp:include page="/WEB-INF/views/layouts/footer.jsp"/>

    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

</body>
</html>