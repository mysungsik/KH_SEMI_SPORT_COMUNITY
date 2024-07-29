let popularNewsData5 = []
let recentNewsData7 = []

$(document).ready(function () {
	// 인기뉴스 가져오는 함수
	getPopularNewsList("popular");
	
	// 실시간 뉴스 가져오는 함수
	getRecentNewsList("recent");
});

// 인기 뉴스 리스트 가져오는 함수
function getPopularNewsList(getType){
	let request_url = `${contextPath}/api/news/getNewsListForMain`

	$.ajax({
		type: "GET",
		url: request_url,
		dataType: "json",
		data:{
			getType
		},
		async : false,
		success: function (res) {
			
			let isGetList = res.hasOwnProperty("data")
			if (isGetList){
				setPopularNews(res.data)
			}
			else{
				toastPop("warn", res.message)
			}
		},
		error : function(request, status, error){
			console.log(request);
			console.log(status);
			console.log(error);
		}
	});
}

// 인기 뉴스 리스트 화면에 출력하는 함수
function setPopularNews(data){
	const container = $(".popular-news-container")
	
	let html = "";
	$.each(data, function (index, d){
		html += `
				<div class="news-card" onclick="location.href='${contextPath}/news/detail/${d.newsNo}'">
					<div>
			            <img class="news-card-img" src="${contextPath}${d.newsImgList[0].imgRename}">
					</div>
		            <div class="news-card-infos">
		                <p class="news-card-title fs-14__b">
		                    ${d.newsTitle}
		                </p>
		                <div class="news-card-content fc__g\ray">
		                    <p>${d.newsContent}</p>
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
	
	container.html(html)
}

// 최신 뉴스 리스트 가져오는 함수
function getRecentNewsList(getType){
	let request_url = `${contextPath}/api/news/getNewsListForMain`

	$.ajax({
		type: "GET",
		url: request_url,
		dataType: "json",
		data:{
			getType
		},
		async : false,
		success: function (res) {
			let isGetList = res.hasOwnProperty("data")
			if (isGetList){
				setRecentNews(res.data)
			}
			else{
				toastPop("warn", res.message)
			}
		},
		error : function(request, status, error){
			console.log(request);
			console.log(status);
			console.log(error);
		}
	});
}

// 최신 뉴스 리스트 화면에 출력하는 함수
function setRecentNews(data){
	const container = $(".recent-news-container")
	
	let html = "";
	$.each(data, function (index, d){
		html += `
				<div class="news-card-small" onclick="location.href='${contextPath}/news/detail/${d.newsNo}'">
					<div>
	                    <img class="news-card-small-img" src="${contextPath}${d.newsImgList[0].imgRename}">					
					</div>
                    <div class="news-card-small-infos">
                        <p class="news-card-small-title fs-14__b">
                            ${d.newsTitle}
                        </p>
                        <div class="news-card-footer d-flex">
                            <p> ${d.newsPublisher} </p>
		                    <p> ${d.teamName}</p>
                        </div>
                    </div>
                </div>
			`
	})
	
	container.html(html)
}
