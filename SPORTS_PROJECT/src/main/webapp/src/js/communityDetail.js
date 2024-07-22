let communityData = [
	{ author: "[ 작성자 ]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },
	{ author: "[ 작성자 ]", comments: "야구 룰이 너무 어려움", date: "2024-07-06 22:49:31", like: 3 },



]




// 일반 유저 페이지네이션 템플릿 함수
function paginationTemplate(data) {
	let item = "";
	
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
					<div>
						<span>좋아요 ${d.like} ♥</span>
						<span> | </span>
						<span>수정</span>
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
					<textarea rows="3" cols="90" style="resize: none"">tlqkf</textarea>
					<button>수정</button>
					<button>취소</button>
				</form>
			</div>
			`
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

// 모달
function showModal(el){
	let modalEl = $('#communityModal');
	
	let modalType = $(el).data("type");
	
	console.log(modalType);
	
	let item = "";
	switch(modalType){
		case "board-delete" : case "board-report" : item = "게시글"; break;
		case "reply-delete" : case "reply-report" : item = "댓글"; break;
	}
	
	if(modalType == "board-delete" || modalType == "reply-delete"){
			modalEl.find(".modal-title").html(`<p class="fs-14 fc__white">${item} 삭제</p>`)
					
			modalEl.find(".modal-body").html(` 
			
				<div class="modal-row">정말 삭제하시겠습니까?</div>
				
				<div class="modal-btns">
					<button class="btn-medium__blue acceptBtn"> 확인 </button>
					<button class="btn-medium__gray cancelBtn" data-bs-dismiss="modal"> 취소 </button>
				</div>
				`
			);
	}else if(modalType == "board-report" || modalType == "reply-report"){
		modalEl.find(".modal-title").html(`<p class="fs-14 fc__white">${item} 신고</p>`)
		
		modalEl.find(".modal-body").html(` 
			<form>
				<div class="modal-row">
					<div class="select-wrapper">
						<select name="team" id="team" style="border: none; outline: none;">
					         <option value="kia">욕설 및 비하발언</option>
					         <option value="dusan">허위사실 유포</option>
					         <option value="la">사행성 ${item}</option>
					    </select>
				    </div>
				    <textarea rows="5" cols="30" placeholder="상세 내용" ></textarea>
				</div>
				<div class="modal-btns">
					<button class="btn-medium__blue acceptBtn"> 확인 </button>
					<button class="btn-medium__gray cancelBtn" data-bs-dismiss="modal"> 취소 </button>
				</div>
			</form>	
				`
			);
	}
	
		
		
	modalEl.modal('show');
}


