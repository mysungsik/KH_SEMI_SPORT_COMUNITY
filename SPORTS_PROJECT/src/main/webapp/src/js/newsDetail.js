$(document).ready(function() {
	// 댓글 및 좋아요 가져오는 함수 실행
	getReplies();
	getLikes();
});

let replyData = [];
let likeData = [];
let reportTypeData = [];

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
					<input type="hidden" name="userNo" value="${d.userNo}">
					<input type="hidden" name="replyTypeNo" value="${d.replyTypeNo}">
					<input type="hidden" name="replyTargetNo" value="${d.replyTargetNo}">
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
							<span class="fs-10 fc__gray pointer">좋아요 0:todo ♥</span>
							<span class="fs-10 fc__gray"> | </span>
							<span class="fs-10 fc__gray pointer" data-type="reply-update" data-replyno="${d.replyNo}" onclick="showReplyUpdateModal($(this))">수정</span>
							<span class="fs-10 fc__gray"> | </span>
							<span class="fs-10 fc__gray pointer" data-type="reply-delete" data-replyno="${d.replyNo}" onclick="showDeleteModal($(this))">삭제</span>
							<span class="fs-10 fc__gray"> | </span>
							<span class="fs-10 fc__gray pointer" data-type="reply-report" data-replyno="${d.replyNo}" onclick="showReportModal($(this))">신고</span>
						</div>           
						<div><span class="fs-10 fc__gray" class="fs-10">${d.replyDt}</span></div>
					</div>
				</div>
			`
	})
	return item;
}

// 댓글 입력 함수
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


// 댓글 삭제 함수
function deleteReply(el){
	
	let deleteModalEl = $('#deleteModal');
	var deleteModal = bootstrap.Modal.getInstance(deleteModalEl);
	
	let replyNo = parseInt($(el).data("replyno"));
	if (loginUser == ""){
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}
	
	const request_url = `${contextPath}/api/reply/deleteReply`;

	$.ajax({
		type: "POST",
		url: request_url,
		data : {
			replyNo
		},
		dataType: "json",
		success: function (res) {
			let isDeleteReply = res.hasOwnProperty("data");
			
			if(isDeleteReply){
				
				replyData = replyData.filter(function(item){
					return item.replyNo != replyNo;
				})
				paginationActive("reply", replyData, replyPaginationTemplate)
			
				// 댓글 개수 변경
				$(".reply-cnt").html(replyData.length)
				
				// 모달 종료
				deleteModal.hide();
			}
			
			else{
				toastPop("warn", res.message)
				deleteModal.hide();
			}
		}
	});
}

// 댓글 수정 함수
function updateReply(el){
	
	let updateReplyEl = $('#updateReplyModal');
	let updateReplyModal = bootstrap.Modal.getInstance(updateReplyEl);
	let replyContent = updateReplyEl.find("textarea[name='update-reply-content']").val();
	let replyNo = parseInt($(el).data("replyno"));
	
	if (loginUser == ""){
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}
	
	// 요청
	const request_url = `${contextPath}/api/reply/updateReply`;
	
	if (replyContent.trim() != ""){
		$.ajax({
			type: "POST",
			url: request_url,
			data : {
				replyNo,
				replyContent
			},
			dataType: "json",
			success: function (res) {
				let isInsertReply = res.hasOwnProperty("data");
				
				if(isInsertReply){
					// 댓글 데이터 찾아서 변경, 페이지네이션 재실행
					getReplies();
					// 모달 종료
					updateReplyModal.hide();
				}
				
				else{
					toastPop("warn", res.message)
				}
			}
		});
	} else{
		toastPop("warn", "댓글을 입력해주세요")
	}
}

// 뉴스 좋아요 추가/삭제 함수
function modifyNewsLike(){
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
		
	deleteModalEl.modal('show');
	
	deleteModalEl.find(".acceptBtn").one("click", function(){
		deleteReply(el)
	})
}

// Report 모달 생성
function showReportModal(el){
	if (loginUser == ""){
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}
	
	let reportModalEl = $('#reportModal');
	let modalType = $(el).data("type");
	
	let item = (modalType == "news-report") ? "뉴스" : "댓글";
	reportModalEl.find(".modal-title").html(`<p class="fs-14 fc__white">${item} 신고</p>`)

	reportModalEl.modal('show');
}

// ReplyUpdate 모달 생성
function showReplyUpdateModal(el){
	if (loginUser == ""){
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}
	
	let reportModalEl = $('#updateReplyModal');
	
	let item = "댓글";
	reportModalEl.find(".modal-title").html(`<p class="fs-14 fc__white">${item} 수정</p>`)

	reportModalEl.modal('show');
	
	reportModalEl.find(".acceptBtn").one("click", function(){
		updateReply(el)
	})
}




