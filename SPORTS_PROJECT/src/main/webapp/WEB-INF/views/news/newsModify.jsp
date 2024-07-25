<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="/WEB-INF/views/layouts/header-dependencies.jsp"/>

<link rel="stylesheet" href="${contextPath}/src/css/newsModify.css">

<script src="${contextPath}/src/js/newsModify.js" defer></script>
<script src="${contextPath}/src/util/pagination.js" defer></script>
<script src="https://kit.fontawesome.com/e245e5bbb1.js" crossorigin="anonymous"></script>

<title>NEWS MODIFY</title>
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
					<span class="fs-12 fc__gray">[ 다저스 ] </span>
					<span class="fs-14__b">뉴스 제목입니다.</span> 
				</div>
				<div class="news-writer-info ml-8">
					<span class="fs-10">기자명</span>
					<span class="fs-10"> | </span>
					<span class="fs-10">2024-07-06 14:59:20</span> 				
				</div> 
			</div>
			<div class="news-update-btns mr-10">
				<span>수정</span>
				<span> | </span>
				<span class="delete" data-type="delete" onclick="showModal(this)">삭제</span>
			</div>
		</section>

		<!-- 뉴스 내용 -->
		<section class="news-content-container">
			<div class="news-content">
				<img src="${contextPath}/public/images/user_img1.jpg">
				<pre>
					내용 들어올 자리dd
					주저리 주저리	
				</pre>
			</div>
		</section>
		
		<!-- 뉴스 기타 정보 (좋아요, 댓글 등) -->
		<section class="news-extra-info-container">
			<div class="news-extra-info">
				<span>조회수 30</span>
				<span> | </span>
				<span>댓글 2</span>
				<span> | </span>
				<span class="pointer">좋아요 3 ♥</span>
				<span> | </span>
				<span class="pointer" data-type="board-report" onclick="showModal(this)">신고</span>
			</div>
		</section>
		
		<!-- 뉴스 댓글 입력 -->
		<section class="reply-input-container">
			<textarea rows="3" cols="100" style="resize: none" placeholder="댓글을 입력해주세요."></textarea>
			<button>확인</button>
		</section>
		
		<section class="reply-container">
			<div id="reply-data">
				<hr class="hr__gray">
				<div class="reply">
					<div class="reply-author-info d-flex">
						<div class="reply-author">
							<img class="author-profile" src="${contextPath}/public/images/profile/user_img1.jpg"/> 
							<p class="author-name fs-14__b ml-8">충무로킹갓세종</p>
						</div>
					</div>
					<div class="reply-content">
						<p class="fs-12">안녕 내이름은 누구일까요<br>안녕하세요 봉주르 <br>하위</p>
					</div>
					<div class="reply-extra-info">
						<div>
							<span class="fs-10 fc__gray">좋아요 ${d.like} ♥</span>
							<span class="fs-10 fc__gray"> | </span>
							<span class="fs-10 fc__gray" onclick="updateReply()">수정</span>
							<span class="fs-10 fc__gray"> | </span>
							<span class="fs-10 fc__gray" data-type="reply-delete" onclick="showModal(this)">삭제</span>
							<span class="fs-10 fc__gray"> | </span>
							<span class="fs-10 fc__gray" data-type="reply-report" onclick="showModal(this)">신고</span>
						</div>           
						<div><span class="fs-10 fc__gray" class="fs-10">2024-03-21 15:21:30</span></div>
					</div>
				</div>
				<hr class="hr__gray">
				<div class="reply">
					<div class="reply-author-info d-flex">
						<div class="reply-author">
							<img class="author-profile" src="${contextPath}/public/images/profile/202407204160785_85513.gif"/> 
							<p class="author-name fs-14__b ml-8">엑스트라맨</p>
						</div>
					</div>
					<div class="reply-content">
						<p class="fs-12">안녕 내이름은 누구일까요<br>안녕하세요 봉주르 <br>하위</p>
					</div>
					<div class="reply-extra-info">
						<div>
							<span class="fs-10 fc__gray">좋아요 ${d.like} ♥</span>
							<span class="fs-10 fc__gray"> | </span>
							<span class="fs-10 fc__gray" onclick="updateReply()">수정</span>
							<span class="fs-10 fc__gray"> | </span>
							<span class="fs-10 fc__gray" data-type="reply-delete" onclick="showModal(this)">삭제</span>
							<span class="fs-10 fc__gray"> | </span>
							<span class="fs-10 fc__gray" data-type="reply-report" onclick="showModal(this)">신고</span>
						</div>           
						<div><span class="fs-10 fc__gray" class="fs-10">2024-03-21 15:21:30</span></div>
					</div>
				</div>

			</div>
			<div id="reply-pagination"></div>
		</section>
	</main>
	<!-- Be sure to include this TAG -->
	<jsp:include page="/WEB-INF/views/layouts/footer.jsp" />
	
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


</body>
</html>