<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	
	<input type="hidden" class="newsListSearchTerm" value="${param.searchTerm}">
	<input type="hidden" class="newsListSearchTeamNo" value="${param.teamNo}">
	<!-- Write Main Content -->
	<main class="container">
		<div class="new-list-container">
			<div class="news-list" id="news-list-pagination">
				<div class="news-list-header">
					<div class="search-term">
						<p class="fs-14 term termRecent active" onclick="newsFilter('recent', this)"> 최신순 </p>
						<p class="fs-14 term termPopular" onclick="newsFilter('popular', this)"> 인기순 </p>
						<div class="d-flex">
							<p class="fs-14 term termTeam" onclick="newsFilter('team', this)"> 구단별 </p>
							<select class="search-term-team fs-14__b ml-10">
							</select>
						</div>
					</div>
			        <c:if test="${loginUser.getUserAuthority() == 'A'}"> 
		     		<div>
						<button class="btn-small__gray" onclick="location.href='${contextPath}/news/insert'"> 뉴스 등록 </button>
					</div>
			        </c:if>
				</div>
				<div id="news-list-data"></div>
			</div>
			<div id="news-list-pagination"></div>
		</div>
	</main>
	<!-- Be sure to include this TAG -->
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />


</body>
</html>