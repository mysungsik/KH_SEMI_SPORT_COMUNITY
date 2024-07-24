const newsVodsData = [
	{a:"a"},
	{a:"a"},
	{a:"a"},
	{a:"a"},
	{a:"a"},
	{a:"a"},
	{a:"a"},
	{a:"a"},
	{a:"a"},
	{a:"a"},
	{a:"a"},
	{a:"a"},
	{a:"a"},
	{a:"a"},
	{a:"a"},
	{a:"a"},
	{a:"a"},
	{a:"a"},
	{a:"a"},
	{a:"a"}
]

$(document).ready(function () {
	paginationActive("news-vods", newsVodsData, newsVodsTemplate);
});

// 페이지네이션 실행 함수
function paginationActive(id, datas, template){
	
	// 한 페이지당 개수 정하기
	let page_size = 12;
	
	// 각 조건에 맞게 페이지네이션 실행
	if ( $(`#${id}-pagination`).length > 0 ){

		 $(`#${id}-pagination`).pagination({
		    dataSource: datas,
		    pageSize: page_size,
		    callback: function(data, pagination) {
		        let html = template(data,id);
		        $(`#${id}-data`).html(html);	// 데이터 페이지네이션
				let currentPage = pagination.pageNumber;	// 현재 페이지 번호
				
				// 페이지네이션 변경
				let pagingEl = $(`.paginationjs-page[data-num='${currentPage}'] a`);
				pagingEl.css({
					fontSize : "14px",
					color: "blue",
					textDecoration : "underline"
				})
			}
		})
	}
}

// 관리자용 페이지네이션 템플릿 함수 (User)
function newsVodsTemplate(data) {
	let item = ""
	
	$.each(data, function(index, d){
	  	item += 
	  		`
         	<div class="card-thumbnail">
             	<img class="card-thumbnail-img" src="${contextPath}/public/images/news_example.jpg">
             	<div class="card-thumbnail-infos">
                 	<div class="d-flex h-100">
	                 	<p class="vod_no fs-20__b fc__gray">1</p>
	                 	<p class="card-thumbnail-title">'9실점 악몽' 준 키움과 2달 만에 ㅁㅁㅁㅁㅁㅁaaaaaaaㅁ ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</p>
                 	</div>
             	</div>
         	</div>
			`
		})

    return item;
}
	