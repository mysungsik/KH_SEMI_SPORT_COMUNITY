$(document).ready(function() {
	// 댓글 및 좋아요 가져오는 함수 실행
	getReplies();
	getLikes();
});

let replyData = [];
let likeData = [];

// 댓글 데이터 가져오는 함수
function getReplies(){
	const request_url = `${contextPath}/api/reply/getReplyAll`;
	$.ajax({
		type: "GET",
		url: request_url,
		data : {
			typeNo : 4,
			targetNo : $("input[name='newsNum']").eq(0).val()
		},
		dataType: "json",
		success: function (res) {
			let isGetData = res.hasOwnProperty("data");

			if (isGetData){
				replyData = res.data
				paginationActive("reply", replyData, replyPaginationTemplate)
				
				$(".reply-cnt").html(res.data.length)
			}
		}
	});
}

// 좋아요 데이터 가져오는 함수
function getLikes(){
	const request_url = `${contextPath}/api/like/getLikeAll`;
	$.ajax({
		type: "GET",
		url: request_url,
		data : {
			typeNo : 5,
			targetNo : $("input[name='newsNum']").eq(0).val()
		},
		dataType: "json",
		success: function (res) {
			
			let isGetData = res.hasOwnProperty("data");
			if (isGetData){
				likeData = res.data
				$(".like-cnt").html(likeData.length)
			}
		}
	});
}


// 페이지네이션 실행 함수
function paginationActive(id, datas, template) {
	let page_size = 4;

	if ($(`#${id}-pagination`).length > 0) {

		$(`#${id}-pagination`).pagination({
			dataSource: datas,
			pageSize: page_size,
			callback: function(data, pagination) {
				var html = template(data);

				$(`#${id}-data`).html(html);	// 데이터 페이지네이션

				var currentPage = pagination.pageNumber;	// 현재 페이지 번호

				// 페이지네이션 변경
				var pagingEl = $(`.paginationjs-page[data-num='${currentPage}'] a`);
				pagingEl.css({
					fontSize: "14px",
					textDecoration: "underline",
					color: "#458BE2"
				})
			}
		})
	}
}

// 댓글 페이지네이션 템플릿 함수
function replyPaginationTemplate(data) {
	let item = "";
	
	$.each(data, function(index, d) {
		item +=
			`
				<hr class="hr__gray">
				<div class="reply">
					<input type="hidden" name="replyNo" value="${d.replyNo}">
					<input type="hidden" name="replyNo" value="${d.userNo}">
					<input type="hidden" name="replyNo" value="${d.replyTypeNo}">
					<input type="hidden" name="replyNo" value="${d.replyTargetNo}">
					<div class="reply-author-info d-flex">
						<div class="reply-author">
							<img class="author-profile" 
								src="${d.userProfileImg != '' ? d.userProfileImg : contextPath + '/public/images/profile/user_img1.jpg'}"/> 
							<p class="author-name fs-14__b ml-8">${d.userName}</p>
						</div>
					</div>
					<div class="reply-content">
						<p class="fs-12">${d.replyContent}</p>
					</div>
					<div class="reply-extra-info">
						<div>
							<span class="fs-10 fc__gray">좋아요 0:todo ♥</span>
							<span class="fs-10 fc__gray"> | </span>
							<span class="fs-10 fc__gray" onclick="updateReply()">수정</span>
							<span class="fs-10 fc__gray"> | </span>
							<span class="fs-10 fc__gray" data-type="reply-delete" onclick="showModal(this)">삭제</span>
							<span class="fs-10 fc__gray"> | </span>
							<span class="fs-10 fc__gray" data-type="reply-report" onclick="showModal(this)">신고</span>
						</div>           
						<div><span class="fs-10 fc__gray" class="fs-10">${d.replyDt}</span></div>
					</div>
				</div>
			`
	})
	return item;
}

function insertReply(){
	let replyContent = $("textarea[name='reply-content']").val() 
	
	if (loginUser == ""){
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}
	
	const request_url = `${contextPath}/api/reply/insertReply`;
	
	if (replyContent.trim() != ""){
		$.ajax({
			type: "POST",
			url: request_url,
			data : {
				typeNo : 4,	// 뉴스
				targetNo : $("input[name='newsNum']").eq(0).val(),
				replyContent
			},
			dataType: "json",
			success: function (res) {
				let isInsertReply = res.hasOwnProperty("data");
				
				if(isInsertReply){
					$("textarea[name='reply-content']").val("") 
					
					// 댓글 최상단에 입력 (unshift(...))
					replyData.unshift(res.data)
					paginationActive("reply", replyData, replyPaginationTemplate)
				
					// 댓글 개수 변경
					$(".reply-cnt").html(replyData.length)
				}
				
				else{
					toastPop("warn", res.message)
				}
			}
		});
	}
}

function modifyLike(){
	if (loginUser == ""){
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}
	
	const news_like_btn = $(".news-like").eq(0)
	const request_url = `${contextPath}/api/like/modifyLike`;
	let like_cnt = parseInt($(".like-cnt").html());
	
	if (news_like_btn.hasClass("disabled")){
		toastPop("warn", "요청이 너무 빠릅니다!")
		return;
	}
	
	$.ajax({
		type: "POST",
		url: request_url,
		data : {
			typeNo : 5,	// 뉴스
			targetNo : $("input[name='newsNum']").eq(0).val()
		},
		dataType: "json",
		success: function (res) {
			// 좋아요 버튼 disable
			news_like_btn.addClass("disabled")
			
			let isModifyLike = res.hasOwnProperty("data");
			
			if(isModifyLike){
				if (res.data == "deleteLike"){
					$(".like-cnt").html(like_cnt -1)
					
				} else if(res.data == "insertLike"){
					$(".like-cnt").html(like_cnt + 1)
					toastPop("info", "좋아요!")
				}
			}
			else{
				toastPop("warn", res.message)
			}
		}
	});
	
	setTimeout(function(){
		news_like_btn.removeClass("disabled")
	}, 1000)
	
}

// Delete 모달 생성
function showDeleteModal(el){
	if (loginUser == ""){
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}
	
	let deleteModalEl = $('#deleteModal');
	let modalType = $(el).data("type");
	
	let item = (modalType == "news-delete") ? "뉴스" : "댓글";
	deleteModalEl.find(".modal-title").html(`<p class="fs-14 fc__white">${item} 삭제</p>`)
		
	modalEl.modal('show');
}

// 신고 모달 생성
function showReportModal(el){
	if (loginUser == ""){
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}
	
	let reportModalEl = $('#reportModal');
	let modalType = $(el).data("type");
	
	let item = (modalType == "news-report") ? "뉴스" : "댓글";
	reportModalEl.find(".modal-title").html(`<p class="fs-14 fc__white">${item} 신고</p>`)

	
}




