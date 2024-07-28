let newsData = []

$(document).ready(function () {
	getNewsListAll();
});

// 뉴스 리스트 가져오는 함수
function getNewsListAll(){
	let request_url = `${contextPath}/api/news/getNewsAll`
	$.ajax({
		type: "GET",
		url: request_url,
		dataType: "json",
		success: function (res) {
			
			let isGetList = res.hasOwnProperty("data")
			if (isGetList){
				newsData = res.data
				paginationActive("news-list", newsData, newsListTemplate);
			}
			else{
				toastPop("warn", res.message)
			}
		},
		error : function(request, status, error){
			toastPop("warn", "변경에 실패하였습니다")
			console.log(request);
			console.log(status);
			console.log(error);
		}
	});
}
// 페이지네이션 실행 함수
function paginationActive(id, datas, template){
	
	// 한 페이지당 개수 정하기
	let page_size = 5;
	
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

// 뉴스 리스트 페이지네이션 템플릿 함수 (User)
function newsListTemplate(data) {
	let item = ""
	
	$.each(data, function(index, d){
	  	item += 
	  		`
		 	<div class="news-card box-shadow" onclick="location.href='${contextPath}/news/detail/${d.newsNo}'">
                <img class="news-card-img" src="${contextPath}${d.newsImgList[0].imgRename}">
                <div class="news-card-infos">
                    <p class="news-card-title fs-14__b">
                        ${d.newsTitle}
                    </p>
                    <div class="news-card-content fc__gray">
                        <p> ${d.newsContent} </p>
                    </div>
                    
                    <div class="news-card-footer d-flex">
                        <p> ♡ <span>9999</span></p>
                        <p> ${d.newsPublisher} </p>
                        <p> ${d.teamName}</p>
                    </div>
                </div>
            </div>
			`
		})

    return item;
}
	