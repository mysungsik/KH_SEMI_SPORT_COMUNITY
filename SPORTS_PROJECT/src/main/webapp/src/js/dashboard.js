let now;
let year;
let date;
let day;

let currentData = [
	{homeTeam : "한화", homeScore : 6, inning : 10, awayTeam : "기아", awayScore : 8, date : "2024-07-09"},
	{homeTeam : "기아", homeScore : 5, inning : 7, awayTeam : "기아", awayScore : 8, date : "2024-07-09"},
	{homeTeam : "다저스", homeScore : 6, inning : 3, awayTeam : "기아", awayScore : 8, date : "2024-07-09"},
	{homeTeam : "공군", homeScore : 4, inning : 7, awayTeam : "기아", awayScore : 8, date : "2024-07-09"},
	{homeTeam : "삼성", homeScore : 2, inning : 7, awayTeam : "기아", awayScore : 8, date : "2024-07-09"},
	{homeTeam : "쌍방울", homeScore : 6, inning : 4, awayTeam : "기아", awayScore : 8, date : "2024-07-09"},
	{homeTeam : "롯데", homeScore : 1, inning : 7, awayTeam : "기아", awayScore : 8, date : "2024-07-09"},
	{homeTeam : "한화", homeScore : 6, inning : 7, awayTeam : "기아", awayScore : 8, date : "2024-07-09"},
	{homeTeam : "한화", homeScore : 6, inning : 7, awayTeam : "기아", awayScore : 8, date : "2024-07-09"},
	{homeTeam : "한화", homeScore : 3, inning : 5, awayTeam : "기아", awayScore : 8, date : "2024-07-09"},
	{homeTeam : "한화", homeScore : 6, inning : 7, awayTeam : "기아", awayScore : 8, date : "2024-07-09"},
	{homeTeam : "한화", homeScore : 6, inning : 1, awayTeam : "기아", awayScore : 8, date : "2024-07-09"},
	{homeTeam : "한화", homeScore : 7, inning : 7, awayTeam : "기아", awayScore : 8, date : "2024-07-09"},
	{homeTeam : "한화", homeScore : 6, inning : 7, awayTeam : "기아", awayScore : 8, date : "2024-07-09"},
	{homeTeam : "한화", homeScore : 6, inning : 7, awayTeam : "기아", awayScore : 8, date : "2024-07-09"},
	{homeTeam : "한화", homeScore : 6, inning : 7, awayTeam : "기아", awayScore : 8, date : "2024-07-09"},
	{homeTeam : "한화", homeScore : 6, inning : 7, awayTeam : "기아", awayScore : 8, date : "2024-07-09"},
	{homeTeam : "한화", homeScore : 6, inning : 7, awayTeam : "기아", awayScore : 8, date : "2024-07-09"},
	{homeTeam : "한화", homeScore : 6, inning : 7, awayTeam : "기아", awayScore : 8, date : "2024-07-09"},
	{homeTeam : "한화", homeScore : 6, inning : 7, awayTeam : "기아", awayScore : 8, date : "2024-07-09"},
	{homeTeam : "한화", homeScore : 6, inning : 7, awayTeam : "기아", awayScore : 8, date : "2024-07-09"},
	{homeTeam : "한화", homeScore : 6, inning : 7, awayTeam : "기아", awayScore : 8, date : "2024-07-09"},
]

$(document).ready(function () {
    // 현재 메인 이벤트 가져오는 함수
    displayCurrentEvent(currentData)
    
	// 스코어 보드 가져오는 함수
    getScoreBoard();
    
   	// 인기뉴스 가져오는 함수
	getPopularNewsList("popular");
	
	// 실시간 뉴스 가져오는 함수
	getRecentNewsList("recent");
	
	// 커뮤니티 데이터 가져오는 함수
	getCommFree();
	getCommCheer();
    
    
    // 날짜함수 실행
    now = new Date()
    getFormattedDate();
    updateDate();
    
    // 스와이퍼
    var swiper = new Swiper(".swiper-events", {
	    spaceBetween: 30,
	    centeredSlides: false,
	    autoplay: {
	    delay: 6000,
	    disableOnInteraction: false
	    },
	    pagination: {
	    el: ".swiper-pagination",
	    clickable: true
	    }
	});
	
	var swiper2 = new Swiper(".swiper-news", {
	    spaceBetween: 24,
	    slidesPerView: 3, // 슬라이드 2개씩 보이도록 설정
	    initialSlide: 1,
	    centeredSlides: false, // 슬라이드 중앙정렬 false
	    autoplay: {
	    delay: 4000,
	    disableOnInteraction: false
	    },
	    pagination: {
	    el: ".swiper-pagination",
	    clickable: true
	    }
});

});

