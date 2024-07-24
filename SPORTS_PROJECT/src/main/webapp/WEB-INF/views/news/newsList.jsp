<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp"/>
<link rel="stylesheet" href="${contextPath}/src/css/newsList.css">
<script src="${contextPath}/src/util/pagination.js" defer></script>
<script src="${contextPath}/src/js/newsList.js" defer></script>

<title>News Main</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header.jsp"/>
	<!-- Write Main Content -->
	<main class="container">
		<div class="new-list-container">
			<div class="news-list" id="news-list-pagination">
				<div class="search-term">
					<p class="fs-20__b" data-type="recent"> 최신순 </p>
					<p class="fs-20__b" data-type="recent">  인기순 </p>
					<p class="fs-20__b"> 구단별 </p>
					<select  class="fs-20__b">
						<option class="fs-14__b"> 다저스 </option>
						<option class="fs-14__b"> 기아 </option>
						<option class="fs-14__b"> 롯데 </option>
						<option class="fs-14__b"> 한화  </option>
					</select>
				</div>
				<p class="fs-20__b mb-10 fc__blue">  뉴스 </p>
				<div id="news-list-data"></div>
			</div>
			<div id="news-list-pagination"></div>
		</div>
	</main>
	<!-- Be sure to include this TAG -->
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />


</body>
</html>