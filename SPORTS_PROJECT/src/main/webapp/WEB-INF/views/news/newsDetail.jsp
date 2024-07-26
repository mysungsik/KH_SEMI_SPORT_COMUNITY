<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp"/>

<link rel="stylesheet" href="${contextPath}/src/css/newsDetail.css">

<script src="${contextPath}/src/js/newsDetail.js" defer></script>
<script src="${contextPath}/src/util/pagination.js" defer></script>
<script src="https://kit.fontawesome.com/e245e5bbb1.js" crossorigin="anonymous"></script>

<title>NEWS DETAIL</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header.jsp" />
	<input type="hidden" name="newsNum" value="${newsNum}">
	<!-- Write Main Content -->
	<main class="container">
		<!-- 뉴스 제목 -->
		<section class="news-info-container base__lblue">
			<div class="news-info">
				<div class="news-title-info ml-8"> 
					<span class="fs-12 fc__gray">[ ${newsInfo.getTeamName()} ] </span>
					<span class="fs-14__b">${newsInfo.getNewsTitle()}</span> 
				</div>
				<div class="news-writer-info ml-8">
					<span class="fs-10">${newsInfo.getUserName()}</span>
					<span class="fs-10"> | </span>
					<c:if test="${empty newsInfo.getUpdateDt()}">
						<span class="fs-10">작성일 : ${newsInfo.getCreateDt()}</span> 				
					</c:if>
					<c:if test="${!empty newsInfo.getUpdateDt()}">
						<span class="fs-10">수정일 : ${newsInfo.getUpdateDt()}</span> 				
					</c:if>
					
				</div> 
			</div>
			<div class="news-update-btns mr-10">
				<span onclick="location.href='${contextPath}/news/modify/${newsNum}'">수정</span>
				<span> | </span>
				<span class="news-delete" data-type="news-delete" onclick="showDeleteModal(this)">삭제</span>
			</div>
		</section>

		<!-- 뉴스 내용 -->
		<section class="news-content-container">
			<div class="news-content">
				<c:if test="${newsInfo.getNewsImg().size() > 0}">
					<c:forEach items="${newsInfo.getNewsImg()}" var="img">
						<img src="${img.getImgRename()}">
					</c:forEach>
				</c:if>
		
				<pre>
${newsInfo.getNewsContent()}
				</pre>
			</div>
		</section>
		
		<!-- 뉴스 기타 정보 (좋아요, 댓글 등) -->
		<section class="news-extra-info-container">
			<div class="news-extra-info">
				<span>댓글 <span class="reply-cnt">3</span></span>
				<span> | </span>
				<span class="pointer news-like" onclick="modifyNewsLike()">좋아요 <span class="like-cnt"></span> ♥</span>
				<span> | </span>
				<span class="pointer" data-type="news-report" onclick="showReportModal(this)">신고</span>
			</div>
		</section>
		
		<!-- 뉴스 댓글 입력 -->
		<section class="reply-input-container">
			<textarea name="reply-content" rows="3" cols="100" style="resize: none" placeholder="댓글을 입력해주세요."></textarea>
			<button class="btn-small__blue" onclick="insertReply()">확인</button>
		</section>
		
		<section class="reply-container">
			<div id="reply-data"></div>
			<div id="reply-pagination"></div>
		</section>
	</main>
	<!-- Be sure to include this TAG -->
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />
	
	<!-- Modal -->
	<jsp:include page="/WEB-INF/views/modals/deleteModal.jsp" />
	<jsp:include page="/WEB-INF/views/modals/reportModal.jsp" />



</body>
</html>