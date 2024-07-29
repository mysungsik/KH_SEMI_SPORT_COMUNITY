<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp"/>
<link rel="stylesheet" href="${contextPath}/src/css/newsModify.css">
<script src="${contextPath}/src/js/newsModify.js" defer></script>

<title>NEWS - MODIFY</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header.jsp" />
	
	<!-- Write Main Content -->
	<main>
		<form action="${contextPath}/api/news/modifyNews"  enctype="multipart/form-data" method="post" onsubmit="return writeValidate()">
			<input type="hidden" name="newsNum" value="${newsNum}">
			<section class="title-area">
				<div class="title">
					<span class="fs-28__b">뉴스 수정</span>
				</div>
				<div class="category">
					<select name="team-category" class="team-category">
					</select>
				</div>
			</section>
			<section class="posting-area">
				<div class="input-title">
					<input type="text" placeholder="제목" name="title" class="fs-20" value="${newsInfo.getNewsTitle()}">
				</div>
				<div class="input-publisher">
					<input type="text" placeholder="뉴스 발행사" name="publisher" class="fs-14" value="${newsInfo.getNewsPublisher()}">
				</div>
				<div class="input-newsThumbnail">
					<label for="newsThumbnail" class="fs-14 fc__gray mr-10" >썸네일 등록</label>
					<input type="file" name="newsThumbnail" class="newsThumbnail" id="newsThumbnail" accept="image/*" >
					<span class="delete-image">&times;</span>
				</div>
				<div class="img-box">
					<div class="newsThumbnail-container">
						<img class="preview">
					</div>
				</div>
				<div class="input-content">
					<textarea rows="30" cols="95" name="content" style="resize: none; outline: none; border: none;" placeholder="내용을 입력하세요.">${newsInfo.getNewsContent()}</textarea>
				</div>
			</section>
			<section class="btn-area">
				<button class="base__blue fc__white br-5 saveBtn">저장</button>
				<button class="br-5" onclick="goBack()" type="button">취소</button>
			</section>
		</form>
	</main>
	
	<!-- Be sure to include this TAG -->
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />
</body>
</html>