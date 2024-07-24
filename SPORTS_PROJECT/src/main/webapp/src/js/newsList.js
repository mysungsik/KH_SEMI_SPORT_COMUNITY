const newsData = [
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
	paginationActive("news-vods", newsData, newsTemplate);
});

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
					textDecoration : "underline"
				})
			}
		})
	}
}

// 관리자용 페이지네이션 템플릿 함수 (User)
function newsTemplate(data) {
	let item = ""
	
	$.each(data, function(index, d){
	  	item += 
	  		`
		 	<div class="news-card">
                <img class="news-card-img" src="${contextPath}/public/images/news_example.jpg">
                <div class="news-card-infos">
                    <p class="news-card-title fs-14__b">
                        플라이강원 2대 주주 세븐브릿지PE, 투자금 전액 날렸다... “개인 고객들 피해” 날렸다... “개인 고객들 피해”
                    </p>
                    <div class="news-card-content fc__gray">
                        <p> 국내 저비용항공사(LCC) 플라이강원에 투자한 사모펀드(PEF) 운용사와 벤처캐피털(VC)이 
                        투자금을 전액 손실 처리하게 됐다. 플라이강원의 회생계획안에 따라 기존 주주의 주식을 모두 무상 소각해야 하기 때문이다. 
                         주식을 모두 무상 소각해야 하기 때문이다.
                          주식을 모두 무상 소각해야 하기 때문이다.</p>
                    </div>
                    
                    <div class="news-card-footer d-flex">
                        <p> ♡ <span>9999</span></p>
                        <p> 스포츠 서울 </p>
                        <p> 기아 타이거즈</p>
                    </div>
                </div>
            </div>
			`
		})

    return item;
}
	