// 현재 메인 이벤트 가져오는 함수
function displayCurrentEvent(data){
	let html = "";
	
	
	// 1. 데이터를 7개씩 나눔
	// 2. for문 돌려서 각 데이터마다 하나의 ul 로 만듬
	// 3. html 로 붙임
	
	const lists = []
	
	for (let i = 0; i < data.length; i += 7){
		lists.push(data.slice(i, i + 7));
	}
	
	for (let list of lists){
		let innerHtml = '<ul class="swiper-slide card__white">'
		
		for(let d of list){
			innerHtml += `
				<li class="d-flex right-win">
		            <div class="score-left-symbol score__red"></div>
			            <span class="score-left-team fs-14"> ${d.homeTeam} </span>
			            <span class="score-left-score fs-14__b"> ${d.homeScore} </span>
	                     
	                    ${d.inning == 10 ? 
	         				`<div class="score-inning fs-20">
		                        종료
		                    </div>` 
	     					: 
				          `<div class="score-inning fs-20">
		                        ${d.inning}회<div class="score-inning-up"></div>
		                    </div>`
						}
						         
			            <span class="score-right-score fs-14__b"> ${d.awayScore} </span>
			            <span class="score-right-team fs-14"> ${d.awayTeam} </span>
		            <div class="score-right-symbol score__green"></div>
		        </li>
				`	
			}
		innerHtml += '</ul>'
		
		html += innerHtml
	}

	$(".current-events-score").html(html)
}

// 날짜 지정 함수
function getFormattedDate(){
    year = now.getFullYear();
    month = now.getMonth() + 1;
    date = now.getDate()

    day = now.getDay();
    switch(day){
        case 1 : day = "월";break;
        case 2 : day = "화";break;
        case 3 : day = "수";break;
        case 4 : day = "목";break;
        case 5 : day = "금";break;
        case 6 : day = "토";break;
        case 0 : day = "일";break;
    }

    if(month < 10){
        month = "0" + month
    }
    if(date < 10){
        date = "0" + date
    }
}

// 날짜 표기 함수
function updateDate(){
    $("#dateDisplay").text(String(year).substring(2) + `.${month}.${date} (${day})`)
}

// 다음날 함수
function nextDay(){
    now.setDate(now.getDate() + 1);
    getFormattedDate();
    updateDate();
}

// 다음날 함수
function beforeDay(){
    now.setDate(now.getDate() - 1);
    getFormattedDate();
    updateDate();
}


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
	const container = $(".news-content-top")
	
	let html = "";
	$.each(data, function (index, d){
		html += `
				<div class="card-thumbnail swiper-slide" onclick="location.href='${contextPath}/news/detail/${d.newsNo}'">
                    <img class="card-thumbnail-img" src="${contextPath}${d.newsImgList[0].imgRename}">
                    <div class="card-thumbnail-infos">
                        <div class="card-thumbnail-title">
                            ${d.newsTitle}
                        </div>
                        <div class="card-thumbnail-content">
                            <p> ♡ <span>${d.newsLikes}</span></p>
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
	const container = $(".news-content-bottom")
	
	let html = "";
	$.each(data, function (index, d){
		html += `
		      	<div class="new-headline d-flex" onclick="location.href='${contextPath}/news/detail/${d.newsNo}'">
                    <p>${d.newsTitle}</p><span>${d.newsPublisher}</span>
                </div>
				`
	})
	
	container.html(html)
}

// 스코어보드 가져오는 함수
function getScoreBoard(){
};

//  커뮤니티 자유게시판 가져오는 함수
function getCommFree(){
	let request_url = `${contextPath}/api/dashboard/getCommFree`
	$.ajax({
		type: "GET",
		url: request_url,
		dataType: "json",
		async: false,
		success: function (res) {
			let isGetData = res.hasOwnProperty("data");
			
			if(isGetData){
				setCommFree(res.data)
			}
			else{
				toastPop("warn", "게시글을 가져오는데 실패하였습니다.");
			}
		}
	});
}

// 커뮤니티 자유게시판 화면 출력 함수
function setCommFree(data){
	const container = $(".board-free-container")
	
	let html = "";
	$.each(data, function (index, d){
		html += `
		      	<div class="post" onclick="location.href='${contextPath}/community/communityDetail/${d.boardNo}'">
                    <div class="post-title">
                        <span class="fs-14__b">${d.boardTitle}</span>
                    </div>
                    <div class="post-info">
                        <span class="fs-10">${d.boardAuthor} ${d.boardCreateDate}</span>
                        <span class="fs-10">조회수 ${d.boardViews} | 댓글 ${d.boardComent} | 좋아요 ${d.boardLike} ♡</span>
                    </div>
                </div>
				`
	})
	
	container.html(html)
}


// 커뮤니티 응원 게시판 가져오는 함수
function getCommCheer(){
	let request_url = `${contextPath}/api/dashboard/getCommCheer`
	$.ajax({
		type: "GET",
		url: request_url,
		dataType: "json",
		async: false,
		success: function (res) {
			let isGetData = res.hasOwnProperty("data");
			
			if(isGetData){
				setCommCheer(res.data)
			}
			else{
				toastPop("warn", "게시글을 가져오는데 실패하였습니다.");
			}

		}
	});
}
// 커뮤니티 응원 게시판 화면 출력 함수
function setCommCheer(data){
	const container = $(".board-cheer-container")
	
	let html = "";
	$.each(data, function (index, d){
		html += `
		      	<div class="post" onclick="location.href='${contextPath}/community/communityDetail/${d.boardNo}'">
	                <div class="post-title">
	                    <span class="fs-12 fc__gray">[ ${d.boardCategory} ]</span>
	                    <span class="fs-14__b">${d.boardTitle}</span>
	                </div>
                    <div class="post-info">
                        <span class="fs-10">${d.boardAuthor} ${d.boardCreateDate}</span>
                        <span class="fs-10">조회수 ${d.boardViews} | 댓글 ${d.boardComent} | 좋아요 ${d.boardLike} ♡</span>
                    </div>
	            </div>
				`
	})
	
	container.html(html)
}