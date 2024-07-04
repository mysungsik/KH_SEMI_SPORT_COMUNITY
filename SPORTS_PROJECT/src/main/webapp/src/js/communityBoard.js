let communityData = [
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },
	{ category: "[응원]", title: "야구 룰이 너무 어려움", author: "작성자", date: "2024-07-02", view: 30, comments: 2, like: 3 },

]

// nav
$(document).ready(function() {
	contextPath = "/" + window.location.pathname.split("/")[1];

	let sub = $("input[name='sub']");
	let sub_value = sub.val()
	$(".switch-category").addClass("base__lblue")
	$(".switch-title").addClass("fc__gray")

	switch (sub_value) {
		case "all": {
			$(".switch-category").eq(0).removeClass("base__lblue").addClass("base__blue");
			$(".switch-title").eq(0).removeClass("fc__gray").addClass("fc__white");
			$(".title").text("전체");
			break;
		}
		case "popular": {
			$(".switch-category").eq(1).removeClass("base__lblue").addClass("base__blue");
			$(".switch-title").eq(1).removeClass("fc__gray").addClass("fc__white");
			$(".title").text("인기 게시판");
			break;
		}
		case "cheer": {
			$(".switch-category").eq(2).removeClass("base__lblue").addClass("base__blue");
			$(".switch-title").eq(2).removeClass("fc__gray").addClass("fc__white");
			$(".title").html(`
				    응원 게시판 
				    <form action="#">
				        <select name="team" id="team" style="border: none; outline: none;">
				            <option value="kia">기아 타이거즈</option>
				            <option value="dusan">두산 베어스</option>
				            <option value="la">LA 다저스</option>
				        </select>
				    </form>
				`);
			break;
		}
		case "free": {
			$(".switch-category").eq(3).removeClass("base__lblue").addClass("base__blue");
			$(".switch-title").eq(3).removeClass("fc__gray").addClass("fc__white");
			$(".title").text("자유 게시판");
			break;
		}
		case "info": {
			$(".switch-category").eq(4).removeClass("base__lblue").addClass("base__blue");
			$(".switch-title").eq(4).removeClass("fc__gray").addClass("fc__white");
			$(".title").text("공지사항");
			break;
		}
	}


	// 페이지네이션 실행
	paginationActive("community", communityData, paginationTemplate);
});


// 일반 유저 페이지네이션 템플릿 함수
function paginationTemplate(data) {
	let item = ""
	$.each(data, function(index, d) {
		item +=
			`       <div class="post">
					<div class="category">
						<span class="fs-12 fc__gray">${d.category}</span>
					</div>
					<div class="content">
						<div class="post-title">
							<span class="fs-14__b">${d.title}</span>
						</div>
						<div class="post-info">
							<span>${d.author} ${d.date}</span>
							<span>조회수 ${d.view} | 댓글 ${d.comments} | 좋아요 ${d.like} ♡</span>
						</div>
					</div>
				</div>`
	})

	return item;
}


// 페이지네이션 실행 함수
function paginationActive(id, datas, template) {
	let page_size = 10;

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
					fontSize: "20px",
					textDecoration: "underline",
					color: "#458BE2"
				})
			}
		})
	}
}

