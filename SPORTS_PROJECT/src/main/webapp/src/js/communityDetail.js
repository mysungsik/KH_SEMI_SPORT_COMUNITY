$(document).ready(function () {
	// 댓글 및 좋아요 가져오는 함수 실행
	getReplies();
	getLikes();
});

let replyData = [];
let likeData = [];
let reportTypeData = [];
let boardNo = $("input[name='sub']").eq(0).val();


// 댓글 페이지네이션 템플릿 함수
function replyPaginationTemplate(data) {
	let item = "";

	$.each(data, function (index, d) {
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
							${d.userNo == loginUserNo ? `
							<span class="fs-10 fc__gray pointer" data-type="reply-update" data-replyno="${d.replyNo}" onclick="showReplyUpdateModal($(this))">수정</span>
							<span class="fs-10 fc__gray"> | </span>
							<span class="fs-10 fc__gray pointer" data-type="reply-delete" data-replyno="${d.replyNo}" onclick="showDeleteModal($(this))">삭제</span>
							<span class="fs-10 fc__gray"> | </span>`
				:
				""
			}
							<span class="fs-10 fc__gray pointer" data-type="reply-report" data-replyno="${d.replyNo}" onclick="showReportModal($(this))">신고</span>
						</div>           
						<div><span class="fs-10 fc__gray" class="fs-10">${d.replyDt}</span></div>
					</div>
				</div>
			`
	})
	return item;
}



// 페이지네이션 실행 함수
function paginationActive(id, datas, template) {
	let page_size = 5;

	if ($(`#${id}-pagination`).length > 0) {

		$(`#${id}-pagination`).pagination({
			dataSource: datas,

			pageSize: page_size,

			callback: function (data, pagination) {
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


// 댓글 데이터 가져오는 함수
function getReplies() {
	const request_url = `${contextPath}/api/reply/getReplyAll`;
	$.ajax({
		type: "GET",
		url: request_url,
		data: {
			typeNo: 1,
			targetNo: boardNo
		},
		dataType: "json",
		success: function (res) {
			let isGetData = res.hasOwnProperty("data");

			if (isGetData) {
				replyData = res.data
				paginationActive("reply", replyData, replyPaginationTemplate)

				$(".reply-cnt").html(res.data.length)
			}
		}
	});
}

// 좋아요 데이터 가져오는 함수
function getLikes() {
	const request_url = `${contextPath}/api/like/getLikeAll`;
	$.ajax({
		type: "GET",
		url: request_url,
		data: {
			typeNo: 1,
			targetNo: boardNo
		},
		dataType: "json",
		success: function (res) {

			let isGetData = res.hasOwnProperty("data");
			if (isGetData) {
				likeData = res.data
				$(".like-cnt").html(likeData.length)
			}
		}
	});
}

// 댓글 입력 함수
function insertReply() {
	let replyContent = $("textarea[name='reply-content']").val()

	if (loginUser == "") {
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}

	const request_url = `${contextPath}/api/reply/insertReply`;

	if (replyContent.trim() != "") {
		$.ajax({
			type: "POST",
			url: request_url,
			data: {
				typeNo: 1,	// comm
				targetNo: $("input[name='sub']").eq(0).val(),
				replyContent
			},
			dataType: "json",
			success: function (res) {
				let isInsertReply = res.hasOwnProperty("data");

				if (isInsertReply) {
					$("textarea[name='reply-content']").val("")

					// 댓글 최상단에 입력 (unshift(...))
					replyData.unshift(res.data)
					paginationActive("reply", replyData, replyPaginationTemplate)

					// 댓글 개수 변경
					$(".reply-cnt").html(replyData.length)
				}

				else {
					toastPop("warn", res.message)
				}
			}
		});
	}
}

// 댓글 삭제 함수
function deleteReply(el) {

	let deleteModalEl = $('#deleteModal');
	var deleteModal = bootstrap.Modal.getInstance(deleteModalEl);

	let replyNo = parseInt($(el).data("replyno"));
	if (loginUser == "") {
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}

	const request_url = `${contextPath}/api/reply/deleteReply`;

	$.ajax({
		type: "POST",
		url: request_url,
		data: {
			replyNo
		},
		dataType: "json",
		success: function (res) {
			let isDeleteReply = res.hasOwnProperty("data");

			if (isDeleteReply) {

				replyData = replyData.filter(function (item) {
					return item.replyNo != replyNo;
				})
				paginationActive("reply", replyData, replyPaginationTemplate)

				// 댓글 개수 변경
				$(".reply-cnt").html(replyData.length)

				// 모달 종료
				deleteModal.hide();
			}

			else {
				toastPop("warn", res.message)
				deleteModal.hide();
			}
		}
	});
}

// 댓글 수정 함수
function updateReply(el) {

	let updateReplyEl = $('#updateReplyModal');
	let updateReplyModal = bootstrap.Modal.getInstance(updateReplyEl);
	let replyContent = updateReplyEl.find("textarea[name='update-reply-content']").val();
	let replyNo = parseInt($(el).data("replyno"));

	if (loginUser == "") {
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}

	// 요청
	const request_url = `${contextPath}/api/reply/updateReply`;

	if (replyContent.trim() != "") {
		$.ajax({
			type: "POST",
			url: request_url,
			data: {
				replyNo,
				replyContent
			},
			dataType: "json",
			success: function (res) {
				let isInsertReply = res.hasOwnProperty("data");

				if (isInsertReply) {
					// 댓글 데이터 찾아서 변경, 페이지네이션 재실행
					getReplies();
					// 모달 종료
					updateReplyModal.hide();
				}

				else {
					toastPop("warn", res.message)
				}
			}
		});
	} else {
		toastPop("warn", "댓글을 입력해주세요")
	}
}

// 좋아요 추가/삭제 함수
function modifyLike() {
	if (loginUser == "") {
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}

	const board_like_btn = $(".board-like").eq(0)
	const request_url = `${contextPath}/api/like/modifyLike`;
	let like_cnt = parseInt($(".like-cnt").html());

	if (board_like_btn.hasClass("disabled")) {
		toastPop("warn", "요청이 너무 빠릅니다!")
		return;
	}

	$.ajax({
		type: "POST",
		url: request_url,
		data: {
			typeNo: 1,	// COMM
			targetNo: boardNo
		},
		dataType: "json",
		success: function (res) {
			// 좋아요 버튼 disable
			board_like_btn.addClass("disabled")

			let isModifyLike = res.hasOwnProperty("data");

			if (isModifyLike) {
				if (res.data == "deleteLike") {
					$(".like-cnt").html(like_cnt - 1)

				} else if (res.data == "insertLike") {
					$(".like-cnt").html(like_cnt + 1)
					toastPop("info", "좋아요!")
				}
			}
			else {
				toastPop("warn", res.message)
			}
		}
	});

	setTimeout(function () {
		board_like_btn.removeClass("disabled")
	}, 1000)

}



// Delete 모달 생성
function showDeleteModal(el) {
	if (loginUser == "") {
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}

	let deleteModalEl = $('#deleteModal');

	deleteModalEl.find(".modal-title").html(`<p class="fs-14 fc__white">댓글 삭제</p>`)

	deleteModalEl.modal('show');

	deleteModalEl.find(".acceptBtn").one("click", function () {
		deleteReply(el)
	})
}

// ReplyUpdate 모달 
function showReplyUpdateModal(el) {
	if (loginUser == "") {
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}

	let reportModalEl = $('#updateReplyModal');

	let item = "댓글";
	reportModalEl.find(".modal-title").html(`<p class="fs-14 fc__white">${item} 수정</p>`)

	reportModalEl.modal('show');

	reportModalEl.find(".acceptBtn").one("click", function () {
		updateReply(el)
	})
}

// Report 모달 생성
function showReportModal(el) {
	if (loginUser == "") {
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}

	let reportModalEl = $('#reportModal');
	let modalType = $(el).data("type");

	console.log(modalType);

	// reportTypeNo -> 3: 뉴스 신고, 2: 댓글 신고
	let reportTypeNo = (modalType == "board-report") ? 1 : 2;

	// 리포트 타겟 번호
	let reportTargetNo = 0;


	// 타겟이 뉴스라면 뉴스번호
	if (reportTypeNo == 1) {
		reportTargetNo = $("input[name='sub']").eq(0).val()
	}
	// 타겟이 댓글이라면 각 댓글번호
	else if (reportTypeNo == 2) {
		reportTargetNo = parseInt($(el).data("replyno"));
	}

	console.log(reportTargetNo)

	let item = (modalType == "board-report") ? "게시글" : "댓글";
	reportModalEl.find(".modal-title").html(`<p class="fs-14 fc__white">${item} 신고</p>`)

	reportModalEl.modal('show');

	reportModalEl.find(".acceptBtn").one("click", function () {
		insertReport(reportTypeNo, reportTargetNo)
	})
}

function insertReport(reportTypeNo, reportTargetNo) {

	let reportModalEl = $('#reportModal');
	let reportModalModal = bootstrap.Modal.getInstance(reportModalEl);
	let reportContent = reportModalEl.find("textarea[name='report-content']").val();
	let reportVioType = reportModalEl.find("select[name='reportVioType']").val();

	if (loginUser == "") {
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}

	// 요청
	const request_url = `${contextPath}/api/report/insertReport`;

	if (reportContent.trim() != "") {
		$.ajax({
			type: "POST",
			url: request_url,
			data: {
				reportTypeNo,
				reportTargetNo,
				reportVioType,
				reportContent

			},
			dataType: "json",
			success: function (res) {
				let isInsertReport = res.hasOwnProperty("data");

				if (isInsertReport) {
					// 모달 종료, textarea 비우기, 토스트 생성
					reportModalModal.hide();
					reportModalEl.find("textarea[name='report-content']").val("");
					toastPop("info", res.message)
				}

				else {
					reportModalModal.hide();
					reportModalEl.find("textarea[name='report-content']").val()
					toastPop("warn", res.message)
				}
			}
		});
	} else {
		toastPop("warn", "댓글을 입력해주세요")
	}
}

function deleteEventListener(el) {
	let acceptBtn = $(el).parent().find(".acceptBtn")
	acceptBtn.off("click");
}

// 모달
function showModal() {

	if (loginUser == "") {
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}
	let modalEl = $('#communityModal');



	modalEl.find(".modal-title").html(`<p class="fs-14 fc__white">게시글 삭제</p>`)

	modalEl.find(".modal-body").html(` 
			
				<div class="modal-row">정말 삭제하시겠습니까?</div>
				
				<div class="modal-btns">
					<button class="btn-medium__blue acceptBtn" onclick="location.href='delete?no=${boardNo}'"> 확인 </button>
					<button class="btn-medium__gray cancelBtn" data-bs-dismiss="modal"> 취소 </button>
				</div>
				`
	);



	modalEl.modal('show');
}

function loginCheck() {
	if (loginUser == "") {
		toastPop("warn", "로그인 후 이용해주세요");
		return;
	}
}