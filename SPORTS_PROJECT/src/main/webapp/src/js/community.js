var swiper = new Swiper(".mySwiper", {
    spaceBetween: 30,
    centeredSlides: true,
    autoplay: {
      delay: 5000,
      disableOnInteraction: false,
    },

  });


let communityData = [
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
		{title : "게시글입니다1", author : "작성자1", date :"2024-06-23", view : 30, comments:2, like :3 },
]

$(document).ready(function () {
	contextPath = "/" + window.location.pathname.split("/")[1];
	
	// 페이지네이션 실행
	paginationActive("community", communityData, paginationTemplate);
});


// 일반 유저 페이지네이션 템플릿 함수
function paginationTemplate(data) {
	let item = ""
    $.each(data, function(index, d){
	  	item += 
`       <div class="post">
            <div class="post-title">
                <span class="fs-14__b">${d.title}</span>
            </div>
            <div class="post-info">
                <span class="fs-10">${d.author} ${d.date}</span>
                <span class="fs-10">조회수 ${d.view} | 댓글 ${d.comment} | 좋아요 ${d.like} ♡</span>
            </div>
        </div>`
	})

    return item;
}


// 페이지네이션 실행 함수
function paginationActive(id, datas, template){
	let page_size = 3;
	
	if ( $(`#${id}-pagination`).length > 0 ){

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
					fontSize : "14px",
					textDecoration : "underline"
				})
			}
		})
	}
}
