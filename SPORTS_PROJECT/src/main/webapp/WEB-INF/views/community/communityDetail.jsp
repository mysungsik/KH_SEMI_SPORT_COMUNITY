<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp"/>
<link rel="stylesheet" href="${contextPath}/src/css/communityDetail.css">
<script src="${contextPath}/src/js/communityDetail.js" defer></script>
<script src="${contextPath}/src/util/pagination.js" defer></script>
<script src="https://kit.fontawesome.com/e245e5bbb1.js"
	crossorigin="anonymous"></script>


<title>COMMUNITY</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/layouts/header.jsp" />
	<input type="hidden" name="sub" value="${requestScope.sub}">
	<!-- Write Main Content -->
	<main class="container">
	<section class="board">
		<!-- 게시글 제목 -->
		<section class="title-area base__lblue">
			<div class="title"> 
				<span class="fs-12 fc__gray">[ ${board.boardCategory} ]</span>
				<span class="fs-14__b">${board.boardTitle}</span> 
			</div>
			<div class="info"> 
				<span class="fs-10">${board.boardAuthor}</span>
				<span class="fs-10"> | </span>
				<span class="fs-10">${board.boardCreateDate}</span> 
			</div>
		</section>
		
		<!-- 게시글 내용 -->
		<section class="content-area">
			<div class="content">
				<img src="${contextPath}/public/images/user_img1.jpg">
				<pre>
${board.boardContent}
				</pre>
			</div>
		</section>
		
		<section class="info-area">
			<div class="info">
				<span>조회수 ${board.boardViews}</span>
				<span> | </span>
				<span>댓글 ${board.boardComent}</span>
				<span> | </span>
				<span class="pointer">좋아요 ${board.boardLike}</span>
				<span> | </span>
				<span class="pointer" data-type="board-report" onclick="showModal(this)">신고</span>
			</div>
			<div class="btn-area">
				<button>목록으로</button>
			</div>
			<div class="update-area">
				<span class="pointer" onclick="location.href='${contextPath}/community/communityPosting/update'">수정</span>
				<span> | </span>
				<span class="delete pointer" data-type="board-delete" onclick="showModal(this)">삭제</span>
			</div>
		</section>
		
		<section class="input-area">
			<form>
				<textarea rows="3" cols="100" style="resize: none" placeholder="댓글을 입력해주세요."></textarea>
				<button>댓글</button>
			</form>
		</section>
		
		<section class="reply-area">
			<div id="community-data">
			</div>
		</section>
		
		<section class="page-area">
			<div id="community-pagination"></div>
		
		</section>
	</section>
	


	</main>
	<!-- Modal -->
	<div class="modal" id="communityModal" tabindex="-1" aria-hidden="true">
      <input type="hidden" name="modalType" value=""/>
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header base__blue">
	        <h1 class="modal-title" id="commonModalLabel"></h1>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body"></div>
	    </div>
	  </div>
	</div>
	<!-- Be sure to include this TAG -->
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />


</body>
</html>