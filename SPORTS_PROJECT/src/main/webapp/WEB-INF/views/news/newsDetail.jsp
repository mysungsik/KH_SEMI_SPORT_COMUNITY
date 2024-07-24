<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<input type="hidden" name="sub" value="${requestScope.sub}">
	<!-- Write Main Content -->
	<main class="container">
		<!-- 뉴스 제목 -->
		<section class="news-title-container base__lblue">
			<div class="news-title"> 
				<span class="fs-12 fc__gray">[ 다저스 ] </span>
				<span class="fs-14__b">뉴스 제목입니다.</span> 
			</div>
			<div class="news-writer-info">
				<div>
					<span class="fs-10">기자명</span>
					<span class="fs-10"> | </span>
					<span class="fs-10">2024-07-06 14:59:20</span> 				
				</div> 
				<div class="news-update-btns">
					<span class="pointer" onclick="location.href='${contextPath}/community/communityPosting/update'">수정</span>
					<span> | </span>
					<span class="delete pointer" data-type="board-delete" onclick="showModal(this)">삭제</span>
				</div>
			</div>
		</section>
		
		<!-- 뉴스 내용 -->
		<section class="news-content-container">
			<div class="news-content">
				<img src="${contextPath}/public/images/user_img1.jpg">
				<pre>
					내용 들어올 자리
					주저리 주저리	
				</pre>
			</div>
		</section>
		
		<!-- 뉴스 기타 정보 (좋아요, 댓글 등) -->
		<section class="news-content-container">
			<div class="news-content-info">
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
				<div class="reply">
					<div class="author">
						<span class="fs-10 fc__gray">${d.author}</span>
					</div>
					<div class="comment">
						<span class="fs-12">${d.comments}</span>
					</div>
					<div class="reply-info">
						<div>
							<span>좋아요 ${d.like} ♥</span>
							<span> | </span>
							<span onclick="updateReply()">수정</span>
							<span> | </span>
							<span data-type="reply-delete" onclick="showModal(this)">삭제</span>
							<span> | </span>
							<span data-type="reply-report" onclick="showModal(this)">신고</span>
						</div>
						<div><span class="fs-10">${d.date}</span></div>
					</div>
				</div>
				<div class="reply update">
					<form>
						<textarea rows="3" cols="100" style="resize: none"">tlqkf</textarea>
						<button>수정</button>
						<button class="footer_gray fc__gray">취소</button>
					</form>
				</div>
			</div>
<!-- 			<div id="reply-pagination"></div> -->
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