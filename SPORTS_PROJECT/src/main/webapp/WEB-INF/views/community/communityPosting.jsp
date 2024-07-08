<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp"/>
<link rel="stylesheet" href="${contextPath}/src/css/communityPosting.css">
<script src="${contextPath}/src/js/communityPosting.js" defer></script>
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
		<form action="#">
			<section class="title-area">
				<div class="title">
					<span class="fs-28__b">게시글 작성</span>
				</div>
				<div class="category"></div>
				<div class="team"></div>
			</section>
			<section class="posting-area">
				<div class="input-title">
					<input type="text" placeholder="제목" name="title" class="fs-20">
					<div class="input-img">
						<label class="fa-regular fa-image">
							<input type="file" name="img">
						</label>
					</div>
				</div>
				<div class="input-content">
					<textarea rows="28" cols="95" name="content" style="resize: none; outline: none; border: none;" placeholder="내용을 입력하세요."></textarea>
				</div>
			</section>
			<section class="btn-area">
				<button class="base__blue fc__white br-5">저장</button>
				<button class="br-5">취소</button>
			</section>
		
		</form>
	</main>
	<!-- Be sure to include this TAG -->
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />


</body>
</html>