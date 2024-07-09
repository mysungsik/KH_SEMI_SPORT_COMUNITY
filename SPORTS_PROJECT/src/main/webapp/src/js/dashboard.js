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

$(document).ready(function (){
	displayCurrentEvent(currentData)
})

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
    centeredSlides: false,
    autoplay: {
    delay: 4000,
    disableOnInteraction: false
    },
    pagination: {
    el: ".swiper-pagination",
    clickable: true
    }
});

var swiper3 = new Swiper(".swiper-highlight", {
    spaceBetween: 24,
    slidesPerView: 4, // 슬라이드 2개씩 보이도록 설정
    initialSlide: 2,
    centeredSlides: false,  // 슬라이드 중앙정렬 false
    autoplay: {
    delay: 4000,
    disableOnInteraction: false
    },
    pagination: {
    el: ".swiper-pagination",
    clickable: true
    }
});


$(document).ready(function () {
    // 날짜함수 실행
    now = new Date()
    getFormattedDate();
    updateDate();
});

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