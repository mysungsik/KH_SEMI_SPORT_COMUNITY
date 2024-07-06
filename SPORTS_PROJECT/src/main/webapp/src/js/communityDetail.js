let communityData = [
	{ author: "[작성자]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },
	{ author: "[작성자]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },
	{ author: "[작성자]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },
	{ author: "[작성자]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },
	{ author: "[작성자]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },
	{ author: "[작성자]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },
	{ author: "[작성자]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },
	{ author: "[작성자]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },
	{ author: "[작성자]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },
	{ author: "[작성자]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },
	{ author: "[작성자]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },
	{ author: "[작성자]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },
	{ author: "[작성자]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },
	{ author: "[작성자]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },
	{ author: "[작성자]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },
	{ author: "[작성자]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },
	{ author: "[작성자]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },
	{ author: "[작성자]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },
	{ author: "[작성자]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },


]




// 일반 유저 페이지네이션 템플릿 함수
function paginationTemplate(data) {
	let item = ""
	$.each(data, function(index, d) {
		item +=
			`<div class="reply">
				<div class="author">
					<span class="fs-10 fc__gray">${d.author}</span>
				</div>
				<div class="comment">
					<span class="fs-12">${d.comments}</span>
				</div>
				<div class="reply-info">
					<div><span class="fs-10">좋아요 ${d.like} ♥</span><span class="fs-10"> | </span><span class="fs-10">신고</span></div>
					<div><span class="fs-10">${d.date}</span></div>
				</div>
			</div>`
	})

	return item;
}


$(document).ready(function() {

	
	// 페이지네이션 실행
	paginationActive("community", communityData, paginationTemplate);
});


// 페이지네이션 실행 함수
function paginationActive(id, datas, template) {
	let page_size = 5;

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

