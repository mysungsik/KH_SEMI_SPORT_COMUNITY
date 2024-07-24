<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp"/>
<link rel="stylesheet" href="${contextPath}/src/css/newsVods.css">
<script src="${contextPath}/src/util/pagination.js" defer></script>
<script src="${contextPath}/src/js/newsVods.js" defer></script>

<title>News Main</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header.jsp"/>
	<!-- Write Main Content -->
	<main class="container">
		<!-- 동영상 탭 (영상 인기순 10개)-->
		<div class="vods-container">
			<p class="fs-20__b mb-10 fc__blue"> 하이라이트 영상 </p>
			<div class="vods" id="news-vods-data">
	            
			</div>
		</div>
		<div id="news-vods-pagination"></div>
	</main>
	<!-- Be sure to include this TAG -->
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />


</body>
</html>